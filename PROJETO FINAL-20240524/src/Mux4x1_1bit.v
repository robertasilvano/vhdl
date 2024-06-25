/*
Multiplexador 4x1 de 1 bit
Seleciona entre quatro entradas de 1 bit (cl1, cl2, cl3, cl4) com base no valor binário de level
O valor de level indica qual entrada deve ser selecionada.
*/

module Mux4x1_1bit(

	// entrada de dados
	level,
	cl1,
	cl2,
	cl3,
	cl4,

	//saída de dados
	clkhz

);

	//localparams
	localparam p_level = 2;

	// Input Port(s)
	input wire [p_level - 1:0] 	level;
	input wire							cl1;
	input wire							cl2;
	input wire							cl3;
	input wire							cl4;
	
	// Output Port(s)
	output reg							clkhz;
	
endmodule
