module instruction_memory

//inputs and outputs
(clock, address, instruction);

input clock;

//pc address
input [31:0] address;

//instruction to exec
output [31:0] instruction;

//register for all program instructions (100 instructions)
reg [31:0] program_memory [49:0];

//load to memory the instructions
always @(negedge clock) 
begin 
    program_memory[0] <= 32'b00001000100000000001000000000000;
end

assign instruction = program_memory[address];

endmodule