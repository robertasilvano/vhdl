library verilog;
use verilog.vl_types.all;
entity Dec7seg is
    port(
        G               : in     vl_logic_vector(3 downto 0);
        O               : in     vl_logic_vector(6 downto 0)
    );
end Dec7seg;
