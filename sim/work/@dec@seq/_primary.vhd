library verilog;
use verilog.vl_types.all;
entity DecSeq is
    port(
        address         : in     vl_logic_vector(3 downto 0);
        \out\           : in     vl_logic_vector(3 downto 0)
    );
end DecSeq;
