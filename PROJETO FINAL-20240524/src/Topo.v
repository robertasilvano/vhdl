/*
Módulo de hardware descrito em Verilog que integra diversos componentes do projeto para realizar o controle e o processamento de dados. 
A estrutura principal consiste em dois componentes: o Controle e o Datapath.
Entradas:
	- clock_50 	(input - 1) 	sinal de clock de 50MHz
	- key 		(wire - 4)  	vetor de teclas de entrada
	- sw			(wire - 10) 	vetor de switches de entrada
Saídas:
	- ledr		(wire - 8)  	vetor de leds de saida
	- hexs 		(wire - 7)  	displays de 7 segmentos
*/

module Topo(
	
	// entrada de dados
	clock_50,
	key,
	sw,
	
	// saida de dados
	ledr,
	hex0,
	hex1,
	hex2,
	hex3,
	hex4,
	hex5
	
);

	//localparams
	localparam p_key	= 4;
	localparam p_sw	= 10;
	localparam p_ledr = 8;
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
	
	// Sinais internos
	wire w_r1, w_r2, w_e1, w_e2, w_e3, w_e4, w_sel; //saem do controle e entram no datapath
	wire w_end_fpga, w_end_user, w_endtime, w_win, w_match; //saem do datapath e entram no controle
	
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
		.leds(ledr),
		
		// saida de status
		.end_fpga(w_end_fpga),
		.end_user(w_end_user),
		.end_time(w_endtime),
		.win(w_win),		
		.match(w_match)
		
	);
	
	Controle U1_FSM(
		
		// entrada de dados
		.clock(clock_50),
		.enter(sw[0]), //iniciar o jogo
		.reset(sw[1]), //reset para reiniciar tudo
		
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
