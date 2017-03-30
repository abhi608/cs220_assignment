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

module test2;
	reg [3:0] init;
	reg set;
	reg reset;
	wire [3:0] out;
	integer count;

	count15 instance(.init(init), .set(set), .reset(reset), .out(out));

	initial begin
		init = 0;
		set = 0;
		reset = 0;
		out = 0;
	end

	initial begin
		$monitor("[init, set, reset, out] = [%b, %b, %b, %b]", init, set, reset, out);
	end

	always @(set or reset or init)
		begin
			#20 reset <= 1;
			#25 set <= 1;
			for(count=0; count < 16; count=count+1)
				#23 init <= count;
		end
endmodule