module Reg_fgpa2(
clk,
R,
E,
data,
q
);

	localparam p_data = 64;
	localparam p_q = 64;

	input wire 						clk;
	input wire 						R;
	input wire 						E;
	input wire [p_data - 1:0] 	data;
	input wire [p_q - 1:0]		q;
endmodule
