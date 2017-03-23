`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:12:05 03/23/2017
// Design Name:   eq2
// Module Name:   /home/deepak/6thSem/CS220A/Assignments/Q3a/Q3a_test.v
// Project Name:  Q3a
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: eq2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Q3a_test;

	// Inputs
	reg [1:0] a;
	reg [1:0] b;

	// Outputs
	wire ledpin;

	// Instantiate the Unit Under Test (UUT)
	eq2 uut (
		.a(a), 
		.b(b), 
		.ledpin(ledpin)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
   end 
		// Add stimulus here
	always begin
		#10;
		a = 2'b10;
		b = 2'b10;
		
		#10; 
		a = 2'b10;
		b = 2'b11;
		
		#10;
		a = 2'b11;
		b = 2'b10;
		
		#10;
		a = 2'b11;
		b = 2'b11;
	end
      
endmodule

