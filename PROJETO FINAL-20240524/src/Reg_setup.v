/*
Registrador de 2 bits que guarda o nível de jogo escolhido no estado Setup.
Entradas:
	- clk 	(	 - 1)	 clock
	- R 		(	 - 1)	 reset
	- E 		(	 - 1)	 enable
	- sw 		(	 - 8)	 switches
Saídas:
	- setup 	(reg - 8)	 guarda o valor do switches
*/

module Reg_setup(
	//entrada de dados
	clk,
	R,
	E,
	sw,
	
	//saída de dados
	setup
);

	//localparams
	localparam p_sw = 8;
	localparam p_setup = 8;

	// Input Port(s)
	input 	 						clk;
	input 	 						R;
	input 	 						E;
	input wire [p_sw - 1:0] 	sw;
	
	// Output Port(s)
	output reg [p_setup - 1:0] setup;
	
	always @(E or R)
		begin
			if (R == 1'b1)
				begin
					setup <= 8'b0;
				end
			
			if (E)
				begin
					setup <= sw;
					//[9:8] 4 velocidades de jogo
					//[7:6] 4 sequências de jogo
					//[5:4] número máximo de iterações por sequência //TODO ver com o prof porque na doc fala que é 5:2
					//[3:2] número máximo de rodadas //TODO ver com o prof porque isso não ta descrito na doc, e pela imagem diz ser [3:0], mas acho que ta errado.
					//[1] reset do jogo
				end
		end
endmodule
