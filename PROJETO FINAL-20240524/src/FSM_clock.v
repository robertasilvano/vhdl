/*
Transforma um sinal de clock de 50MHz em sinais de 0.25Hz, 0.5Hz, 1Hz e 2Hz
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
	input wire clock_50;
	
	// Output Port(s)
	output reg c025Hz;
	output reg c05Hz;
	output reg c1Hz;
	output reg c2Hz;
	
	always @(reset)
	begin
		if (reset == 1'b1)
		begin
			c025Hz <= 199999999;
			c05Hz <= 99999999;
			c1Hz <= 49999999;
			c2Hz <= 24999999;
		end
	end

endmodule
