module DecSeq(
	//entrada de dados
	address,
	
	//saída de dados
	out
);
	
	//localparams
	localparam p_address = 4;
	localparam p_out = 4;
	
	// Input Port(s)
	input wire [p_address - 1:0] 	address;
	
	// Output Port(s)
	output wire [p_out - 1:0]		out;  //wire ou reg?
endmodule