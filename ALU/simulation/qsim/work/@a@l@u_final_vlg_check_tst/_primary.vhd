library verilog;
use verilog.vl_types.all;
entity ALU_final_vlg_check_tst is
    port(
        carry           : in     vl_logic;
        Overload        : in     vl_logic;
        r0              : in     vl_logic;
        r1              : in     vl_logic;
        r2              : in     vl_logic;
        r3              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ALU_final_vlg_check_tst;
