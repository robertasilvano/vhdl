library verilog;
use verilog.vl_types.all;
entity Mux4x1 is
    port(
        level           : in     vl_logic_vector(1 downto 0);
        cl1             : in     vl_logic;
        cl2             : in     vl_logic;
        cl3             : in     vl_logic;
        cl4             : in     vl_logic;
        clkhz           : in     vl_logic
    );
end Mux4x1;
