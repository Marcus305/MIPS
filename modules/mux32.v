module mux32 (
	input [31:0] a,
	input [31:0] b,
	input [1:0] selector,
	output [31:0] s
);

assign s = (selector == 1'b0) ? a : b;

endmodule