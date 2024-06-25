module Counter_round(
	//entrada de dados
	clk,
	R,
	E,
	data,
	
	//saída de dados
	tc
);

	//localparams
	localparam p_data = 4;
	localparam p_q = 4;  //ver tamananho

	// Input Port(s)
	input wire 						clk;
	input wire 						R;
	input wire 						E;
	input wire [p_data - 1:0] 	data;
	
	// Output Port(s)
	output wire [p_q - 1:0]		tc;  //wire ou reg?
endmodule