module data_memory (
  input wire [31:0] address, 
  input wire [31:0] writeData, 
  input wire memWrite, 
  input wire memRead,       
  output reg [31:0] readData
);

  reg [31:0] memory [0:31]; //32 registers of 32 bits (here comes the memory hierarchy)

  always @(posedge memRead) begin
	 //testar desse jeito
    if (memRead) begin
		readData = memory[address];
	 end
  end

  always @(posedge memWrite) begin
    if (memWrite) begin
      memory[address] <= writeData;
    end
  end

endmodule
