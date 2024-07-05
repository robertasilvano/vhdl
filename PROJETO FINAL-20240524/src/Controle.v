/*
Gerencia os estados do sistema e controla as saídas de acordo com as entradas recebidas. 
O módulo Controle coordena diferentes fases do jogo e as respostas do sistema a diferentes eventos. 
Possui os estados ‘Init‘, ‘Setup‘, ‘Play FPGA‘, ‘Play User‘, ‘Check‘, ‘Next Round‘ e ‘Result‘. 
Cada estado configura as saídas de acordo com a fase do jogo em que se encontra e com as entradas recebidas, como sinais de finalização de jogadas, tempo, vitória, etc.
Entradas:
	- clock		(input - 1)		sinal de clock
	- enter		(wire - 1)		sinal de entrada para iniciar a operação
	- reset		(wire - 1)		sinal de reset para reiniciar o estado
	- end_fpga	(wire - 1)		sinal indicando o final da operação da FPGA
	- end_user	(wire - 1)		sinal indicando o final da operação do usuário
	- end_time	(wire - 1)		sinal indicando o final do tempo de jogo
	- win			(wire - 1)		sinal indicando a vitória
	- match		(wire - 1)		sinal indicando se houve um acerto no jogo
Saidas:
	- r1			(reg - 1)		sinal de controle 1 (reset)
	- r2			(reg - 1)		sinal de controle 2 (reset)
	- e1			(reg - 1)		sinal de controle 3 (enable)
	- e2			(reg - 1)		sinal de controle 4 (enable)
	- e3			(reg - 1)		sinal de controle 5 (enable)
	- e4			(reg - 1)		sinal de controle 6 (enable)
	- sel			(reg - 1)		sinal de seleção
*/

module Controle(
	// entrada de dados
	clock,
	enter,
	reset,
	
	// entrada de status
	end_fpga,
	end_user,
	end_time,
	win,
	match,
	
	// saida comandos
	r1,
	r2,
	e1,
	e2,
	e3,
	e4,
	sel
);
	
	// Input Port(s)
	input 			clock;
	input wire 		enter;
	input wire 		reset;
	input wire 		end_fpga;
	input wire 		end_user;
	input wire 		end_time;
	input wire 		win;
	input wire 		match;

  // Output Port(s)
	output reg 		r1, r2;
	output reg 		e1, e2, e3, e4;
	output reg 		sel;
	
	//localparams
	localparam p_state = 3;
	localparam [p_state-1:0] init = 3'b000, setup = 3'b001, play_FPGA = 3'b010, play_user = 3'b011, check = 3'b100, next_round = 3'b101, result = 3'b110;
	
	//reg
	reg [p_state-1:0] state, next_state;
	
	// Processo Sequencial, armazena o estato atual
	always @(posedge clock)
	begin
		if (reset)
			state <= init;
		else
			state <= next_state; // TODO VER COM O PROF. Porque isso ta aqui? os states mudam é no always de baixo, e não aqui.
	end

	// Lógica combinacional dos estados
	always @(end_fpga or end_user or end_time or win or match or state or enter)
	begin
		next_state = state;
		case (state)
			init:  //Define o proximo estado como setup.
				/*
					ativar os comandos de reset (R1 e R2)
					HEX5 mostra L e HEX4 o level escolhido
					HEX3 mostra t e HEX2 o tempo máximo de jogo
					HEX1 mostra r e HEX0 o valor da rodada
					passa para setup
				*/
				begin
					next_state = setup;
				end
			setup:  //Passa para o estado Play FPGA se enter for ativado
				/*
				o user deve escolher:
					1 das 4 velocidades de jogo com os switches 9 e 8
					1 das 4 sequências possiveis de jogo com os switches 7 e 6
					Número máximo de iterações por sequência com os switches 5 e 2
				As frequências para os quatro níveis de jogo serã 0.25Hz, 0.5Hz, 1Hz, 2Hz.
				O nível de jogo será mostrado no HEX4
				Damos inicio ao jogo ativando a entrada enter (SW[0]) e passando para o estado play_FPGA
				*/
				begin
					if (enter == 1'b1) next_state = play_FPGA;
				end
			play_FPGA: //Passa para o estado Play User quando end FPGA é ativado
				/*
				É ativada a sequênia selecionada, que será mostrada nos LEDR[3:0] ???? não entendi
				A sequência possui 16 linhas de atribuição de 4-bits
				Um exemplo de sequência é o SEQ1.v
				Na primeira rodada é apresentada uma linha da sequência, na segunda são apresentadas duas, e assim sucessivamente
				O jogo passa pro proximo estado quando estiver ativo o end_fpga
				*/
				begin
					if (end_fpga == 1'b1) next_state = play_user;
				end
			play_user:  //Passa para Result se o tempo acabar ou para Check se end User for ativado.
				/*
				O usuário deve indicar com os botões KEY a sequência mostrada no estado anterior
				HEX2 mostrara uma contagem ascendente de 0 a 9 com frequência de 1Hz
				Se o tempo acabar o sinal end_time é verdadeiro e o jogo passa para result
				Se o user acabar de inserir sua sequencia antes de o tempo acabar, o sinal end_user é verdadeiro e o jogo passa para check
				*/
				begin
					if (end_time == 1'b1) next_state = result;
					else if (end_user == 1'b1) next_state = check;
				end
			check:  //Passa para Next Round se houve uma correspondencia ou para Result se não houve correspondencia.
				/*
				Nessa etapa faz a verificação se o usuário acertou na sequência inserida
				Se estiver correto, o sinal de match é verdadeiro e o jogo passa para next_round
				Se o usuário errou, passa para result
				Nesse estado é habilitado a contagem da rodada, que é mostrada no HEX0	
				*/
				begin
					if (match == 1'b1) next_state = next_round;
					else next_state = result;
				end
			next_round:  //Volta para Play FPGA se nao houve vitoria, ou vai para Result se houve vitoria.
				/*
				Avalia o sinal de win
				Se positivo, o jogo passa para result
				Se negativo, passa para play fpga
				É resetado as contagens das sequências do fpga e do user
				*/
				begin
					if (win == 1'b1) next_state = result;
					else next_state = play_FPGA;
				end
			result:  //Volta pro estado inicial
				/*
				É mostrada a pontuação final em hexadecimal no HEX1 E HEX0
				A lógica de pontuação para um nivel j é: 64*j*4*rodadas+i
				HEX5, HEX4, HEX3 E HEX2 mostrarão FPGA ou USER indicando quem ganhou o jogo
				Ao pressionar reset, volta ao estado de init
				*/
				begin
					if (reset) next_state = init;
				end
			default:
				begin
					next_state = init;
				end
		endcase
	end


	// Lógica combinacional das saídas
	always @(state) 
	begin
		// Zera todo mundo pra inicializar as variáveis
		r1 = 1'b0; r2 = 1'b0;
		e1 = 1'b0; e2 = 1'b0; e3 = 1'b0; e4 = 1'b0;
		sel = 1'b0;
		
		case (state)
			init:
				begin
					r1 = 1'b1;
					r2 = 1'b1;
				end
			setup:
				begin
					e1 = 1'b1;
				end
			play_FPGA:
				begin
					e3 = 1'b1;
				end
			play_user:
				begin
					e2 = 1'b1;
				end
			check:
				begin
					e4 = 1'b1;
				end
			next_round:
				begin
					r2 = 1'b1;
				end
			result:
				begin
					sel = 1'b1;
				end
		endcase
	end
endmodule

