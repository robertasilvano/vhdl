/*
Incrementa o endereço que será inserido na ROM para construir a sequência correta na rodada.
Entradas:
	- clk (wire - 1): clock
	- R (wire - 1): reset
	- E (wire - 1): enable
	- data (wire - 4): define o limite da contagem (variavel round)
Saídas:
	- tc (reg - 1): sinal de carry terminal, é 1 quando a sequência atinge seu limite de contagem
	- SEQFPGA (reg - 4): vetor de lógica, será o endereço inserido na ROM
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
	localparam p_total = 4;
	
	// Input Port(s)
	input wire 					clk;
	input wire 					R;
	input wire 					E;
	input wire [p_data-1:0] data;
	
	// Output Port(s)
	output reg 						tc;
	output reg [p_SEQFPGA-1:0] SEQFPGA;
	
	// Sinais internos
	reg [p_total - 1:0] total; //armazena o valor atual do contador. o máximo é 1111 (15)
	
	always @(posedge clk or posedge R or posedge E or posedge total or posedge data)  //não precisa do posedge?
	begin
		if (R == 1'b1)
			begin
				total <= 4'b0;
				tc <= 1'b0;
			end
		else
			begin
				if (E == 1'b1)
					begin
						total <= total + 1'b1;
						if (data == total)
							begin
								tc <= 1'b1; //limite atingido
								total <= 4'b0;
							end
					end
			end
		SEQFPGA <= total;
	end
	
endmodule
