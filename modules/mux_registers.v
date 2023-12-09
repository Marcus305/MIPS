module mux(
	input [3:0] a,
	input [3:0] b,
	input [1:0] selector,
	output [3:0] s
);

assign s = (selector == 1'b0) ? a : b;

endmodule