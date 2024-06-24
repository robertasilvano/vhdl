module Mux4x1(
level,
cl1,
cl2,
cl3,
cl4,
clkhz
);

	localparam p_level = 2;

	input wire [p_level - 1:0] 	level;
	input wire						cl1;
	input wire						cl2;
	input wire						cl3;
	input wire						cl4;
	input wire						clkhz;
endmodule
