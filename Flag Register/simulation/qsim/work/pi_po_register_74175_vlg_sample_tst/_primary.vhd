library verilog;
use verilog.vl_types.all;
entity pi_po_register_74175_vlg_sample_tst is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        Clear           : in     vl_logic;
        D               : in     vl_logic;
        Load            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end pi_po_register_74175_vlg_sample_tst;
