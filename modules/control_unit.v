module control_unit (
	input wire [5:0] opCode,
	output reg regDst,
	output reg origAlu,
	output reg memToReg,
	output reg writeReg,
	output reg memRead,
	output reg memWrite,
	output reg branch,
	output reg [1:0] aluOp
);

	always @(*) begin
		case (opCode)
			6'b000000: begin //type R
				regDst = 1'b1;
				origAlu = 1'b0;
				memToReg = 1'b0;
				writeReg = 1'b1;
				memRead = 1'b0;
				memWrite = 1'b0;
				branch = 1'b0;
				aluOp = 2'b10;
			end
			6'b100011: begin //lw
				regDst = 1'b0;
				origAlu = 1'b1;
				memToReg = 1'b1;
				writeReg = 1'b1;
				memRead = 1'b1;
				memWrite = 1'b0;
				branch = 1'b0;
				aluOp = 2'b00;
			end
			6'b101011: begin //sw
				regDst = 1'b0; //x
				origAlu = 1'b1;
				memToReg = 1'b1; //x
				writeReg = 1'b0;
				memRead = 1'b0;
				memWrite = 1'b1;
				branch = 1'b0;
				aluOp = 2'b00;
			end
			6'b000100: begin //beq
				regDst = 1'b0; //x
				origAlu = 1'b0;
				memToReg = 1'b1; //x
				writeReg = 1'b0;
				memRead = 1'b0;
				memWrite = 1'b0;
				branch = 1'b1;
				aluOp = 2'b01;
			end
		endcase
	end
endmodule