module ALU_CONTROL_TB;
 
  reg [1:0] opAlu;
  reg [5:0] funct;
  wire [3:0] op;
  
  // ALU Control instance
  alu_control uut ( 
    .opAlu(opAlu),
    .funct(funct),
    .op(op)
  );

  // Test sequence
  initial begin
	
	// Test 1
	
	//input
	opAlu = 2'b00; //op = 0010
	
	// Wait a few cicles before read
   #1;

   // Print results
   $display("Test 1: opAlu = %b | funct = %b | op = %b", opAlu, funct, op);
	
	///////////////////////////////////////////
	
	// Test 2
	
	//input
	opAlu = 2'b01; //op = b0110
	
	// Wait a few cicles before read
   #1;

   // Print results
   $display("Test 2: opAlu = %b | funct = %b | op = %b", opAlu, funct, op);
	
	///////////////////////////////////////////
	
	// Test 3
	
	//input
	opAlu = 2'b10; //op = b0010
	funct = 6'b100000;
	
	// Wait a few cicles before read
   #1;

   // Print results
   $display("Test 3: opAlu = %b | funct = %b | op = %b", opAlu, funct, op);
	
	///////////////////////////////////////////
	
	// Test 4
	
	//input
	opAlu = 2'b10; //op = b0110
	funct = 6'b100010;
	
	// Wait a few cicles before read
   #1;

   // Print results
   $display("Test 4: opAlu = %b | funct = %b | op = %b", opAlu, funct, op);
	
	///////////////////////////////////////////
	
	// Test 5
	
	//input
	opAlu = 2'b10; //op = b0000
	funct = 6'b100100;
	
	// Wait a few cicles before read
   #1;

   // Print results
   $display("Test 5: opAlu = %b | funct = %b | op = %b", opAlu, funct, op);
	
	///////////////////////////////////////////
	
	// Test 6
	
	//input
	opAlu = 2'b10; //op = b0001
	funct = 6'b100101;
	
	// Wait a few cicles before read
   #1;

   // Print results
   $display("Test 6: opAlu = %b | funct = %b | op = %b", opAlu, funct, op);
	
	///////////////////////////////////////////
	
	// Test 7
	
	//input
	opAlu = 2'b10; //op = b0111
	funct = 6'b101010;
	
	// Wait a few cicles before read
   #1;

   // Print results
   $display("Test 7: opAlu = %b | funct = %b | op = %b", opAlu, funct, op);
	
	///////////////////////////////////////////
	
	$finish;
	end
endmodule