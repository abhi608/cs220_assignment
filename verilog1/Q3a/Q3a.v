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
module eq2( input [1:0] a,
				input [1:0] b,
				output ledpin
	);
	 wire [1:0] c,d;
	 assign c = a;
	 assign d = b;
	 wire temp1,temp2;
    eq1 eq1_1(.x(c[0]),.y(d[0]),.isEqual(temp1));
	 eq1 eq1_2(.x(c[1]),.y(d[1]),.isEqual(temp2));
	 assign ledpin = temp1 & temp2;
endmodule

module eq1( input x,
				input y,
				output isEqual
    );
	assign isEqual = (x==y);
endmodule

