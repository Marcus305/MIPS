module alu (
  input wire [31:0] operandA,
  input wire [31:0] operandB,
  input wire [3:0] operation,
  output reg [31:0] result,
  output reg zero 
);

  always @* begin
    case (operation)
      4'b0000: result = operandA & operandB;   // and
      4'b0001: result = operandA | operandB;   // or
      4'b0010: result = operandA + operandB;   // add
      4'b0110: result = operandA - operandB;   // sub
      4'b0111: result = (operandA < operandB) ? 32'b1 : 32'b0;   // slt
		4'b1100: result = ~ (operandA | operandB); //nor
      default: result = 32'b0;                  
    endcase

    zero = (result == 32'b0); // zero verification
  end

endmodule
