/*
Registrador de 2 bits que guarda o nível de jogo escolhido no estado Setup.
Entradas:
	- clk 	(	 - 1)	 clock
	- R 		(	 - 1)	 reset
	- E 		(	 - 1)	 enable
	- sw 		(	 - 8)	 switches
Saídas:
	- setup 	(reg - 8)	 guarda o valor do switches
*/

module Reg_setup(
	//entrada de dados
	clk,
	R,
	E,
	sw,
	
	//saída de dados
	setup
);

	//localparams
	localparam p_sw = 8;
	localparam p_setup = 8;

	// Input Port(s)
	input 	 						clk;
	input 	 						R;
	input 	 						E;
	input wire [p_sw - 1:0] 	sw;
	
	// Output Port(s)
	output reg [p_setup - 1:0] setup;
	
	always @(E or R)
		begin
			if (R == 1'b1)
				begin
					setup <= 8'b0;  // TODO ver com o prof. o registrador não é de 2 bits? pq tamanho 8?
				end
			
			if (E)
				begin
					setup <= sw;
				end
		end
endmodule
