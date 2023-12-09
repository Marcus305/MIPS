module jump_address (
	input [31:0] address,
	input [31:0] jump,
	output reg [31:0] newAddress
);

	always @(*) begin
		newAddress = address + (newAddress << 2);
	end
endmodule