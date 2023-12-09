module and_mux (
	input [31:0] a,
	input [31:0] b,
	input wire branch,
	input wire zero,
	output reg [31:0] s
);

	always @(*) begin
		s = ((branch & zero) == 1'b0) ? a : b;
	end
endmodule