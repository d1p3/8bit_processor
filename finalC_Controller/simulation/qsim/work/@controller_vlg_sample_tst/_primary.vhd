library verilog;
use verilog.vl_types.all;
entity Controller_vlg_sample_tst is
    port(
        ADD             : in     vl_logic;
        CLR             : in     vl_logic;
        HLT             : in     vl_logic;
        INC             : in     vl_logic;
        JMP             : in     vl_logic;
        JPN             : in     vl_logic;
        JPZ             : in     vl_logic;
        LDA             : in     vl_logic;
        STA             : in     vl_logic;
        SUB             : in     vl_logic;
        \XOR\           : in     vl_logic;
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Controller_vlg_sample_tst;
