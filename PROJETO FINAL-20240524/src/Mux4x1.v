/*
Multiplexador 4x1 de 1 bit
Seleciona entre duas entradas de 7 bits (ent0 e ent1) com base no sinal de seleção sel
Quando sel = 0, a saída é ent0
Quando sel = 1, a saida é ent1
*/

module Mux4x1(
level,
cl1,
cl2,
cl3,
cl4,
clkhz
);

	localparam p_level = 2;

	input wire [p_level - 1:0] 	level;
	input wire						cl1;
	input wire						cl2;
	input wire						cl3;
	input wire						cl4;
	input wire						clkhz;
endmodule
