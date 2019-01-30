library verilog;
use verilog.vl_types.all;
entity FourBitUpCounter_vlg_check_tst is
    port(
        Aout            : in     vl_logic;
        Bout            : in     vl_logic;
        Cout            : in     vl_logic;
        Dout            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end FourBitUpCounter_vlg_check_tst;
