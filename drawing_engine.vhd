library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity drawing_engine is
    generic (
        SCREEN_W        : integer := 640;
        SCREEN_H        : integer := 480
    );
    port (
        clock_50     : in  std_logic;

        -- Current pixel being scanned by VGA
        pixel_row    : in  std_logic_vector(9 downto 0);
        pixel_column : in  std_logic_vector(9 downto 0);

        -- Cursor position (driven by encoders)
        cursor_x     : in  integer range 0 to 639;
        cursor_y     : in  integer range 0 to 479;

        -- Color switches: SW0=R, SW1=G, SW2=B
        sw_rgb       : in  std_logic_vector(2 downto 0);

        -- Pen enable (hold to draw while moving)
        pen_enable   : in  std_logic;

        -- Stamp keys (active-low): KEY1 square, KEY2 circle, KEY3 star
        key_heart_n : in  std_logic;
        key_circle_n : in  std_logic;
        key_star_n   : in  std_logic;
		  
		  -- reset key
		  clear_n : in std_logic;

        -- VGA output color
        red          : out std_logic_vector(7 downto 0);
        green        : out std_logic_vector(7 downto 0);
        blue         : out std_logic_vector(7 downto 0)
    );
end drawing_engine;

architecture rtl of drawing_engine is

    -- 3bpp framebuffer
    component framebuffer_rgb
        port (
            clock     : in  std_logic;
            data      : in  std_logic_vector(2 downto 0);
            rdaddress : in  std_logic_vector(18 downto 0);
            wraddress : in  std_logic_vector(18 downto 0);
            wren      : in  std_logic;
            q         : out std_logic_vector(2 downto 0)
        );
    end component;
  
	 -- stamp constants
	 type stamp_type is array(0 to 15) of std_logic_vector(0 to 15);
	 
	 constant HEART_STAMP : stamp_type := (
        "0000000000000000", 
		  "0011110000111100", 
		  "0111111001111110", 
		  "1111111111111111",
        "1111111111111111", 
		  "1111111111111111", 
		  "0111111111111110", 
		  "0011111111111100",
        "0001111111111000", 
		  "0000111111110000", 
		  "0000011111100000", 
		  "0000001111000000",
        "0000000110000000", 
		  "0000000000000000", 
		  "0000000000000000", 
		  "0000000000000000"
    );
	 
	 constant CIRCLE_STAMP : stamp_type := (
        "0000011111100000",
        "0001111111111000",
        "0011111111111100",
        "0111111111111110",
        "0111111111111110",
        "1111111111111111",
        "1111111111111111",
        "1111111111111111",
        "1111111111111111",
        "1111111111111111",
        "1111111111111111",
        "0111111111111110",
        "0111111111111110",
        "0011111111111100",
        "0001111111111000",
        "0000011111100000"
    );
	 
	 constant STAR_STAMP : stamp_type := (
	     "0000000110000000", 
		  "0000000110000000", 
		  "0000001111000000", 
		  "0000001111000000",
        "0000011111100000", 
		  "1111111111111111", 
		  "0111111111111110", 
		  "0011111111111100",
        "0001111111111000", 
		  "0001111111111000", 
		  "0011110000111100", 
		  "0011100000011100",
        "0111000000001110", 
		  "0110000000000110", 
		  "0000000000000000", 
		  "0000000000000000"
    );

    -- Current selected pen color (stored as [2:0]=RGB with bit2=R)
    signal pen_color : std_logic_vector(2 downto 0);

    -- Read and write addresses
    signal read_addr  : std_logic_vector(18 downto 0);
    signal write_addr : std_logic_vector(18 downto 0);

    -- Framebuffer output
    signal pix_rgb : std_logic_vector(2 downto 0);

    -- Cursor overlay
    signal is_cursor : std_logic;

    -- Previous cursor for movement detection
    signal prev_x : integer range 0 to 639 := 0;
    signal prev_y : integer range 0 to 479 := 0;

    signal moved_now : std_logic;

    -- Debounce structures for 3 keys
    signal kht_sync1, kht_sync2 : std_logic := '1';
    signal kci_sync1, kci_sync2 : std_logic := '1';
    signal kst_sync1, kst_sync2 : std_logic := '1';

    -- Stamp state
    type stamp_shape_t is (NONE, HEART, CIRCLE, STAR);
    signal stamp_active : std_logic := '0';
    signal stamp_shape  : stamp_shape_t := NONE;
    signal dx, dy       : integer range 0 to 15 := 0;

    -- Write control to framebuffer
    signal wren_int  : std_logic;
    signal wdata_int : std_logic_vector(2 downto 0);

    -- Current stamp pixel position
    signal stamp_x, stamp_y : integer;
    signal stamp_in_bounds  : std_logic;

    -- Shape mask for current (dx,dy)
    signal mask_on : std_logic;
	 
	 -- reset constants
	 constant FB_SIZE : integer := SCREEN_W * SCREEN_H;  -- 307200 for 640x480

	 signal clr_sync1, clr_sync2 : std_logic := '1';
    signal clr_prev             : std_logic := '1';

    signal clear_active : std_logic := '0';
    signal clear_addr   : integer range 0 to FB_SIZE-1 := 0;

begin

    --------------------------------------------------------------------
    -- Pen color selection:
    -- SW0=R, SW1=G, SW2=B; if all off => default white.
    -- Store in [2:0] where bit2=R, bit1=G, bit0=B
    --------------------------------------------------------------------
    pen_color <= "111" when sw_rgb = "000" else
					  "000" when sw_rgb = "111" else
					  (sw_rgb(2) & sw_rgb(1) & sw_rgb(0));

    --------------------------------------------------------------------
    -- VGA read address mapping (safe only inside visible 640x480)
    --------------------------------------------------------------------
    read_addr <= std_logic_vector(
                    to_unsigned(
                        to_integer(unsigned(pixel_row)) * SCREEN_W +
                        to_integer(unsigned(pixel_column)),
                        19))
                when (unsigned(pixel_column) < SCREEN_W and unsigned(pixel_row) < SCREEN_H)
                else (others => '0');

    --------------------------------------------------------------------
    -- Cursor overlay (4x4 block)
    --------------------------------------------------------------------
    is_cursor <= '1' when (
                    to_integer(unsigned(pixel_column)) >= cursor_x and
                    to_integer(unsigned(pixel_column)) <= cursor_x + 3 and
                    to_integer(unsigned(pixel_row))    >= cursor_y and
                    to_integer(unsigned(pixel_row))    <= cursor_y + 3)
                else '0';

    --------------------------------------------------------------------
    -- Movement detection (combinational) - asserts when cursor changed
    --------------------------------------------------------------------
    moved_now <= '1' when (cursor_x /= prev_x) or (cursor_y /= prev_y) else '0';

    --------------------------------------------------------------------
    -- Compute stamp coordinates for current dx/dy
    --------------------------------------------------------------------
    stamp_x <= cursor_x - 8 + dx;
    stamp_y <= cursor_y - 8 + dy;

    stamp_in_bounds <= '1' when (stamp_x >= 0 and stamp_x < SCREEN_W and stamp_y >= 0 and stamp_y < SCREEN_H)
                       else '0';

    --------------------------------------------------------------------
    -- Shape mask (HEART / CIRCLE / STAR) - simple version
    --------------------------------------------------------------------
	 process(dx, dy, stamp_shape)
    begin
        mask_on <= '0';
        case stamp_shape is
            when HEART =>
                mask_on <= HEART_STAMP(dy)(dx);
            when CIRCLE =>
                mask_on <= CIRCLE_STAMP(dy)(dx);
            when STAR =>
                mask_on <= STAR_STAMP(dy)(dx);
            when others =>
                mask_on <= '0';
        end case;
    end process;
	
    --------------------------------------------------------------------
    -- Choose write address/data/wren
    -- Priority: stamping > pen movement
    --------------------------------------------------------------------
					  
	 write_addr <= std_logic_vector(to_unsigned(clear_addr, 19))
             when (clear_active = '1')
             else std_logic_vector(to_unsigned((stamp_y * SCREEN_W) + stamp_x, 19))
             when (stamp_active = '1' and stamp_in_bounds = '1')
             else std_logic_vector(to_unsigned((cursor_y * SCREEN_W) + cursor_x, 19));

	 
	 wdata_int <= "000" when (clear_active = '1') else pen_color;
		  
	 wren_int <=
		  '1' when (clear_active = '1') else
        -- Stamp writes: for each stamp pixel where mask is on and in bounds
        '1' when (stamp_active = '1' and stamp_in_bounds = '1' and mask_on = '1') else
		  -- Pen write once per movement
        '1' when (stamp_active = '0' and pen_enable = '1' and moved_now = '1') else
        '0';

    --------------------------------------------------------------------
    -- Framebuffer instance
    --------------------------------------------------------------------
    canvas : framebuffer_rgb
        port map (
            clock     => clock_50,
            data      => wdata_int,
            rdaddress => read_addr,
            wraddress => write_addr,
            wren      => wren_int,
            q         => pix_rgb
        );

    --------------------------------------------------------------------
    -- stamp keys
    --------------------------------------------------------------------
    process(clock_50)
    begin
        if rising_edge(clock_50) then
            -- 2-flop synchronizers (keys are asynchronous)
            kht_sync1 <= key_heart_n;   kht_sync2 <= kht_sync1;
            kci_sync1 <= key_circle_n;  kci_sync2 <= kci_sync1;
            kst_sync1 <= key_star_n;    kst_sync2 <= kst_sync1;
				

				-- 2-flop synchronizer for CLEAR key (KEY0), active-low
				clr_sync1 <= clear_n;
				clr_sync2 <= clr_sync1;

            -- Track previous cursor
            prev_x <= cursor_x;
            prev_y <= cursor_y;
				

				-- Detect KEY0 press (falling edge) and START clearing
				if (clr_prev = '1' and clr_sync2 = '0') then
					clear_active <= '1';
					clear_addr   <= 0;

            -- Cancel stamp if one was running
					stamp_active <= '0';
					stamp_shape  <= NONE;
					dx <= 0;
					dy <= 0;
				end if;
				clr_prev <= clr_sync2;
				
	
        -- If we are clearing, keep incrementing address each clock
        if clear_active = '1' then
            if clear_addr = FB_SIZE-1 then
                clear_active <= '0';
            else
                clear_addr <= clear_addr + 1;
            end if;
					
		  else		
            -- Stamp state machine
            if stamp_active = '0' then
					 if kht_sync2 = '0' then
                    stamp_active <= '1';
                    stamp_shape  <= HEART;
                    dx <= 0;
                    dy <= 0;
					 elsif kci_sync2 = '0' then
                    stamp_active <= '1';
                    stamp_shape  <= CIRCLE;
                    dx <= 0;
                    dy <= 0;
					 elsif kst_sync2 = '0' then
                    stamp_active <= '1';
                    stamp_shape  <= STAR;
                    dx <= 0;
                    dy <= 0;
                end if;
            else
                -- Advance through 16x16 grid
                if (dx = 15) and (dy = 15) then
                    stamp_active <= '0';
                    stamp_shape  <= NONE;
                    dx <= 0;
                    dy <= 0;
                else
                    if dx = 15 then
                        dx <= 0;
                        dy <= dy + 1;
                    else
                        dx <= dx + 1;
                    end if;
						end if;
					end if;
				end if; -- clear_active
        end if;	-- rising edge
    end process;
	 
    --------------------------------------------------------------------
    -- Output color: cursor overlay > framebuffer color > background
    --------------------------------------------------------------------
    process(is_cursor, pix_rgb)
        variable rbit, gbit, bbit : std_logic;
    begin
        if is_cursor = '1' then
            red   <= (others => '1');
            green <= (others => '0');
            blue  <= (others => '0');
        elsif pix_rgb = "000" then
            -- background (white)
            red   <= (others => '1');
            green <= (others => '1');
            blue  <= (others => '1');
		  elsif pix_rgb = "111" then
		      -- black pen
		      red   <= (others => '0');
            green <= (others => '0');
            blue  <= (others => '0');
        else
            -- Expand 1-bit channels to 8-bit
            rbit := pix_rgb(2);
            gbit := pix_rgb(1);
            bbit := pix_rgb(0);

            red   <= (others => rbit);
            green <= (others => gbit);
            blue  <= (others => bbit);
        end if;
    end process;

end rtl;