module Datapath(
	clock_50,	//entrada
	key,			//entrada
	switch,		//entrada
	r1,			//entrada
	r2,			//entrada
	e1,			//entrada
	e2,			//entrada
	e3,			//entrada
	e4,			//entrada
	sel,			//entrada
	hex0,			//saida
	hex1,			//saida
	hex2,			//saida
	hex3,			//saida
	hex4,			//saida
	hex5,			//saida
	leds,			//saida
	end_fpga,	//saida
	end_user,	//saida
	end_time,	//saida
	win,			//saida
	match			//saida
);

	localparam p_key = 4;
	localparam p_switch = 8;
	localparam p_hex = 7;
	localparam p_leds = 4;

	// Input Port(s)
	input 		clock_50;
	input wire 	[p_key - 1:0] 		key;
	input wire 	[p_switch - 1:0] 	switch;
	input wire 							r1;
	input wire 							r2;
	input wire 							e1;
	input wire 							e2;
	input wire 							e3;
	input wire 							e4;
	input wire 							sel;
	
	// Output Port(s)
	output wire [p_hex - 1:0] 		hex0;
	output wire [p_hex - 1:0]		hex1;
	output wire [p_hex - 1:0]		hex2;
	output wire [p_hex - 1:0]		hex3;
	output wire [p_hex - 1:0]		hex4;
	output wire [p_hex - 1:0]		hex5;
	output wire [p_leds - 1:0]		leds;
	output wire 						end_fpga;
	output wire 						end_user;
	output wire 						end_time;
	output wire 						win;
	output wire 						match;
	
	wire [3:0] w_tempo;  //maracutaia só pra poder rodar. depois vamos usar o do codificador 7 seg.
	Counter_time U0_CT (
		.clkt(clock_50),
		.R(r2),
		.E(e2),
		.tempo(w_tempo),
		.end_time(end_time)
	);

endmodule