/*
Transforma um sinal de clock de 50MHz em sinais de 0.25Hz, 0.5Hz, 1Hz e 2Hz.
Entradas:
	- reset			(wire - 1)	sinal de reset
	- clock_50		(wire - 1)	sinal de clock de 50MHz
Saidas:
	- c025Hz			(reg - 1)	sinal de 0.25Hz
	- c05Hz			(reg - 1)	sinal de 0.5Hz
	- c1Hz			(reg - 1)	sinal de 1Hz
	- c2Hz			(reg - 1)	sinal de 2Hz
*/

module FSM_clock(
	//entrada de dados
	reset,
	clock_50,
	
	//saida de dados
	c025Hz,
	c05Hz,
	c1Hz,
	c2Hz
);

	// Input Port(s)
	input wire reset;
	input 	  clock_50;
	
	// Output Port(s)
	output reg c025Hz;
	output reg c05Hz;
	output reg c1Hz;
	output reg c2Hz;
	
	always @(reset)
	begin
		if (reset == 1'b1)
			begin
				c025Hz <= 199999999; // todo ver com o prof. não sei se é pra fazer assim.
				c05Hz <= 99999999; // todo ver com o prof. não sei se é pra fazer assim.
				c1Hz <= 49999999; // todo ver com o prof. não sei se é pra fazer assim.
				c2Hz <= 24999999; // todo ver com o prof. não sei se é pra fazer assim.
			end
	end

endmodule
