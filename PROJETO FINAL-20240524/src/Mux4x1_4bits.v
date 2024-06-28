/*
Multiplexador 4x1 de 4 bits
Seleciona entre quatro entradas de 4 bits (ent0, ent1, ent2 e ent3) com base no valor binário de sel
O valor de sel indica qual entrada deve ser selecionada.
Entradas:
	- sel 	(wire - 1)	sinal de seleção
	- ent0 	(wire - 7)	entrada 0
	- ent1 	(wire - 7)	entrada 1
	- ent2 	(wire - 7)	entrada 2
	- ent3 	(wire - 7)	entrada 3
Saídas:
	- out 	(reg - 7)	saída escolhida


*/

module Mux4x1_4bits(
	
	// entrada de dados
	sel,
	ent0,
	ent1,
	ent2,
	ent3,
	
	//saída de dados
	out
);

	//localparams
	localparam p_sel = 2;
	localparam p_ent = 4;
	localparam p_out = 4;

	// Input Port(s)
	input wire [p_sel - 1:0] sel;
	input wire [p_ent - 1:0] ent0;
	input wire [p_ent - 1:0] ent1;
	input wire [p_ent - 1:0] ent2;
	input wire [p_ent - 1:0] ent3;
	
	// Output Port(s)
	output reg [p_out - 1:0] out;
	
		
	always @(ent0 or ent1 or ent2 or ent3 or sel)
	begin
		if (sel == 0) out <= ent0;
		else if (sel == 1) out <= ent1;
		else if (sel == 2) out <= ent2;
		else if (sel == 3) out <= ent3;
		// else? ver com o prof
	end

endmodule
