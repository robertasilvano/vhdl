module Controle(
clock_50,
enter,
reset,
end_fpga,
end_user,
end_time,
win,
match,
r1,
r2,
e1,
e2,
e3,
e4,
sel
);
	
	input 			clock_50;
	input wire 		enter;
	input wire 		reset;
	input wire 		end_fpga;
	input wire 		end_user;
	input wire 		end_time;
	input wire 		win;
	input wire 		match;
	output wire 	r1;
	output wire 	r2;
	output wire 	e1;
	output wire 	e2;
	output wire 	e3;
	output wire 	e4;
	output wire 	sel;
	
	assign r2 = reset;  //maracutaia só pra conseguir testar

endmodule
