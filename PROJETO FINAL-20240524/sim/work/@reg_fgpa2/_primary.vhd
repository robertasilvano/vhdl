library verilog;
use verilog.vl_types.all;
entity Reg_fgpa2 is
    port(
        clk             : in     vl_logic;
        R               : in     vl_logic;
        E               : in     vl_logic;
        data            : in     vl_logic_vector(63 downto 0);
        q               : in     vl_logic_vector(63 downto 0)
    );
end Reg_fgpa2;
