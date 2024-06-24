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
	output wire 	r1;
	output wire 	r2;
	output wire 	e1;
	output wire 	e2;
	output wire 	e3;
	output wire 	e4;
	output wire 	sel;
	
	assign r2 = reset;  //maracutaia só pra conseguir testar

endmodule
