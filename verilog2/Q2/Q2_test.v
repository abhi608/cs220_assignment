`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:41:30 03/31/2017
// Design Name:   Q2
// Module Name:   /home/deepak/6thSem/CS220A/Assignments/verilog2/Q2/Q2_test.v
// Project Name:  Q2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Q2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Q2_test;

	// Inputs
	reg set;
	reg reset;
	reg [3:0] init;
	reg clk;
	integer count;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	Q2 uut (
		.set(set), 
		.reset(reset), 
		.init(init), 
		.clk(clk), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		set = 0;
		reset = 0;
		init = 0;
		clk = 0;
		count = 0;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
		always @(posedge clk)
		begin
					init <= count;
					count = (count + 1)%16;
		end
      always @ *
		begin
			clk = !clk;
			#20;
		end
endmodule

