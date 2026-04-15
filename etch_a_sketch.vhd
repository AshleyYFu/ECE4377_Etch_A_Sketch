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

        -- SW(2:0)=RGB, SW(3)=pen enable
        switches         : in  std_logic_vector(3 downto 0);

        -- KEY(3:1) used for stamping (active-low)
        keys_stamp_n     : in  std_logic_vector(3 downto 1);

        red, green, blue : out std_logic_vector(7 downto 0)
    );
end etch_a_sketch;

architecture behavior of etch_a_sketch is

    component drawing_engine is
        generic (
            SCREEN_W        : integer := 640;
            SCREEN_H        : integer := 480;
            STAMP_RADIUS    : integer := 10;
            DEBOUNCE_CYCLES : integer := 500000
        );
        port (
            clock_50     : in  std_logic;
            pixel_row    : in  std_logic_vector(9 downto 0);
            pixel_column : in  std_logic_vector(9 downto 0);
            cursor_x     : in  integer range 0 to 639;
            cursor_y     : in  integer range 0 to 479;
            sw_rgb       : in  std_logic_vector(2 downto 0);
            pen_enable   : in  std_logic;
            key_square_n : in  std_logic;
            key_circle_n : in  std_logic;
            key_star_n   : in  std_logic;
            red          : out std_logic_vector(7 downto 0);
            green        : out std_logic_vector(7 downto 0);
            blue         : out std_logic_vector(7 downto 0)
        );
    end component;

    signal cursor_x : integer range 0 to 639;
    signal cursor_y : integer range 0 to 479;

begin
    -- Encoder count mapped to screen coordinates
    cursor_x <= x_count mod 640;
    cursor_y <= y_count mod 480;

    U_DRAW : drawing_engine
        port map (
            clock_50     => clock_50,
            pixel_row    => pixel_row,
            pixel_column => pixel_column,
            cursor_x     => cursor_x,
            cursor_y     => cursor_y,
            sw_rgb       => switches(2 downto 0),
            pen_enable   => switches(3),
            key_square_n => keys_stamp_n(1),
            key_circle_n => keys_stamp_n(2),
            key_star_n   => keys_stamp_n(3),
            red          => red,
            green        => green,
            blue         => blue
        );
end behavior;