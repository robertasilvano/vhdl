/*
Responsável por decodificar um endereço de 4 bits (address) em um valor de saída de 4 bits (output).
Entradas:
	- address		(wire - 4)	endereço de 4 bits
Saídas:
	- output_reg	(reg - 4)	valor decodificado de 4 bits

OBS: decSeq10
*/

module SEQ3(
    input [3:0] address,
    output reg [3:0] output_reg
);

 
always @(address) begin
    case (address)
        4'b0000: output_reg = 4'b0001;
        4'b0001: output_reg = 4'b0100;
        4'b0010: output_reg = 4'b0010;
        4'b0011: output_reg = 4'b1000;
        4'b0100: output_reg = 4'b0001;
        4'b0101: output_reg = 4'b1000;
        4'b0110: output_reg = 4'b0100;
        4'b0111: output_reg = 4'b1000;
        4'b1000: output_reg = 4'b0010;
        4'b1001: output_reg = 4'b1000;
        4'b1010: output_reg = 4'b0001;
        4'b1011: output_reg = 4'b0010;
        4'b1100: output_reg = 4'b1000;
        4'b1101: output_reg = 4'b0001;
        4'b1110: output_reg = 4'b0100;
        4'b1111: output_reg = 4'b0010;
        default: output_reg = 4'b0000;  // Default case to handle unexpected values
    endcase
end

endmodule
