library verilog;
use verilog.vl_types.all;
entity FourBitUpCounter is
    port(
        Dout            : out    vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        D               : in     vl_logic;
        CLR             : in     vl_logic;
        UP              : in     vl_logic;
        load            : in     vl_logic;
        Cout            : out    vl_logic;
        Bout            : out    vl_logic;
        Aout            : out    vl_logic
    );
end FourBitUpCounter;
