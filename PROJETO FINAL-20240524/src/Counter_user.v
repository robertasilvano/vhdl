/*
Incrementar uma sequência de números conforme o usuário avança nas rodadas de um jogo.
Verifica se o limite da contagem foi atingido, e sinaliza quando o limite é alcançado.
Entradas:
	- clk 	(wire - 1) 	sinal de clock que sincroniza as operações do contador
	- R 		(wire - 1) 	sinal de reset. quando ativado (1), o contador é reinicializado para zero. assíncrono.
	- E 		(wire - 1) 	enable. quando ativado (1), permite que o contador incremente seu valor.
	- data 	(wire - 4) 	define o limite de contagem. quando o valor do contador atinge este limite, tc é ativado.
Saídas:
	- tc 		(reg - 1) 	sinal de término de contagem. é ativado (1) quando o contador atinge o limite definido por data.
*/

module Counter_user(
	//entrada de dados
	clk,
	R,
	E,
	data,
	
	//saida de dados
	tc
);

	//localparams
	localparam p_data = 4;
	localparam p_total = 4;
	
	// Input Port(s)
	input 	 						clk;
	input wire 						R;
	input wire 						E;
	input wire [p_data - 1:0] 	data;

	// Output Port(s)
	output reg tc;
	
	// Sinais internos
	reg [p_total - 1:0] total; //armazena o valor atual do contador. o máximo é 1111 (15)
	
	always @ (posedge R or posedge clk)
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
							if (total == data)
								begin
									tc <= 1'b1;
									total <= 4'b0;
								end
						end
				end
		end

endmodule
