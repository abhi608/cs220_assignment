`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:54:10 03/23/2017
// Design Name:   eq4
// Module Name:   /home/deepak/6thSem/CS220A/Assignments/Q3b/Q3a_test.v
// Project Name:  Q3b
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: eq4
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
	reg [3:0] no;
	reg push1;
	reg push2;
	reg clk;

	// Outputs
	wire ledpin;

	// Instantiate the Unit Under Test (UUT)
	eq4 uut (
		.no(no), 
		.push1(push1), 
		.push2(push2), 
		.clk(clk), 
		.ledpin(ledpin)
	);

	initial begin
		// Initialize Inputs
		no = 0;
		push1 = 0;
		push2 = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
   always begin
		#10 clk = !clk;
		push1 = 1;
		push2 = 0;
		no = 4'b1010;
		#10 clk = !clk;
		push2 = 1;
		push1 = 0;
		no = 4'b1010;
		#10 clk = !clk;
		
		push1 = 1;
		push2 = 0;
		no = 4'b1011;
		#10 clk = !clk;
		push2 = 1;
		push1 = 0;
		no = 4'b1010;
		#10 clk = !clk;

	end
endmodule

