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
	input wire		clock;  //aqui tem wire?
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
			state <= next_state;
	end

	// Lógica combinacional dos estados
	always @(end_fpga or end_user or end_time or win or match)
	begin
		next_state = state;  //conferir, ta estranho
		case (state)
			init:  //Define o proximo estado como setup.
				begin
					next_state = setup;
				end
			setup:  //Passa para o estado Play FPGA se enter for ativado
				begin
					if (enter == 1'b1) next_state = play_FPGA;
				end
			play_FPGA: //Passa para o estado Play User quando end FPGA é ativado
				begin
					if (end_fpga == 1'b1) next_state = play_user;
				end
			play_user:  //Passa para Result se o tempo acabar ou para Check se end User for ativado.
				begin
					if (end_time == 1'b1) next_state = result;
					else if (end_user == 1'b1) next_state = check;
				end
			check:  //Passa para Next Round se houve uma correspondencia ou para Result se não houve correspondencia.
				begin
					if (match == 1'b1) next_state = next_round;
					else next_state = result;
				end
			next_round:  //Volta para Play FPGA se nao houve vitoria, ou vai para Result se houve vitoria.
				begin
					if (win) next_state = result;  // acho que precisa de um == 1'b1
					else next_state = play_FPGA; // confirmar com o prof
				end
			result:  //Volta pro estado inicial
				begin
					next_state = init;  // confirmar com o prof
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
