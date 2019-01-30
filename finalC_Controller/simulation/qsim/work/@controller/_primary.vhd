library verilog;
use verilog.vl_types.all;
entity Controller is
    port(
        LDA             : in     vl_logic;
        STA             : in     vl_logic;
        ADD             : in     vl_logic;
        SUB             : in     vl_logic;
        \XOR\           : in     vl_logic;
        INC             : in     vl_logic;
        CLR             : in     vl_logic;
        JMP             : in     vl_logic;
        JPZ             : in     vl_logic;
        JPN             : in     vl_logic;
        HLT             : in     vl_logic;
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        c0              : out    vl_logic;
        c2              : out    vl_logic;
        c3              : out    vl_logic;
        c4              : out    vl_logic;
        c7              : out    vl_logic;
        c8              : out    vl_logic;
        c9              : out    vl_logic;
        c11             : out    vl_logic
    );
end Controller;
