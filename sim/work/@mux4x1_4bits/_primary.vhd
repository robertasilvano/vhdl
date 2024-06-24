library verilog;
use verilog.vl_types.all;
entity Mux4x1_4bits is
    port(
        sel             : in     vl_logic_vector(1 downto 0);
        ent0            : in     vl_logic_vector(3 downto 0);
        ent1            : in     vl_logic_vector(3 downto 0);
        ent2            : in     vl_logic_vector(3 downto 0);
        ent3            : in     vl_logic_vector(3 downto 0);
        \out\           : in     vl_logic_vector(3 downto 0)
    );
end Mux4x1_4bits;
