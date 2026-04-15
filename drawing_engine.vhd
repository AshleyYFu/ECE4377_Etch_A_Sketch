library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity drawing_engine is
    generic (
        SCREEN_W        : integer := 640;
        SCREEN_H        : integer := 480;
        STAMP_RADIUS    : integer := 10;         -- stamp half-size
        DEBOUNCE_CYCLES : integer := 500000      -- ~10ms @50MHz
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
        key_square_n : in  std_logic;
        key_circle_n : in  std_logic;
        key_star_n   : in  std_logic;

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

    -- Helpers
    function iabs(x : integer) return integer is
    begin
        if x < 0 then return -x; else return x; end if;
    end function;

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
    signal ksq_sync1, ksq_sync2 : std_logic := '1';
    signal kci_sync1, kci_sync2 : std_logic := '1';
    signal kst_sync1, kst_sync2 : std_logic := '1';

    signal ksq_db, kci_db, kst_db : std_logic := '1';
    signal ksq_db_prev, kci_db_prev, kst_db_prev : std_logic := '1';

    signal ksq_cnt : integer range 0 to DEBOUNCE_CYCLES := 0;
    signal kci_cnt : integer range 0 to DEBOUNCE_CYCLES := 0;
    signal kst_cnt : integer range 0 to DEBOUNCE_CYCLES := 0;

    signal pulse_square, pulse_circle, pulse_star : std_logic := '0';

    -- Stamp state
    type stamp_shape_t is (NONE, SQUARE, CIRCLE, STAR);
    signal stamp_active : std_logic := '0';
    signal stamp_shape  : stamp_shape_t := NONE;
    signal dx, dy       : integer range -STAMP_RADIUS to STAMP_RADIUS := 0;

    -- Write control to framebuffer
    signal wren_int  : std_logic;
    signal wdata_int : std_logic_vector(2 downto 0);

    -- Current stamp pixel position
    signal stamp_x, stamp_y : integer;
    signal stamp_in_bounds  : std_logic;

    -- Shape mask for current (dx,dy)
    signal mask_on : std_logic;

begin

    --------------------------------------------------------------------
    -- Pen color selection:
    -- SW0=R, SW1=G, SW2=B; if all off => default white.
    -- Store in [2:0] where bit2=R, bit1=G, bit0=B
    --------------------------------------------------------------------
    pen_color <= "111" when sw_rgb = "000"
                 else (sw_rgb(0) & sw_rgb(1) & sw_rgb(2));

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
    stamp_x <= cursor_x + dx;
    stamp_y <= cursor_y + dy;

    stamp_in_bounds <= '1' when (stamp_x >= 0 and stamp_x < SCREEN_W and stamp_y >= 0 and stamp_y < SCREEN_H)
                       else '0';

    --------------------------------------------------------------------
    -- Shape mask (filled square / circle / "asterisk star")
    --------------------------------------------------------------------
    process(dx, dy, stamp_shape)
        variable r2 : integer;
        variable d2 : integer;
    begin
        mask_on <= '0';
        r2 := STAMP_RADIUS * STAMP_RADIUS;
        d2 := dx*dx + dy*dy;

        case stamp_shape is
            when SQUARE =>
                if (iabs(dx) <= STAMP_RADIUS) and (iabs(dy) <= STAMP_RADIUS) then
                    mask_on <= '1';
                end if;

            when CIRCLE =>
                if d2 <= r2 then
                    mask_on <= '1';
                end if;

            when STAR =>
                -- Asterisk-style star: + and X combined (easy to expand later)
                if (iabs(dx) <= 1) or (iabs(dy) <= 1) or (iabs(dx - dy) <= 1) or (iabs(dx + dy) <= 1) then
                    if (iabs(dx) <= STAMP_RADIUS) and (iabs(dy) <= STAMP_RADIUS) then
                        mask_on <= '1';
                    end if;
                end if;

            when others =>
                mask_on <= '0';
        end case;
    end process;

    --------------------------------------------------------------------
    -- Choose write address/data/wren
    -- Priority: stamping > pen movement
    --------------------------------------------------------------------
    write_addr <= std_logic_vector(to_unsigned((stamp_y * SCREEN_W) + stamp_x, 19))
                 when (stamp_active = '1' and stamp_in_bounds = '1')
                 else std_logic_vector(to_unsigned((cursor_y * SCREEN_W) + cursor_x, 19));

    wdata_int <= pen_color;

    wren_int <=
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
    -- Debounce + one-pulse generation for stamp keys
    --------------------------------------------------------------------
    process(clock_50)
    begin
        if rising_edge(clock_50) then
            -- 2-flop synchronizers (keys are asynchronous)
            ksq_sync1 <= key_square_n;  ksq_sync2 <= ksq_sync1;
            kci_sync1 <= key_circle_n;  kci_sync2 <= kci_sync1;
            kst_sync1 <= key_star_n;    kst_sync2 <= kst_sync1;

            -- Debounce for square
            if ksq_sync2 /= ksq_db then
                ksq_cnt <= 0;
            elsif ksq_cnt < DEBOUNCE_CYCLES then
                ksq_cnt <= ksq_cnt + 1;
            else
                ksq_db <= ksq_sync2;
            end if;

            -- Debounce for circle
            if kci_sync2 /= kci_db then
                kci_cnt <= 0;
            elsif kci_cnt < DEBOUNCE_CYCLES then
                kci_cnt <= kci_cnt + 1;
            else
                kci_db <= kci_sync2;
            end if;

            -- Debounce for star
            if kst_sync2 /= kst_db then
                kst_cnt <= 0;
            elsif kst_cnt < DEBOUNCE_CYCLES then
                kst_cnt <= kst_cnt + 1;
            else
                kst_db <= kst_sync2;
            end if;

		-- One-shot pulses on press (active-low: press is 1->0 transition)
				if (ksq_db_prev = '1' and ksq_db = '0') then
					pulse_square <= '1';
				else
					pulse_square <= '0';
				end if;

				if (kci_db_prev = '1' and kci_db = '0') then
					pulse_circle <= '1';
				else
					pulse_circle <= '0';
				end if;

				if (kst_db_prev = '1' and kst_db = '0') then
					pulse_star <= '1';
				else
					pulse_star <= '0';
				end if;

            ksq_db_prev <= ksq_db;
            kci_db_prev <= kci_db;
            kst_db_prev <= kst_db;

            -- Track previous cursor
            prev_x <= cursor_x;
            prev_y <= cursor_y;

            -- Stamp state machine
            if stamp_active = '0' then
                if pulse_square = '1' then
                    stamp_active <= '1';
                    stamp_shape  <= SQUARE;
                    dx <= -STAMP_RADIUS;
                    dy <= -STAMP_RADIUS;
                elsif pulse_circle = '1' then
                    stamp_active <= '1';
                    stamp_shape  <= CIRCLE;
                    dx <= -STAMP_RADIUS;
                    dy <= -STAMP_RADIUS;
                elsif pulse_star = '1' then
                    stamp_active <= '1';
                    stamp_shape  <= STAR;
                    dx <= -STAMP_RADIUS;
                    dy <= -STAMP_RADIUS;
                end if;
            else
                -- Advance through bounding box (one pixel per clock)
                if (dx = STAMP_RADIUS) and (dy = STAMP_RADIUS) then
                    stamp_active <= '0';
                    stamp_shape  <= NONE;
                    dx <= 0;
                    dy <= 0;
                else
                    if dx = STAMP_RADIUS then
                        dx <= -STAMP_RADIUS;
                        dy <= dy + 1;
                    else
                        dx <= dx + 1;
                    end if;
                end if;
            end if;
        end if;
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
            -- background (same as your prior design): blue
            red   <= (others => '0');
            green <= (others => '0');
            blue  <= (others => '1');
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