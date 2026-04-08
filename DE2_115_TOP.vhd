library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DE2_115_TOP is
    generic (
        TICKS_PER_SECOND : natural := 50_000_000
    );
    port (
        -- Clocks
        CLOCK_50   : in  std_logic;
        CLOCK2_50  : in  std_logic;
        CLOCK3_50  : in  std_logic;
        SMA_CLKIN  : in  std_logic;
        SMA_CLKOUT : out std_logic;

        -- Buttons and switches
        KEY : in std_logic_vector(3 downto 0);
        SW  : in std_logic_vector(17 downto 0);

        -- 7-segment displays
        HEX0 : out std_logic_vector(6 downto 0);
        HEX1 : out std_logic_vector(6 downto 0);
        HEX2 : out std_logic_vector(6 downto 0);
        HEX3 : out std_logic_vector(6 downto 0);
        HEX4 : out std_logic_vector(6 downto 0);
        HEX5 : out std_logic_vector(6 downto 0);
        HEX6 : out std_logic_vector(6 downto 0);
        HEX7 : out std_logic_vector(6 downto 0);
        LEDG : out std_logic_vector(8 downto 0);
        LEDR : out std_logic_vector(17 downto 0);

        -- RS-232
        UART_CTS : out std_logic;
        UART_RTS : in  std_logic;
        UART_RXD : in  std_logic;
        UART_TXD : out std_logic;

        -- LCD
        LCD_BLON : out   std_logic;
        LCD_EN   : out   std_logic;
        LCD_ON   : out   std_logic;
        LCD_RS   : out   std_logic;
        LCD_RW   : out   std_logic;
        LCD_DATA : inout std_logic_vector(7 downto 0);

        -- PS/2
        PS2_CLK  : inout std_logic;
        PS2_DAT  : inout std_logic;
        PS2_CLK2 : inout std_logic;
        PS2_DAT2 : inout std_logic;

        -- VGA
        VGA_BLANK_N : out std_logic;
        VGA_CLK     : out std_logic;
        VGA_HS      : out std_logic;
        VGA_SYNC_N  : out std_logic;
        VGA_VS      : out std_logic;
        VGA_R       : out std_logic_vector(7 downto 0);
        VGA_G       : out std_logic_vector(7 downto 0);
        VGA_B       : out std_logic_vector(7 downto 0);

        -- SRAM
        SRAM_ADDR : out   unsigned(19 downto 0);
        SRAM_DQ   : inout unsigned(15 downto 0);
        SRAM_CE_N : out   std_logic;
        SRAM_LB_N : out   std_logic;
        SRAM_OE_N : out   std_logic;
        SRAM_UB_N : out   std_logic;
        SRAM_WE_N : out   std_logic;

        -- Audio CODEC
        AUD_ADCDAT  : in    std_logic;
        AUD_ADCLRCK : inout std_logic;
        AUD_BCLK    : inout std_logic;
        AUD_DACDAT  : out   std_logic;
        AUD_DACLRCK : inout std_logic;
        AUD_XCK     : out   std_logic
    );
end DE2_115_TOP;

architecture structural of DE2_115_TOP is

    component VGA_SYNC_module
        port (
            clock_50Mhz                          : in  std_logic;
            red, green, blue                     : in  std_logic_vector(7 downto 0);
            red_out, green_out, blue_out         : out std_logic_vector(7 downto 0);
            horiz_sync_out, vert_sync_out,
            video_on, pixel_clock               : out std_logic;
            pixel_row, pixel_column             : out std_logic_vector(9 downto 0)
        );
    end component;

    component etch_a_sketch
        port (
            clock_50                 : in  std_logic;
            pixel_row, pixel_column  : in  std_logic_vector(9 downto 0);
            Red, Green, Blue         : out std_logic_vector(7 downto 0);
            Vert_sync                : in  std_logic;
            keys                     : in  std_logic_vector(3 downto 0);
            switches                 : in  std_logic_vector(0 downto 0)
        );
    end component;

    signal red_int        : std_logic_vector(7 downto 0);
    signal green_int      : std_logic_vector(7 downto 0);
    signal blue_int       : std_logic_vector(7 downto 0);
    signal vga_r_int      : std_logic_vector(7 downto 0);
    signal vga_g_int      : std_logic_vector(7 downto 0);
    signal vga_b_int      : std_logic_vector(7 downto 0);
    signal video_on_int   : std_logic;
    signal vert_sync_int  : std_logic;
    signal horiz_sync_int : std_logic;
    signal pixel_clock_int: std_logic;
    signal pixel_row_int  : std_logic_vector(9 downto 0);
    signal pixel_column_int: std_logic_vector(9 downto 0);

begin

    VGA_SYNC_N <= '0';
    VGA_HS     <= horiz_sync_int;
    VGA_VS     <= vert_sync_int;
    VGA_R      <= vga_r_int;
    VGA_G      <= vga_g_int;
    VGA_B      <= vga_b_int;

    U1 : VGA_SYNC_module
        port map (
            clock_50Mhz    => CLOCK_50,
            red            => red_int,
            green          => green_int,
            blue           => blue_int,
            red_out        => vga_r_int,
            green_out      => vga_g_int,
            blue_out       => vga_b_int,
            horiz_sync_out => horiz_sync_int,
            vert_sync_out  => vert_sync_int,
            video_on       => VGA_BLANK_N,
            pixel_clock    => VGA_CLK,
            pixel_row      => pixel_row_int,
            pixel_column   => pixel_column_int
        );

    U2 : etch_a_sketch
        port map (
            clock_50     => CLOCK_50,
            pixel_row    => pixel_row_int,
            pixel_column => pixel_column_int,
            red          => red_int,
            green        => green_int,
            blue         => blue_int,
            vert_sync    => vert_sync_int,
            keys         => KEY(3 downto 0),
            switches     => SW(0 downto 0)
        );

end structural;