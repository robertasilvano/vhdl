`timescale 1ns/100ps

module Topo_tb;

reg r_clock_50;
reg [3:0] r_key;
reg [9:0] r_sw;

Topo U0_TB(
	.clock_50(r_clock_50),		//entrada
	.key(r_key),			//entrada
	.sw(r_sw),			//entrada
	.ledr(),			//saida
	.hex0(),			//saida
	.hex1(),			//saida
	.hex2(),			//saida
	.hex3(),			//saida
	.hex4(),			//saida
	.hex5()				//saida
);

initial
	begin
		r_clock_50 = 0;
	end

always #10 r_clock_50 = ~r_clock_50;

initial
	begin
		r_sw[1] = 1;
		#30;
		r_sw[1] = 0;

		#2000;
		$stop;
	end

endmodule
