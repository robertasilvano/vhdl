/*
Multiplexador 2x1 de 7 bits
Seleciona entre duas entradas de 7 bits (ent0 e ent1) com base no sinal de seleção sel
Quando sel = 0, a saída é ent0.
Quando sel = 1, a saida é ent1.
Entradas:
	- sel 	(wire - 1)	sinal de seleção
	- ent0 	(wire - 7)	entrada 0
	- ent1 	(wire - 7)	entrada 1
Saídas:
	- out 	(reg - 7)	saída escolhida
*/

module Mux2x1_7bits(

	// entrada de dados
	sel,
	ent0,
	ent1,

	//saída de dados
	out

);

	//localparams
	localparam p_ent = 7;
	localparam p_out = 7;

	// Input Port(s)
	input wire sel;
	input wire [p_ent - 1:0] ent0;
	input wire [p_ent - 1:0] ent1;
	
	// Output Port(s)
	output reg [p_out - 1:0] out;
	
	always @(ent0 or ent1 or sel)
	begin
		if (sel == 1'b1) out <= ent1;
		else out <= ent0;
	end

endmodule
