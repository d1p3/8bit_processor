library verilog;
use verilog.vl_types.all;
entity ControlUnit_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        w               : in     vl_logic;
        x               : in     vl_logic;
        y               : in     vl_logic;
        z               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ControlUnit_vlg_sample_tst;
