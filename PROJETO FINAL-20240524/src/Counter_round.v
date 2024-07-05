/*
Contar a quantidade de sequências que o jogador acertou em um jogo
Entradas:
	- data 	(wire - 3) 	determina o número total de rodadas do jogo
	- clk 	(wire - 1) 	para sincronização
	- R 		(wire - 1) 	reset
	- E 		(wire - 1) 	habilitar a contagem
Saidas:
	- tc 		(reg - 1) 	indica se o jogador ganhou o jogo
	- round 	(reg - 4) 	quantidade de sequências que o jogador acertou
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
	localparam p_round = 4;

	// Input Port(s)
	input 	 						clk;
	input wire 						R;
	input wire 						E;
	input wire [p_data - 1:0] 	data;
	
	// Output Port(s)
	output reg 							tc;
	output reg [p_round - 1:0]		round;
	
	always @(posedge clk or posedge R)
	begin
		if (R == 1'b1)
			begin
				round <= 4'b0000;
				tc <= 1'b0;
			end
		else
			begin
				if (E == 1'b1) //ta no estado de check, ou seja, rodada finalizou
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
