/*
Responsável pelo processamento de dados e sinais de controle em um sistema digital. 
Ele interage com diversos componentes internos e externos para realizar suas funções.
Entradas:
	- clock_50	(wire - 1)	sinal de clock
	- key			(wire - 4)	vetor de teclas de entrada
	- switch		(wire - 8)	vetor de switches de entrada
	- r1			(wire - 1)	sinal de controle 1 (reset)
	- r2			(wire - 1)	sinal de controle 2 (reset)
	- e1			(wire - 1)	sinal de controle 3 (enable)
	- e2			(wire - 1)	sinal de controle 4 (enable)
	- e3			(wire - 1)	sinal de controle 5 (enable)
	- e4			(wire - 1)	sinal de controle 6 (enable)
	- sel			(wire - 1)	sinal de seleção
Saidas:
	- hex0		(wire - 7)	displays de 7 segmentos
	- hex1		(wire - 7)	displays de 7 segmentos
	- hex2		(wire - 7) 	displays de 7 segmentos
	- hex3		(wire - 7)	displays de 7 segmentos
	- hex4		(wire - 7)	displays de 7 segmentos
	- hex5		(wire - 7)	displays de 7 segmentos
	- leds		(wire - 8)	vetor de leds de saida
	- end_fpga	(wire - 1)	sinal indicando o final da operação da FPGA
	- end_user	(wire - 1)	sinal indicando o final da operação do usuário
	- end_time	(wire - 1)	sinal indicando o final do tempo de jogo
	- win			(wire - 1)	sinal indicando a vitória
	- match		(wire - 1)	sinal indicando se houve um acerto no jogo
*/

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
	//TODOs:
	//	4. rever a lógica de todos os módulos
	//	5. rever a lista de sensibilidade de todos os módulos
	//	7. rever todos os comentários
	//	10. rever as igualdades com o tamanho de cada parametro
	//	11. ver como iniciar parametros que só são atualizados em if's
	// 12. rever todas as ligações
	// 13. ver variaveis que não estao sendo utilizadas (por exemplo clk)
	// 15. adicionar comentários aqui no datapath sobre o que é cada variavel nos módulos
	
	//localparams
	localparam p_key = 4;
	localparam p_switch = 8;
	localparam p_hex = 7;
	localparam p_leds = 8;

	// Input Port(s)
	input 								clock_50;
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
	output wire [p_leds - 1:0]		leds = {out_fpga[63:60], key[3:0]};
	output wire 						end_fpga;
	output wire 						end_user;
	output wire 						end_time;
	output wire 						win;
	output wire 						match;
	
	// Sinais internos
	wire c025hz, c05hz, c1hz, c2hz;
	wire clkhz;
	wire [3:0] w_tempo;
	wire [3:0] round;
	wire[3:0] seqFPGA_in, seqFPGA_out;
	wire[3:0] seq1, seq2, seq3, seq4;
	wire [3:0] nbtn;
	wire [7:0] points;
	wire [7:0] setup;
	wire [63:0] out_fpga;
	wire [3:0] out_fpga_significativos;
	wire [63:0] out_user;
	wire [6:0] w_mux0_mux1;
	wire [6:0] w_dec0_mux3;
	wire [6:0] w_mux2_mux3;
	wire [6:0] w_mux4_mux5;
	wire [6:0] w_dec1_mux7;
	wire [6:0] w_mux6_mux7;
	wire [6:0] w_dec2_mux8;
	wire [6:0] w_dec3_mux9;
	wire [6:0] w_dec4_mux9;
	
	// Portas lógicas
	wire nbtn_or = nbtn[0] | nbtn[1] | nbtn[2] | nbtn[3];
	wire e2_and_ntnb = e2 & nbtn_or;
	assign match = (out_fpga == out_user) & end_user? 1'b1:1'b0;
	
	
	/*   MÓDULOS   *******************************************************************************************************************************************/
	
	
	/*   FSM CLOCK   */
	FSM_clock FSM (
		.reset(r1),
		.clock_50(clock_50),
		.c025hz(c025hz),
		.c05hz(c05hz),
		.c1hz(c1hz),
		.c2hz(c2hz)
	);
	
	Mux4x1_4bits MUX10 ( // Seta no clkhz o level (velocidade de clock) que o FPGA vai rodar
		.sel(setup[7:6]), //setup[7:6] = level
		.ent0(c025hz),
		.ent1(c05hz),
		.ent2(c1hz),
		.ent3(c2hz),
		.out(clkhz)
	);
	
	
	/*   BUTTON SYNC   */
	ButtonSync BTN(
		.CLK(clock_50),
		.KEY0(key[0]),
		.KEY1(key[1]),
		.KEY2(key[2]),
		.KEY3(key[3]),
		.BTN0(nbtn[0]),
		.BTN1(nbtn[1]),
		.BTN2(nbtn[2]),
		.BTN3(nbtn[3])
	);
	
	
	/*   REG USER   */
	Reg_user R_USER (
		.clk(clock_50),
		.R(r2),
		.E(e2_and_ntnb),
		.data({nbtn, out_user[63:4]}),
		.q(out_user)
	);
	
	
	/*   REG SETUP   */
	Reg_setup R_SETUP (
		.clk(clock_50),
		.R(r1),
		.E(e1),
		.sw(switch),
		.setup(setup)
	);
	
	
	/*   COUNTER TIME   */
	Counter_time CT (
		.clkt(clock_50),
		.R(r2),
		.E(e2),
		.tempo(w_tempo),
		.end_time(end_time)
	);
	
	
	/*   COUNTER ROUND   */
	Counter_round CR (
		.clk(clock_50),
		.R(r1),
		.E(e4),
		.data(setup[3:0]), //setup[3:0] quantidade de rodadas máxima
		.tc(win),
		.round(round)
	);
	
	
	/*   COUNTER USER   */
	Counter_user C_USER (
		.clk(clock_50),
		.R(r2),
		.E(e2_and_ntnb),
		.data(round),
		.tc(end_user)
	);
	
	
	/*   COUNTER FPGA   */
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
		.sel(setup[5:4]), //setup[5:4] = mapa
		.ent0(seq1),
		.ent1(seq2),
		.ent2(seq3),
		.ent3(seq4),
		.out(seqFPGA_out)
	);
	
	
	/*   REG FPGA   */
	Reg_fgpa R_FPGA ( //monta a sequência dos leds
		.clk(clkhz),
		.R(r2),
		.E(e3),
		.data({seqFPGA_out, out_fpga[63:4]}),  //TODO VER COM O PROF. não limpamos o out_fpga em momento nenhum?
		.q(out_fpga),
		.q3()//out_fpga_significativos
	);
	
	
	/*   LOGICA   */
	Logica LG (
		.round(round),
		.reg_setup_level(setup[7:6]), //setup[7:6] = level
		.reg_setup_mapa(setup[5:4]), //setup[5:4] = mapa
		.points(points)
	);
	
	
	/*   HEX5   */
	Mux2x1_7bits MUX0 (
		.sel(win),
		.ent0(7'b1000_111),  // F
		.ent1(7'b1011_011),  // U
		.out(w_mux0_mux1)
	);
	
	Mux2x1_7bits MUX1 (
		.sel(sel),
		.ent0(7'b0001_110), // L 
		.ent1(w_mux0_mux1), // F ou U
		.out(hex5)
	);
	
	
	/*   HEX4   */
	Dec7seg DEC0 (   //entra o level atual em hexadec e saí o level atual em binário
		.G({2'b00, setup[7:6]}), //setup[7:6] = level
		.O(w_dec0_mux3)
	);
	
	Mux2x1_7bits MUX2 (
		.sel(win),
		.ent0(7'b1100_111), // P
		.ent1(7'b1011_011), // S
		.out(w_mux2_mux3)
	);
	
	Mux2x1_7bits MUX3 (
		.sel(sel),
		.ent0(w_dec0_mux3), //level atual
		.ent1(w_mux2_mux3),
		.out(hex4)
	);
	
	
	/*   HEX3   */
	Mux2x1_7bits MUX4 (
		.sel(win),
		.ent0(7'b1111_011), // g
		.ent1(7'b1001_111), // E
		.out(w_mux4_mux5)
	);
	
	Mux2x1_7bits MUX5 (
		.sel(sel),
		.ent0(7'b0001_111), // t
		.ent1(w_mux4_mux5),
		.out(hex3)
	);
	
	
	/*   HEX2   */  //TODO VER COM O PROF. no diagrama tem um ground mas as conexoes me parecem ok????
	Dec7seg DEC1 (   //entra o tempo máximo atual em hexadec e saí o tempo máximo atual em binário
		.G(w_tempo),
		.O(w_dec1_mux7)
	);
	
	Mux2x1_7bits MUX6 (
		.sel(win),
		.ent0(7'b1100_111), // A
		.ent1(7'b1011_011), // r
		.out(w_mux6_mux7)
	);
	
	Mux2x1_7bits MUX7 (
		.sel(sel),
		.ent0(w_dec1_mux7), //tempo máximo de jogo
		.ent1(w_mux6_mux7),
		.out(hex2)
	);
	
	
	/*   HEX1   */
	Dec7seg DEC2 (   //??
		.G(points[7:4]),
		.O(w_dec2_mux8)
	);
	
	Mux2x1_7bits MUX8 (
		.sel(sel),
		.ent0(7'b1011_011), // r
		.ent1(w_dec2_mux8),
		.out(hex1)
	);
	
	
	/*   HEX0   */
	Dec7seg DEC3 (  //entra o valor da rodada do jogo atual em hexadec e saí o valor da rodada do jogo atual em binário
		.G(round),
		.O(w_dec3_mux9)
	);
	
	Dec7seg DEC4 (  //??
		.G(points[3:0]),
		.O(w_dec4_mux9)
	);
	
	Mux2x1_7bits MUX9 (
		.sel(sel),
		.ent0(w_dec3_mux9), //rodada atual
		.ent1(w_dec4_mux9),
		.out(hex0)
	);

endmodule
