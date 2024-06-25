/*
Multiplexador 2x1 de 7 bits
Seleciona entre duas entradas de 7 bits (ent0 e ent1) com base no sinal de seleção sel
Quando sel = 0, a saída é ent0
Quando sel = 1, a saida é ent1
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
		if (sel == 1'b0) out = ent0;  // = ou <=? ver com o prof
		else if (sel == 1'b1) out = ent1;
		// else? ver com o prof
	end

endmodule
