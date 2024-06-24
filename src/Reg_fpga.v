module Reg_fgpa(
clk,
R,
E,
data,
q,
q3
);

	localparam p_data = 64;
	localparam p_q = 64;
	localparam p_q3 = 64;

	input wire 						clk;
	input wire 						R;
	input wire 						E;
	input wire [p_data - 1:0] 	data;
	input wire [p_q - 1:0]		q;
	input wire [p_q3 - 1:0] 	q3;
endmodule