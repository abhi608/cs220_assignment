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

module count15(input [3:0] init,
				input set,
				input reset,
				output [3:0] out
	);
	 initial begin
	 	out = 0;
	 	init = 0;
	 	set = 0;
	 	reset = 0;
	 end

	 always @*
	 	begin
	 		if (set == 1)
				out = init;
			if (reset == 1)
				out = 0;
	 	end

	 always @*
	 	#1 out = (out + 1) % 16;

endmodule