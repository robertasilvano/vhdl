module Controle(
	// entrada de dados
	clock_50,
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

	//TODO: NÃO ENTENDI A TABELA 4 DO ARQUIVO "Top.pdf". REVER.
	
	// Input Port(s)
	input 			clock_50;
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
	
	//assign r2 = reset;  //maracutaia só pra conseguir testar

localparam N_STADOS = 3;
localparam [2:0]
Init = 3'b000, 
Setup = 3'b001, 
Play_FPGA = 3'b010, 
Play_User = 3'b011, 
Check = 3'b100, 
Next_Round = 3'b101, 
Result = 3'b110; 

reg [N_STADOS-1:0]state
next_state;

// Processo sequencial
// Armazena estado ATUAL
always @(posedge clock_50)
begin
	if (reset)
		state <= Init;
	else 
		state <= next_state;
end


// LOGICA COMBINACIONAL DOS ESTADOS
always @(end_fpga or end_user or end_time or win or match or state) 
begin	
	next_state = state;
	case (state)
		Init: 
		begin
			next_state = Setup;
		end
		Setup: 
			if (enter == 1'b1) next_state = Play_FPGA;
		Play_FPGA: 
			if (end_fpga == 1'b1) next_state = Play_User;
		Play_User: 
		begin
			if (end_time == 1'b1) next_state = Result;
			else if (end_user = 1'b1 )next_state = Check;
		end
		Check:
		begin 
		  	if (match == 1'b1) next_state = Next_Round;
			else next_state =  Result;
		end
		Next_Round: 
		begin
			if (win) next_state = Result;
			else next_state = Play_FPGA
		end
		Result: next_state = Init;

	endcase
end 
// FIM LOGICA COMBINACIONAL DE ESTADOS

// LOGICA COMBINACIONAL CONTROLE DAS SAIDAS
always @(state) begin
	r1 = 1'b1; r2 = 1'b1;
	e1 = 1'b0; e2 = 1'b0; e3 = 1'b0; e4 = 1'b0;
	sel = 1'b0;
	case (state)
		Init: 
			begin
			r1 = 1'b1; r2 = 1'b1;
			end
		Setup: e1 = 1'b1;
		Play_FPGA: e3 = 1'b1;
		Play_User: e2 = 1'b1; 
		Check: e4 = 1'b1;
		Next_Round: r2 = 1'b1;
		Result: sel = 1'b1;

	endcase
end
	
endmodule
