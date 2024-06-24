module DecSeq(
address,
out
);

	localparam p_address = 4;
	localparam p_out = 4;
	
	input wire [p_address - 1:0] 	address;
	input wire [p_out - 1:0]		out;
endmodule