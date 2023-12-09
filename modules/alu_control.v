module alu_control (
  input wire [1:0] opAlu,
  input [5:0] funct,
  output reg [3:0] op
);

  always @(*) begin
    case (opAlu)
      2'b00: op = 4'b0010;
      2'b01: op = 4'b0110;
      2'b10: begin
        if (funct == 6'b100000) begin
          op = 4'b0010;
        end else begin 
          if (funct == 6'b100010) begin
            op = 4'b0110;
          end else begin
            if (funct == 6'b100100) begin
              op = 4'b0000;
            end else begin
              if (funct == 6'b100101) begin
                op = 4'b0001;
              end else begin
                if (funct == 6'b101010) begin
                  op = 4'b0111;
                end
              end
            end
          end
        end
      end
    endcase
  end

endmodule
