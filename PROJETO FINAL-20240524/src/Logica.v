/*
Calcula a pontuação final do jogador de acordo com a função j x R, 
onde reg_setup_level é o nível de jogo (1, 2, 3 ou 4) 
e round é o número de sequências acertadas pelo jogador.

Entradas:
	- round 					(wire - 4) 	registrador round, quantidade de sequências que o jogador acertou (criado no módulo Counter_round)
	- reg_setup_level 	(wire - 2) 	registrador do nível do jogo (criado no módulo Reg_setup, setup[7:6])
	- reg_setup_mapa 		(wire - 2) 	registrador do mapa (criado no módulo Reg_setup, setup[5:4])
Saídas:
	- points 				(wire - 8)	quantidade de pontos
*/

module Logica(
	//entrada de dados
	round,
	reg_setup_level,
	reg_setup_mapa,
	
	//saída de dados
	points
);

	//localparams
	localparam p_round = 4;
	localparam p_setup = 2;
	localparam p_points = 8;
	
	// Input Port(s)
	input wire [p_round - 1:0] round;
	input wire [p_setup - 1:0] reg_setup_level;
	input wire [p_setup - 1:0] reg_setup_mapa;
	
	// Output Port(s)
	output reg [p_points - 1:0] points;
	
	//todo fazer a lógica!!!!
	
	
endmodule
