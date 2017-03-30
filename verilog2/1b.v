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

module test1;
	reg [3:0] x;
	reg [3:0] y;
	wire [3:0] sum;
	wire carry;
	integer count;
	add4 instance(.a(x), .b(y), .sum(sum), .carry(carry));

	initial begin
		x = 0;
		y = 0;
	end

	initial begin
		$monitor("Sum,Carry of %b and %b  = %b , %b", x, y, sum, carry);
	end

	always @(a or b)
		begin
			for(count=0; count < 256; count=count+1)
				#1 {x,y} = count;
			#5 $stop;
		end
endmodule
