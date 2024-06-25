/*
Registrador de 64 bits que guarda e monta a sequência digitada pelo usuário.
Entradas:
	- clk 	(wire - 1) 	clock
	- R 		(wire - 1) 	reset
	- E 		(wire - 1) 	enable
	- data 	(wire - 64) entrada de dados que contém a sequência digitada pelo usuário
Saidas:
	- q 		(reg - 64) 	guarda a sequência completa de 64 bits
*/

module Reg_user(
	//entrada de dados
	clk,
	R,
	E,
	data,
	
	//saída de dados
	q
);

	//localparams
	localparam p_data = 64;
	localparam p_q = 64;

	// Input Port(s)
	input wire 						clk;
	input wire 						R;
	input wire 						E;
	input wire [p_data - 1:0] 	data;
	
	// Output Port(s)
	output reg [p_q - 1:0]		q;
	
	always @(E or R) //TODO confirmar
		begin
			if (E == 1'b1) // TODO confirmar
				begin
					q <= data;
				end
			if (R == 1'b1) // TODO confirmar
				begin
					q <= 64'b0; // TODO confirmar
				end
			// todo confirmar else?
		end
	
endmodule
