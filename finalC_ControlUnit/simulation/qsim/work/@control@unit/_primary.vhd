library verilog;
use verilog.vl_types.all;
entity ControlUnit is
    port(
        c0              : out    vl_logic;
        w               : in     vl_logic;
        x               : in     vl_logic;
        y               : in     vl_logic;
        z               : in     vl_logic;
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        c2              : out    vl_logic;
        c3              : out    vl_logic;
        c4              : out    vl_logic;
        c7              : out    vl_logic;
        c8              : out    vl_logic;
        c9              : out    vl_logic
    );
end ControlUnit;
