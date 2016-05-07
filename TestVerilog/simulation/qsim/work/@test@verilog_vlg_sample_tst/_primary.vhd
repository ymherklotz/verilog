library verilog;
use verilog.vl_types.all;
entity TestVerilog_vlg_sample_tst is
    port(
        first_red_pos_x : in     vl_logic_vector(9 downto 0);
        sec_red_pos_x   : in     vl_logic_vector(9 downto 0);
        sampler_tx      : out    vl_logic
    );
end TestVerilog_vlg_sample_tst;
