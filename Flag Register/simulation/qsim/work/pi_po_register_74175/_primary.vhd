library verilog;
use verilog.vl_types.all;
entity pi_po_register_74175 is
    port(
        Aout            : out    vl_logic;
        Clear           : in     vl_logic;
        Load            : in     vl_logic;
        C               : in     vl_logic;
        B               : in     vl_logic;
        A               : in     vl_logic;
        D               : in     vl_logic;
        Bout            : out    vl_logic;
        Cout            : out    vl_logic;
        Dout            : out    vl_logic
    );
end pi_po_register_74175;
