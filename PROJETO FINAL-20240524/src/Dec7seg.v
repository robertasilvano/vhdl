/*
Decodificador de números binários de 4 bits para serem utilizados nos displays de 7 segmentos. 
Ele recebe um número binário de 4 bits (G) e fornece os sinais para acender os segmentos do display correspondentes ao número decodificado. 
Cada segmento do display é representado por um bit no vetor de saída (O).
Entradas:
	- G 	(wire - 4)	sequência de 4 bits de entrada
Saídas:
	- O 	(reg - 7)	vetor decodificado dos segmentos do display
*/

module Dec7seg(

	//entrada de dados
	G,

	//saída de dados
	O
);

	//localparams
	localparam p_G = 4;
	localparam p_O = 7;

	// Input Port(s)
	input wire [p_G - 1:0] G;
	
	// Output Port(s)
	output reg [p_O - 1:0] O;
	
	always @(G) begin
		case (G)
			4'h0 : O = ~7'b011_1111;   
			4'h1 : O = ~7'b000_0110;   
			4'h2 : O = ~7'b101_1011;
			4'h3 : O = ~7'b100_1111;
			4'h4 : O = ~7'b110_0110;
			4'h5 : O = ~7'b110_1101;
			4'h6 : O = ~7'b111_1101;
			4'h7 : O = ~7'b000_0111;
			4'h8 : O = ~7'b111_1111;
			4'h9 : O = ~7'b110_1111;
			4'hA : O = ~7'b111_0111;
			4'hB : O = ~7'b111_1100;
			4'hC : O = ~7'b011_1001;
			4'hD : O = ~7'b101_1110;
			4'hE : O = ~7'b111_1001;
			4'hF : O = ~7'b111_0001;
			default: O = ~7'b100_0000;
		endcase
	end

endmodule
