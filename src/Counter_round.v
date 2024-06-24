module Counter_round(
clk,
R,
E,
data,
tc
);

	localparam p_data = 4;
	localparam p_q = 4;  //ver tamananho

	input wire 						clk;
	input wire 						R;
	input wire 						E;
	input wire [p_data - 1:0] 	data;
	input wire [p_q - 1:0]		tc;
endmodule