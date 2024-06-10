library verilog;
use verilog.vl_types.all;
entity Reg_setup is
    port(
        clk             : in     vl_logic;
        R               : in     vl_logic;
        E               : in     vl_logic;
        sw              : in     vl_logic_vector(7 downto 0);
        setup           : in     vl_logic_vector(7 downto 0)
    );
end Reg_setup;
