module alu (input [3:0] A, B,input [2:0] sel, output reg [3:0] result, output reg carry);
always @(*) begin
    case(sel)
        3'b000: {carry, result} = A + B;  
        3'b001: {carry, result} = A - B;  
        3'b010: begin
                    result = A & B;        
                    carry = 0;
                end
        3'b011: begin
                    result = A | B;        
                    carry = 0;
                end
        3'b100: begin
                    result = ~A;           
                    carry = 0;
                end
        default: begin
                    result = 4'b0000;
                    carry = 0;
                end
    endcase
end

endmodule
