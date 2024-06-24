library verilog;
use verilog.vl_types.all;
entity Mux2x1_7bits is
    port(
        sel             : in     vl_logic;
        ent0            : in     vl_logic_vector(6 downto 0);
        ent1            : in     vl_logic_vector(6 downto 0);
        \out\           : in     vl_logic_vector(6 downto 0)
    );
end Mux2x1_7bits;
