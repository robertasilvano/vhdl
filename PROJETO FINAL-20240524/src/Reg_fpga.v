module Reg_fgpa(
	//entrada de dados
	clk,
	R,
	E,
	data,
	
	//saída de dados
	q,
	q3
);

	//localparams
	localparam p_data = 64;
	localparam p_q = 64;
	localparam p_q3 = 4;

	// Input Port(s)
	input wire 						clk;
	input wire 						R;
	input wire 						E;
	input wire [p_data - 1:0] 	data;
	
	// Output Port(s)
	output wire [p_q - 1:0]		q;  //wire ou reg?
	output wire [p_q3 - 1:0] 	q3;  //wire ou reg?
endmodule
