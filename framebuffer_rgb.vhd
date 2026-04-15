library ieee;
use ieee.std_logic_1164.all;

library altera_mf;
use altera_mf.altera_mf_components.all;

entity framebuffer_rgb is
    port (
        clock     : in  std_logic := '1';
        data      : in  std_logic_vector(2 downto 0);  -- RGB (1 bit each)
        rdaddress : in  std_logic_vector(18 downto 0);
        wraddress : in  std_logic_vector(18 downto 0);
        wren      : in  std_logic := '0';
        q         : out std_logic_vector(2 downto 0)
    );
end framebuffer_rgb;

architecture syn of framebuffer_rgb is
    signal sub_wire0 : std_logic_vector(2 downto 0);
begin
    q <= sub_wire0;

    altsyncram_component : altsyncram
    generic map (
        address_aclr_b => "NONE",
        address_reg_b  => "CLOCK0",
        clock_enable_input_a  => "BYPASS",
        clock_enable_input_b  => "BYPASS",
        clock_enable_output_b => "BYPASS",
        intended_device_family => "Cyclone IV E",
        lpm_type => "altsyncram",
        numwords_a => 307200,
        numwords_b => 307200,
        operation_mode => "DUAL_PORT",
        outdata_aclr_b => "NONE",
        outdata_reg_b  => "UNREGISTERED",
        power_up_uninitialized => "FALSE",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        widthad_a => 19,
        widthad_b => 19,
        width_a   => 3,
        width_b   => 3,
        width_byteena_a => 1
    )
    port map (
        address_a => wraddress,
        address_b => rdaddress,
        clock0    => clock,
        data_a    => data,
        wren_a    => wren,
        q_b       => sub_wire0
    );
end syn;