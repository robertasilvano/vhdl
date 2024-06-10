module Mux2x1_7bits(
sel,
ent0,
ent1,
out
);

	localparam p_ent = 7;
	localparam p_out = 7;

	input wire sel;
	input wire [p_ent - 1:0] ent0;
	input wire [p_ent - 1:0] ent1;
	input wire [p_out - 1:0] out;

endmodule
