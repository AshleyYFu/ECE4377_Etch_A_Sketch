library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rotary_encoder_test is
    port (
        clk      : in  std_logic;        -- 50 MHz
        reset_n  : in  std_logic;        -- active low reset
        enc_a    : in  std_logic;
        enc_b    : in  std_logic;
        hundreds : out unsigned(3 downto 0);
        tens     : out unsigned(3 downto 0);
        ones     : out unsigned(3 downto 0)
    );
end entity;

architecture rtl of rotary_encoder_test is

    -- Synchronizers
    signal a_ff1, a_ff2 : std_logic;
    signal b_ff1, b_ff2 : std_logic;

    signal b_prev : std_logic;

    signal count : integer range 0 to 999 := 0;

begin

    ------------------------------------------------------------------
    -- Synchronize encoder inputs
    ------------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            a_ff1 <= enc_a;
            a_ff2 <= a_ff1;

            b_ff1 <= enc_b;
            b_ff2 <= b_ff1;

            b_prev <= b_ff2;
        end if;
    end process;

    ------------------------------------------------------------------
    -- Encoder decode + counter
    ------------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            if reset_n = '0' then
                count <= 0;
            else
                -- Detect change on B
                if b_prev /= b_ff2 then
                    -- Direction logic (Arduino equivalent)
                    if b_ff2 = a_ff2 then
                        if count = 999 then
                            count <= 0;
                        else
                            count <= count + 1;
                        end if;
                    else
                        if count = 0 then
                            count <= 999;
                        else
                            count <= count - 1;
                        end if;
                    end if;
                end if;
            end if;
        end if;
    end process;

    ------------------------------------------------------------------
    -- Convert count to BCD
    ------------------------------------------------------------------
    hundreds <= to_unsigned(count / 100, 4);
    tens     <= to_unsigned((count / 10) mod 10, 4);
    ones     <= to_unsigned(count mod 10, 4);

end architecture;
