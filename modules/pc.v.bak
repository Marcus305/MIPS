module pc

//inputs and outputs
(clock, address);
input clock;

//creating a register
reg [31:0] counter;

output [31:0] address;

//init counter with 0
initial begin
  counter = 32'b00000000000000000000000000000000;
 end

//always when clock fall counter++
always @(negedge clock) begin
 counter = counter + 32'b00000000000000000000000000000001;
end

//next index of instruction
assign address = counter;

endmodule