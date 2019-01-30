library verilog;
use verilog.vl_types.all;
entity adder_with_overflow is
    port(
        Cout            : out    vl_logic;
        A0              : in     vl_logic;
        B0              : in     vl_logic;
        AddSub          : in     vl_logic;
        A1              : in     vl_logic;
        B1              : in     vl_logic;
        B2              : in     vl_logic;
        A2              : in     vl_logic;
        B3              : in     vl_logic;
        A3              : in     vl_logic;
        R0              : out    vl_logic;
        R1              : out    vl_logic;
        R2              : out    vl_logic;
        R3              : out    vl_logic;
        OVR             : out    vl_logic
    );
end adder_with_overflow;
