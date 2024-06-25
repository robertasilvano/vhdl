module Datapath(

	//entrada de dados
	clock_50,
	key,
	switch,
	
	//entrada de comandos
	r1,
	r2,
	e1,
	e2,
	e3,
	e4,
	sel,
	
	// saida de dados
	hex0,
	hex1,
	hex2,
	hex3,
	hex4,
	hex5,
	leds,
	
	// saida de status
	end_fpga,
	end_user,
	end_time,
	win,
	match
);

	//localparams
	localparam p_key = 4;
	localparam p_switch = 8;
	localparam p_hex = 7;
	localparam p_leds = 4;

	// Input Port(s)
	input 								clock_50;  // aqui tem wire?
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
	
	//FSM_clock
	wire c025Hz, c05Hz, c1Hz, c2Hz;
	wire clkhz;
	FSM_clock FSM (
		.reset(r1),
		.clock_50(clock_50),
		.c025Hz(c025Hz),
		.c05Hz(c05Hz),
		.c1Hz(c1Hz),
		.c2Hz(c2Hz)
	);
	
	Mux4x1_4bits MUX10 (  //TODO ver com o prof. aqui ta clock 0.5 ate 3, e não de 0.25 até 2.
		.sel(setup[7:6]),
		.ent0(c025Hz),
		.ent1(c05Hz),
		.ent2(c1Hz),
		.ent3(c2Hz),
		.out(clkhz)
	);
	
	//COUNTER TIME
	wire [3:0] w_tempo;
	Counter_time CT (
		.clkt(clock_50),
		.R(r2),
		.E(e2),
		.tempo(w_tempo),
		.end_time(end_time)
	);
	
	//COUNTER ROUND
	wire [7:0] setup; //TODO
	wire [3:0] round; //TODO
	Counter_round CR (
		.clk(clock_50),
		.R(r1),
		.E(e4),
		.data(setup[3:0]),
		.tc(win),
		.round(round)
	);
	
	//COUNTER FPGA
	wire[3:0] seqFPGA_in, seqFPGA_out; //TODO
	wire[3:0] seq1, seq2, seq3, seq4;
	Counter_FPGA CFPGA (
		.clk(clkhz),
		.R(r2),
		.E(e3),
		.data(round),
		.tc(end_fpga),
		.SEQFPGA(seqFPGA_in)
	);
	
	SEQ1 S1 (
		.address(seqFPGA_in),
		.output_reg(seq1)
	);
	
	SEQ2 S2 (
		.address(seqFPGA_in),
		.output_reg(seq2)
	);
	
	SEQ3 S3 (
		.address(seqFPGA_in),
		.output_reg(seq3)
	);
	
	SEQ4 S4 (
		.address(seqFPGA_in),
		.output_reg(seq4)
	);
	
	Mux4x1_4bits MUX11 (
		.sel(setup[5:4]),
		.ent0(seq1),
		.ent1(seq2),
		.ent2(seq3),
		.ent3(seq4),
		.out(seqFPGA_out)
	);
	
	//HEX5
	wire [6:0] w_mux0_mux1;
	
	Mux2x1_7bits MUX0 (
		.sel(win),
		.ent0(7'b1011_011),  // 1 - U
		.ent1(7'b1000_111),  // 0 - F
		.out(w_mux0_mux1)
	);
	
	Mux2x1_7bits MUX1 (
		.sel(sel),
		.ent0(w_mux0_mux1), //1 - L
		.ent1(7'b0001_110), //0
		.out(hex5)
	);
	
	
	//HEX4
	wire [6:0] w_dec0_mux3;
	wire [6:0] w_mux2_mux3;
	
	Dec7seg DEC0 (
		.G({2'b00, setup[7:6]}),
		.O(w_dec0_mux3)
	);
	
	Mux2x1_7bits MUX2 (
		.sel(win),
		.ent0(7'b1011_011), //1 - S
		.ent1(7'b1100_111), //0 - P
		.out(w_mux2_mux3)
	);
	
	Mux2x1_7bits MUX3 (
		.sel(sel),
		.ent0(w_mux2_mux3),
		.ent1(w_dec0_mux3),
		.out(hex4)
	);
	
	
	//HEX3
	wire [6:0] w_mux4_mux5;
	
	Mux2x1_7bits MUX4 (
		.sel(win),
		.ent0(7'b1001_111), //1 - E
		.ent1(7'b1111_011), //0 - g
		.out(w_mux4_mux5)
	);
	
	Mux2x1_7bits MUX5 (
		.sel(sel),
		.ent0(w_mux4_mux5),
		.ent1(7'b0001_111), //0 - t
		.out(hex3)
	);
	
	
	//HEX2
	wire [6:0] w_dec1_mux7;
	wire [6:0] w_mux6_mux7;
	
	Dec7seg DEC1 (
		.G(w_tempo), // TODO
		.O(w_dec1_mux7)
	);
	
	Mux2x1_7bits MUX6 (
		.sel(win),
		.ent0(7'b1011_011), //1 - r
		.ent1(7'b1100_111), //0 - A
		.out(w_mux6_mux7)
	);
	
	Mux2x1_7bits MUX7 (
		.sel(sel),
		.ent0(w_mux6_mux7), //1
		.ent1(w_dec1_mux7), //0
		.out(hex2)
	);
	
	
	//HEX1
	wire [7:0] points; //TODO
	wire [6:0] w_dec2_mux8;
	
	Dec7seg DEC2 (
		.G(points[7:4]),
		.O(w_dec2_mux8)
	);
	
	Mux2x1_7bits MUX8 (
		.sel(sel),
		.ent0(w_dec2_mux8), //1
		.ent1(7'b1011_011), //0 - r
		.out(hex1)
	);
	
	
	//HEX0
	wire [6:0] w_dec3_mux9;
	wire [6:0] w_dec4_mux9;
	
	Dec7seg DEC3 (
		.G(round),
		.O(w_dec3_mux9)
	);
	
	Dec7seg DEC4 (
		.G(points[3:0]),
		.O(w_dec4_mux9)
	);
	
	Mux2x1_7bits MUX9 (
		.sel(sel),
		.ent0(w_dec4_mux9), //1
		.ent1(w_dec3_mux9), //0 
		.out(hex0)
	);

endmodule
