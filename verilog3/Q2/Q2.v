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
				input wenable,
				output [3:0] outreg1,
				output [3:0] outreg2,
				input [3:0] no,
				input push1,
				input push2,
				input push3,
				input push4
	);

	reg [3:0] register[15:0];
	reg [3:0] tmp1;
	reg [3:0] tmp2;

	initial begin 
		tmp1 = 4'b0000;
		tmp2 = 4'b0000;
	end

	reg [3:0] rr1,rr2,wr,wdata;

	always @(posedge clk)
		begin
			if(push1 == 1)
				rr1 = no;
			else if(push2 == 1)
				rr2 = no;
			else if(push3 == 1)
				wr = no;
			else if(push4 == 1)
				wdata = no;
		end

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