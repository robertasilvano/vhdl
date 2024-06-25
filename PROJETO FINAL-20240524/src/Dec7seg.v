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
	input wire [p_G - 1:0] G;  //número binário de 4 bits
	
	// Output Port(s)
	output wire [p_O - 1:0] O;  //vetor dos segmentos do display
	
	always @(G) begin
		case (G)
			4'h0 : G = ~7'b011_1111;   
			4'h1 : G = ~7'b000_0110;   
			4'h2 : G = ~7'b101_1011;
			4'h3 : G = ~7'b100_1111;
			4'h4 : G = ~7'b110_0110;
			4'h5 : G = ~7'b110_1101;
			4'h6 : G = ~7'b111_1101;
			4'h7 : G = ~7'b000_0111;
			4'h8 : G = ~7'b111_1111;
			4'h9 : G = ~7'b110_1111;
			4'hA : G = ~7'b111_0111;
			4'hB : G = ~7'b111_1100;
			4'hC : G = ~7'b011_1001;
			4'hD : G = ~7'b101_1110;
			4'hE : G = ~7'b111_1001;
			4'hF : G = ~7'b111_0001;
			default: G = ~7'b100_0000;
		endcase
	end

endmodule
