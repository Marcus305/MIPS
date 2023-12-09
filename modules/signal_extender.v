module signal_extender (
  input [15:0] a,
  output reg [31:0] b
);

  always @(*) begin
    b = {16'b0, a};
  end

endmodule
