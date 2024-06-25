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
	
	always @(cl1 or cl2 or cl3 or cl4 or level)
	begin
		if (level == 0) clkhz = cl1;  // = ou <=? ver com o prof
		else if (level == 1) clkhz = cl2;
		else if (level == 2) clkhz = cl3;
		else if (level == 3) clkhz = cl4;
		// else? ver com o prof
	end
	
endmodule
