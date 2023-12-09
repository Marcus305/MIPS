module AND_MUX_TB;

	reg [31:0] a, b;
	reg branch;
	reg zero;
	wire [31:0] s;
	
	// And Mux instance
	and_mux uut ( 
    .a(a),
    .b(b),
    .branch(branch),
	 .zero(zero),
    .s(s)
  );
  
  // Test sequence
  initial begin
	
  // Test 1
  
  //input s=2023
  a = 2023;
  b = 2024;
  branch = 0;
  zero = 0;
  
  // Wait a few cicles before read
  #1;

  // Print results
  $display("Test 1: a = %d | b = %d | s = %d | branch = %b | zero = %b", a, b, s, branch, zero);
	
  ///////////////////////////////////////////
  $finish;
  end
 endmodule
