module registers (
  input wire [4:0] readReg1, 
  input wire [4:0] readReg2, 
  input wire [4:0] writeReg, 
  input wire regWrite,       
  input wire [31:0] writeData, 
  output reg [31:0] readData1, 
  output reg [31:0] readData2  
);

  reg [31:0] registers [0:31]; //32 registers of 32 bits

  always @(*) begin
	 //testar desse jeito
    readData1 = registers[readReg1];
    readData2 = registers[readReg2];
  end

  always @(posedge regWrite) begin
    if (regWrite) begin
      registers[writeReg] <= writeData;
    end
  end

endmodule
