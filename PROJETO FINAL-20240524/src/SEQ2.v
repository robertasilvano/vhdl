module SEQ2(
    input [3:0] address,
    output reg [3:0] output_reg
);


// TODO ver com o prof, porque o nome aqui ta SEQ1, mas esse seria o 10 (ou seja, 3 (em decimal)) 
always @(address) 
	begin
		output_reg = 4'b0001;
	end

endmodule