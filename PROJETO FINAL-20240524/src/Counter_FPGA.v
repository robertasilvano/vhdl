/*
	Incrementa o endereço que será inserido na ROM para construir a sequência correta na rodada.
*/

module Counter_FPGA(
	//entrada de dados
	clk,
	R,
	E,
	data,
	
	// saida de dados
	tc,
	SEQFPGA
);

	//localparams
	localparam p_data = 4;
	localparam p_SEQFPGA = 4;
	
	// Input Port(s)
	input wire 					clk; //sinal de clock
	input wire 					R;  //sinal de reset
	input wire 					E;  //sinal de enable
	input wire [p_data-1:0] data;  //define o limite de contagem (round no datapath)
	
	// Output Port(s)
	output reg 						tc;  //sinal de carry terminal. é 1 quando a sequência atinge seu limite de contagem
	output reg [p_SEQFPGA-1:0] SEQFPGA; //vetor de lógica, será o endereço inserido na ROM
	
	always @(posedge clk or posedge R or posedge E or posedge tc or posedge data)  //não precisa do posedge?
	begin
		if (R == 1'b1)
			begin
				//data <= 4'b0; ???
				tc <= 1'b0;
			end
		else
			begin
				if (E == 1'b1)
					begin
						tc <= tc + 1'b1;
						if (data == tc)
							begin
								tc <= 1'b1; //limite atingido
							end
						// TODO a espec ta com erro. o else aqui não faz sentido. qual é a variavel 'total'????
					end
			end
		SEQFPGA <= tc;
	end
	
endmodule
