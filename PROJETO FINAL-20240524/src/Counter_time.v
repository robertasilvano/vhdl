/*
Responsável por realizar uma contagem progressiva do tempo, de 0 até 9.
Entradas:
	- clkt 		(wire - 1) 	sinal de clock para sincronização
	- R 			(wire - 1) 	sinal de reset
	- E 			(wire - 1) 	habilita a contagem
Saidas:
	- tempo 		(reg - 4) 	representa o valor atual do contador
	- end_time 	(reg - 1) 	indica que o contador chegou a 9
*/

module Counter_time(
	
	//entrada de dados
	clkt,
	R,
	E,
	
	//saida de dados
	tempo,
	
	//saida de status
	end_time
);

	//localparams
	localparam p_tempo = 4;

	// Input Port(s)
	input wire 						clkt;  //sinal de clock para sincronização
	input wire 						R;  //sinal de reset
	input wire 						E;  //habilita a contagem
	
	// Output Port(s)
	output reg [p_tempo - 1:0] tempo;  //representa o valor atual do contador
	output reg 						end_time;  //indica quando o contador chega a 9
	
	
	// Lógica
	always @(posedge clkt or posedge R)
	begin
		if (R == 1'b1)
			begin
				tempo <= 4'b0000;
				end_time <= 1'b0;
			end
		else
			begin
				if (E == 1'b1)
					begin
						tempo <= tempo + 1'b1;
						end_time <= 1'b0;
						if (tempo == 4'b1001)
							begin
								tempo <= 4'b0000;
								end_time <= 1'b1;
							end
					end
			end
	end
	
endmodule
