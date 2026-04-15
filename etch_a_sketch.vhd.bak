library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity etch_a_sketch is
    port (
        clock_50         : in  std_logic;
        pixel_row        : in  std_logic_vector(9 downto 0);
        pixel_column     : in  std_logic_vector(9 downto 0);
        x_count          : in  integer range 0 to 999;
        y_count          : in  integer range 0 to 999;
        switches         : in  std_logic_vector(0 downto 0);
        red, green, blue : out std_logic_vector(7 downto 0)
    );
end etch_a_sketch;

architecture behavior of etch_a_sketch is

    component framebuffer
        port (
            clock     : in  std_logic;
            data      : in  std_logic_vector(0 downto 0);
            rdaddress : in  std_logic_vector(18 downto 0);
            wraddress : in  std_logic_vector(18 downto 0);
            wren      : in  std_logic;
            q         : out std_logic_vector(0 downto 0)
        );
    end component;

    signal cursor_x   : integer range 0 to 639;
    signal cursor_y   : integer range 0 to 479;
    signal write_addr : std_logic_vector(18 downto 0);
    signal read_addr  : std_logic_vector(18 downto 0);
    signal pixel_data : std_logic_vector(0 downto 0);
    signal is_cursor  : std_logic;

begin

    -- 1:1 pixel movement with wraparound
    cursor_x <= x_count mod 640;
    cursor_y <= y_count mod 480;

    write_addr <= std_logic_vector(to_unsigned((cursor_y * 640) + cursor_x, 19));

    read_addr <= std_logic_vector(
                     to_unsigned(
                         to_integer(unsigned(pixel_row)) * 640 + to_integer(unsigned(pixel_column)),
                         19))
                 when (unsigned(pixel_column) < 640 and unsigned(pixel_row) < 480)
                 else (others => '0');

    canvas : framebuffer
        port map (
            clock     => clock_50,
            data      => "1",
            rdaddress => read_addr,
            wraddress => write_addr,
            wren      => switches(0),
            q         => pixel_data
        );

    is_cursor <= '1' when (
                     to_integer(unsigned(pixel_column)) >= cursor_x and
                     to_integer(unsigned(pixel_column)) <= cursor_x + 3 and
                     to_integer(unsigned(pixel_row))    >= cursor_y and
                     to_integer(unsigned(pixel_row))    <= cursor_y + 3)
                 else '0';

    process (is_cursor, pixel_data)
    begin
        if is_cursor = '1' then
            red   <= (others => '1');
            green <= (others => '0');
            blue  <= (others => '0');
        elsif pixel_data(0) = '1' then
            red   <= (others => '1');
            green <= (others => '1');
            blue  <= (others => '1');
        else
            red   <= (others => '0');
            green <= (others => '0');
            blue  <= (others => '1');
        end if;
    end process;

end behavior;