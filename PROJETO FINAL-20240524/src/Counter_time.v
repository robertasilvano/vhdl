module Counter_time(
clkt,
R,
E,
tempo,
end_time
);

	localparam p_tempo = 4;

	input wire 						clkt;
	input wire 						R;
	input wire 						E;
	output reg [p_tempo - 1:0] tempo;
	output reg 						end_time;
	
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
								end_time <= 1'b0;
							end
					end
			end
	end
	
endmodule