module ALU_TB;

  reg [31:0] operandA, operandB;
  reg [3:0] operation;
  wire [31:0] result;
  wire zero;

  // ALU instance
  alu uut ( 
    .operation(operation),
    .result(result),
    .zero(zero),
    .operandA(operandA),
    .operandB(operandB)
  );

  // Test sequence
  initial begin
    // Test 1
    operation = 4'b0010; // Add
    operandA = -4; 
    operandB = -3; 

    // Wait a few cicles before read
    #1;

    // Print results
    $display("Test 1: op = %b | A = %b | B = %b | R = %b | Zero = %b", operation, operandA, operandB, result, zero);

	 ///////////////////////////////////////////////////////////////////
	 
    // Test 2 
    operation = 4'b0000; // And
    operandA = 8; 
    operandB = 8; 

    // Wait a few cicles before read
    #1;

    // Print results
    $display("Test 2: op = %b | A = %d | B = %d | R = %d | Zero = %b", operation, operandA, operandB, result, zero);

	 ///////////////////////////////////////////////////////////////////
	 
	 // Test 3 
    operation = 4'b0001; // Or
    operandA = 0; 
    operandB = 0; 

    // Wait a few cicles before read
    #1;

    // Print results
    $display("Test 3: op = %b | A = %d | B = %d | R = %d | Zero = %b", operation, operandA, operandB, result, zero);
	 
	 ///////////////////////////////////////////////////////////////////
	 
	 // Test 4
    operation = 4'b0110; // Sub
    operandA = -13; 
    operandB = 4; 

    // Wait a few cicles before read
    #1;

    // Print results
    $display("Test 4: op = %b | A = %b | B = %b | R = %b | Zero = %b", operation, operandA, operandB, result, zero);
	 
	 ///////////////////////////////////////////////////////////////////
	 
	 // Test 5
    operation = 4'b0111; // Slt
    operandA = 3; 
    operandB = 4; 

    // Wait a few cicles before read
    #1;

    // Print results
    $display("Test 5: op = %b | A = %d | B = %d | R = %d | Zero = %b", operation, operandA, operandB, result, zero);
	 
	 ///////////////////////////////////////////////////////////////////
	 
	 // Test 6
    operation = 4'b1100; // Nor
    operandA = 8; 
    operandB = 4; 

    // Wait a few cicles before read
    #1;

    // Print results
    $display("Test 6: op = %b | A = %d | B = %d | R = %b | Zero = %b", operation, operandA, operandB, result, zero);
	 
    // Finish test
    $finish;
  end

endmodule
