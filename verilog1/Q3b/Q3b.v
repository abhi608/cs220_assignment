`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:14:14 03/23/2017 
// Design Name: 
// Module Name:    Q3b 
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
module eq4( input [3:0] no,
				input push1,
				input push2,
				input clk,
				output ledpin
    );

	reg [3:0] a,b;
	always @(posedge clk)
	begin
		if(push1 == 1)
			a = no;
		else if(push2 == 1)
			b = no;
	end
	wire temp1,temp2;
	eq2 eq2_1(.a(a[1:0]),.b(b[1:0]),.out(temp1));
	eq2 eq2_2(.a(a[3:2]),.b(b[3:2]),.out(temp2));
	assign ledpin = temp1 & temp2;

endmodule
module eq2( input [1:0] a,
				input [1:0] b,
				output out
	);
	 wire [1:0] c,d;
	 assign c = a;
	 assign d = b;
	 wire temp1,temp2;
    eq1 eq1_1(.x(c[0]),.y(d[0]),.isEqual(temp1));
	 eq1 eq1_2(.x(c[1]),.y(d[1]),.isEqual(temp2));
	 assign out = temp1 & temp2;
endmodule

module eq1( input x,
				input y,
				output isEqual
    );
	assign isEqual = (x==y);
endmodule

