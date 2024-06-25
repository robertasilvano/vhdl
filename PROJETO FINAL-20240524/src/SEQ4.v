module SEQ4(
    input [3:0] address,
    output reg [3:0] output_reg
);


// TODO ver com o prof, porque o nome aqui ta SEQ1, mas esse seria o 10 (ou seja, 3 (em decimal)) 
always @(address) begin
    case (address)
        4'b0000: output_reg = 4'b0001;
        4'b0001: output_reg = 4'b1000;
        4'b0010: output_reg = 4'b0100;
        4'b0011: output_reg = 4'b1000;
        4'b0100: output_reg = 4'b0001;
        4'b0101: output_reg = 4'b0010;
        4'b0110: output_reg = 4'b0100;
        4'b0111: output_reg = 4'b1000;
        4'b1000: output_reg = 4'b0001;
        4'b1001: output_reg = 4'b0010;
        4'b1010: output_reg = 4'b1000;
        4'b1011: output_reg = 4'b0010;
        4'b1100: output_reg = 4'b0001;
        4'b1101: output_reg = 4'b1000;
        4'b1110: output_reg = 4'b0100;
        4'b1111: output_reg = 4'b0010;
        default: output_reg = 4'b0000;  // Default case to handle unexpected values
    endcase
end

endmodule