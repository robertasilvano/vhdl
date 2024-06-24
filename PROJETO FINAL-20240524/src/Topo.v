/*
	Topo.v
	Roberta Silvano - 2024/05/24
	
	Descrição: Arquivo Topo.v é o arquivo principal.
	Revisão:

*/

module Topo(
	clock_50,	//entrada
	key,			//entrada
	sw,			//entrada
	ledr,			//saida
	hex0,			//saida
	hex1,			//saida
	hex2,			//saida
	hex3,			//saida
	hex4,			//saida
	hex5			//saida
);

	localparam p_key	= 4;
	localparam p_sw	= 10;
	localparam p_ledr = 10;
	localparam p_hex 	= 7;
	
	// Input Port(s)
	input 							clock_50;
	input wire  [p_key - 1:0] 	key;
	input wire  [p_sw  - 1:0] 	sw;

	// Output Port(s)
	output wire [p_ledr - 1:0] ledr;
	output wire [p_hex  - 1:0] hex0;
	output wire [p_hex  - 1:0] hex1;
	output wire [p_hex  - 1:0] hex2;
	output wire [p_hex  - 1:0] hex3;
	output wire [p_hex  - 1:0] hex4;
	output wire [p_hex  - 1:0] hex5;
	
	wire w_r1, w_r2, w_e1, w_e2, w_e3, w_e4, w_sel, w_end_fpga, w_end_user, w_endtime, w_win, w_match;  //maracutaia 2 pra ligar com o datapath e o controller
	
	Datapath U0_DP (
	
		//entrada de dados
		.clock_50(clock_50),
		.key(key),		
		.switch(sw[9:2]),	
		
		//entrada de comandos
		.r1(w_r1),		
		.r2(w_r2),		
		.e1(w_e1),		
		.e2(w_e2),		
		.e3(w_e3),		
		.e4(w_e4),		
		.sel(w_sel),
		
		// saida de dados
		.hex0(hex0),		
		.hex1(hex1),		
		.hex2(hex2),		
		.hex3(hex3),		
		.hex4(hex4),		
		.hex5(hex5),		
		.leds(),	// TODO
		
		// saida de status
		.end_fpga(w_end_fpga),
		.end_user(w_end_user),
		.end_time(w_endtime),
		.win(w_win),		
		.match(w_match)
		
	);
	
	Controle U1_FSM(
		
		// entrada de dados
		.clock_50(clock_50),
		.enter(sw[0]),
		.reset(sw[1]),
		
		// entrada de status
		.end_fpga(w_end_fpga),
		.end_user(w_end_user),
		.end_time(w_endtime),
		.win(w_win),
		.match(w_match),
		
		// saida comandos
		.r1(w_r1),
		.r2(w_r2),
		.e1(w_e1),
		.e2(w_e2),
		.e3(w_e3),
		.e4(w_e4),
		.sel(w_sel)
		
	);
	

endmodule
