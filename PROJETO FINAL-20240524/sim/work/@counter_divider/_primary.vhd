library verilog;
use verilog.vl_types.all;
entity Counter_divider is
    port(
        clk             : in     vl_logic;
        clk1            : in     vl_logic;
        clk2            : in     vl_logic;
        clk3            : in     vl_logic;
        clk4            : in     vl_logic
    );
end Counter_divider;
