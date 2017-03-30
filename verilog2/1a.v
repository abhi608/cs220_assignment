`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:45:58 03/23/2017 
// Design Name: 
// Module Name:    Q3a 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module add1(input x,
			input y,
			input cin,
			output s,
			output cout
	);
	 assign {cout,s} = x + y + cin;
endmodule

module add4(input [3:0] a,
			input [3:0] b,
			output [3:0] sum,
			output carry
	);
	 wire c;
	 wire tmp0;
	 wire tmp1;
	 wire tmp2;
	 assign c = 1'b0;
	 add1 sum0(.x(a[0]), .y(b[0]), .cin(cin), .s(sum[0]), .cout(tmp0));
	 add1 sum1(.x(a[1]), .y(b[1]), .cin(tmp0), .s(sum[1]), .cout(tmp1));
	 add1 sum2(.x(a[2]), .y(b[2]), .cin(tmp1), .s(sum[2]), .cout(tmp2));
	 add1 sum3(.x(a[3]), .y(b[3]), .cin(tmp2), .s(sum[3]), .cout(carry));
endmodule
	 

