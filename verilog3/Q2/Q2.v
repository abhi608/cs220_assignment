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

module regfile (input clk,
				input [3:0] rr1,
				input [3:0] rr2,
				input [3:0] wr,
				input [3:0] wdata,
				input wenable,
				output [3:0] outreg1,
				output [3:0] outreg2
	);

	reg [3:0] register[15:0];
	reg [3:0] tmp1;
	reg [3:0] tmp2;

	always @(posedge clk)
		begin
			if(wenable == 1'b1)
				begin
					register[wr] <= wdata;
					tmp1 <= 4'bz;
					tmp2 <= 4'bz; 
				end
			else
				begin
					tmp1 <= register[rr1];
					tmp2 <= register[rr2];
				end
		end

	assign outreg1 = tmp1;
	assign outreg2 = tmp2;

endmodule