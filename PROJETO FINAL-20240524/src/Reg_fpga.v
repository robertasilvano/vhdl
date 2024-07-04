/*
Registrador de 64 bits que guarda e monta uma sequência correta na rodada.
Entradas:
	- clk 	(wire - 1) 	clock
	- R 		(wire - 1) 	reset
	- E 		(wire - 1) 	enable
	- data 	(wire - 64) entrada de dados
Saídas:
	- q 		(reg - 64) 	guarda a sequência completa de 64 bits
	- q3 		(reg - 4) 	guarda os 4 bits mais significativos da sequência
*/


module Reg_fgpa(
	//entrada de dados
	clk,
	R,
	E,
	data,
	
	//saída de dados
	q,
	q3
);

	//localparams
	localparam p_data = 64;
	localparam p_q = 64;
	localparam p_q3 = 4;

	// Input Port(s)
	input 	 						clk;
	input wire 						R;
	input wire 						E;
	input wire [p_data - 1:0] 	data;
	
	// Output Port(s)
	output reg [p_q - 1:0]		q;
	output reg [p_q3 - 1:0] 	q3;
	
	always @ (E)
		begin
			if (E == 1'b1)
				begin
					q <= data;
					q3 <= data[63:60];
				end
		end
endmodule
