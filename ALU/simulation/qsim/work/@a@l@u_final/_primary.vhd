library verilog;
use verilog.vl_types.all;
entity ALU_final is
    port(
        Overload        : out    vl_logic;
        s0              : in     vl_logic;
        A0              : in     vl_logic;
        B0              : in     vl_logic;
        A1              : in     vl_logic;
        B1              : in     vl_logic;
        A2              : in     vl_logic;
        B2              : in     vl_logic;
        A3              : in     vl_logic;
        B3              : in     vl_logic;
        carry           : out    vl_logic;
        r0              : out    vl_logic;
        s1              : in     vl_logic;
        r1              : out    vl_logic;
        r2              : out    vl_logic;
        r3              : out    vl_logic
    );
end ALU_final;
