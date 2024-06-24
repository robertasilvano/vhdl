module Reg_setup(
clk,
R,
E,
sw,
setup
);

	localparam p_sw = 8;
	localparam p_setup = 8;

	input wire 						clk;
	input wire 						R;
	input wire 						E;
	input wire [p_sw - 1:0] 	sw;
	input wire [p_setup - 1:0] setup;
endmodule
