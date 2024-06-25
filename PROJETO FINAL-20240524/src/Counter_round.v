/*
Contar a quantidade de sequências que o jogador acertou em um jogo
Entradas:
	- data: determina o número total de rodadas do jogo
	- clk: para sincronização
	- R: reset
	- E: habilitar a contagem
Saidas:
	- tc: indica se o jogador ganhou o jogo
	- round: quantidade de sequências que o jogador acertou
*/

module Counter_round(
	//entrada de dados
	clk,
	R,
	E,
	data,
	
	//saída de dados
	tc,
	round
);

	//localparams
	localparam p_data = 4;
	localparam p_round = 4;  //ver tamananho

	// Input Port(s)
	input wire 						clk;
	input wire 						R;
	input wire 						E;
	input wire [p_data - 1:0] 	data;
	
	// Output Port(s)
	output reg 							tc;
	output reg [p_round - 1:0]		round;
	
	always @(posedge clk or posedge R)  // perguntar pro prof. R tem posedge ne?
	begin
		if (R == 1'b1)
			begin
				round <= 4'b0000;
				tc <= 1'b0;
			end
		else
			begin
				if (E == 1'b1)
					begin
						round <= round + 1'b1;
					end
				
				if (round == data)  //ganhou
					begin
						tc <= 1'b1;
					end
			end
		
	end

endmodule
