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
	c025hz,
	c05hz,
	c1hz,
	c2hz
);

	// Input Port(s)
	input wire reset;
	input 	  clock_50;
	
	// Output Port(s)
	output reg c025hz;
	output reg c05hz;
	output reg c1hz;
	output reg c2hz;
	
	//Sinais internos
	reg [27:0] cnt_025hz;
	reg [27:0] cnt_05hz;
	reg [27:0] cnt_1hz;
	reg [27:0] cnt_2hz;
	
	always @(posedge clock_50 or posedge reset) 
	begin
		if (reset == 1'b1)
			begin
				cnt_025hz <= {28{1'b0}};
				cnt_05hz <= {28{1'b0}};
				cnt_1hz <= {28{1'b0}};
				cnt_2hz <= {28{1'b0}};
			end
		else 
			begin
				cnt_025hz <= cnt_025hz + 1'b1;
				cnt_05hz <= cnt_05hz + 1'b1;
				cnt_1hz <= cnt_1hz + 1'b1;
				cnt_2hz <= cnt_2hz + 1'b1;
				
				if (cnt_025hz == 199999999) cnt_025hz <= {28{1'b0}};
				if (cnt_05hz == 99999999) cnt_05hz <= {28{1'b0}}; 
				if (cnt_1hz == 49999999) cnt_1hz <= {28{1'b0}}; 
				if (cnt_2hz == 24999999) cnt_2hz <= {28{1'b0}}; 
		end		
	end
	
	always @(reset or cnt_025hz or cnt_05hz or cnt_1hz or cnt_2hz) 
	begin
		if (reset) 
			begin
				c025hz <= 1'b0;
				c05hz <= 1'b0;
				c1hz <= 1'b0;
				c2hz <= 1'b0;
			end
		else 
			begin
				if (cnt_025hz == 199999999) c025hz <= ~c025hz;
				if (cnt_05hz == 99999999) c05hz <= ~c05hz;
				if (cnt_1hz == 49999999) c1hz <= ~c1hz;
				if (cnt_2hz == 24999999) c2hz <= ~c2hz;
			end
	end
	

endmodule
