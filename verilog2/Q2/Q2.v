`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:16:04 03/31/2017 
// Design Name: 
// Module Name:    Q2 
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
module Q2(
				input set,
				input reset,
				input [3:0] init,
				input clk,
				output [3:0] out
	);
	wire set1,reset1;
	wire [3:0] init1;
	reg [3:0] out1;
	assign set1 = set;
	assign reset1 = reset;
	assign init1 = init;
	initial begin
		out1 = 0;
	end
	 always @ (posedge clk)
	 	begin
	 		if (set1 == 1)
				out1 = init1;
			if (reset1 == 1)
				out1 = 0;
			out1 = (out1 + 1) % 16;
	 	end
	 	
	assign out = out1;
endmodule
