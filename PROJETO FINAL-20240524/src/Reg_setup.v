module Reg_setup(
	//entrada de dados
	clk,
	R,
	E,
	sw,
	
	//saída de dados
	setup
);

	//localparams
	localparam p_sw = 8;
	localparam p_setup = 8;

	// Input Port(s)
	input wire 						clk;
	input wire 						R;
	input wire 						E;
	input wire [p_sw - 1:0] 	sw;
	
	// Output Port(s)
	output wire [p_setup - 1:0] setup; //wire ou reg?
endmodule
