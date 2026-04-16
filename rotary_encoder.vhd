library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rotary_encoder is
generic (
        START_COUNT : integer := 0;
		  MAX_COUNT   : integer := 1000  -- default wrap is 0..999 
    );
    port (
        CLOCK_50 : in  std_logic;
        RESET_N  : in  std_logic;
        ENC_A    : in  std_logic;
        ENC_B    : in  std_logic;
        COUNT    : out integer
    );
end rotary_encoder;

architecture rtl of rotary_encoder is

    -- Two-flop synchronizers for asynchronous encoder inputs
    signal a_sync1, a_sync2 : std_logic := '1';
    signal b_sync1, b_sync2 : std_logic := '1';

    -- Previous quadrature state
    signal prev_state : std_logic_vector(1 downto 0) := "11";

    -- Count value
    signal dec_count : integer range 0 to MAX_COUNT-1 := 0;

begin

    COUNT <= dec_count;

    process (CLOCK_50, RESET_N)
        variable new_state : std_logic_vector(1 downto 0);
    begin
        if RESET_N = '0' then
            a_sync1    <= '1';
            a_sync2    <= '1';
            b_sync1    <= '1';
            b_sync2    <= '1';
            prev_state <= "11";
            dec_count  <= START_COUNT;

        elsif rising_edge(CLOCK_50) then
            -- Synchronize encoder inputs
            a_sync1 <= ENC_A;
            a_sync2 <= a_sync1;
            b_sync1 <= ENC_B;
            b_sync2 <= b_sync1;

            -- Current stable quadrature state
            new_state := a_sync2 & b_sync2;

            -- Decode direction on valid state changes
            if new_state /= prev_state then
                case prev_state is
                    when "00" =>
                        if new_state = "01" then
                            if dec_count = MAX_COUNT-1 then
                                dec_count <= 0;
                            else
                                dec_count <= dec_count + 1;
                            end if;
                        elsif new_state = "10" then
                            if dec_count = 0 then
                                dec_count <= MAX_COUNT-1;
                            else
                                dec_count <= dec_count - 1;
                            end if;
                        end if;

                    when "01" =>
                        if new_state = "11" then
                            if dec_count = MAX_COUNT-1 then
                                dec_count <= 0;
                            else
                                dec_count <= dec_count + 1;
                            end if;
                        elsif new_state = "00" then
                            if dec_count = 0 then
                                dec_count <= MAX_COUNT-1;
                            else
                                dec_count <= dec_count - 1;
                            end if;
                        end if;

                    when "11" =>
                        if new_state = "10" then
                            if dec_count = MAX_COUNT-1 then
                                dec_count <= 0;
                            else
                                dec_count <= dec_count + 1;
                            end if;
                        elsif new_state = "01" then
                            if dec_count = 0 then
                                dec_count <= MAX_COUNT-1;
                            else
                                dec_count <= dec_count - 1;
                            end if;
                        end if;

                    when "10" =>
                        if new_state = "00" then
                            if dec_count = MAX_COUNT-1 then
                                dec_count <= 0;
                            else
                                dec_count <= dec_count + 1;
                            end if;
                        elsif new_state = "11" then
                            if dec_count = 0 then
                                dec_count <= MAX_COUNT-1;
                            else
                                dec_count <= dec_count - 1;
                            end if;
                        end if;

                    when others =>
                        null;
                end case;

                prev_state <= new_state;
            end if;
        end if;
    end process;

end architecture rtl;