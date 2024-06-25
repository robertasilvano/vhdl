/*
Responsável por decodificar um endereço de 4 bits (address) em um valor de saída de 4 bits (output).
Entradas:
	- address		(wire - 4)	endereço de 4 bits
Saídas:
	- output_reg	(reg - 4)	valor decodificado de 4 bits
	
OBS: decSeq00
*/

module SEQ2(
    input [3:0] address,
    output reg [3:0] output_reg
);


always @(address) 
	begin
		output_reg = 4'b0001;
	end

endmodule