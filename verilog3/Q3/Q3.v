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
	 add1 sum0(.x(a[0]), .y(b[0]), .cin(c), .s(sum[0]), .cout(tmp0));
	 add1 sum1(.x(a[1]), .y(b[1]), .cin(tmp0), .s(sum[1]), .cout(tmp1));
	 add1 sum2(.x(a[2]), .y(b[2]), .cin(tmp1), .s(sum[2]), .cout(tmp2));
	 add1 sum3(.x(a[3]), .y(b[3]), .cin(tmp2), .s(sum[3]), .cout(carry));
endmodule

module sub4(input [3:0] a,
			input [3:0] b,
			output [3:0] sum,
			output carry
	);
	 wire c;
	 wire tmp0;
	 wire tmp1;
	 wire tmp2;
	 wire [3:0] tmp3;
	 assign tmp3 = ~b;
	 assign c = 1'b1;
	 add1 sum0(.x(a[0]), .y(tmp3[0]), .cin(c), .s(sum[0]), .cout(tmp0));
	 add1 sum1(.x(a[1]), .y(tmp3[1]), .cin(tmp0), .s(sum[1]), .cout(tmp1));
	 add1 sum2(.x(a[2]), .y(tmp3[2]), .cin(tmp1), .s(sum[2]), .cout(tmp2));
	 add1 sum3(.x(a[3]), .y(tmp3[3]), .cin(tmp2), .s(sum[3]), .cout(carry));
endmodule

module and4(input [3:0] a,
			input [3:0] b,
			output [3:0] result
	);
	 assign result = a & b;
endmodule

module or4(input [3:0] a,
			input [3:0] b,
			output [3:0] result
	);
	 assign result = a | b;
endmodule

module alu4(input [3:0] a,
			input [3:0] b,
			input [1:0] select,
			input clk,
			output [3:0] res,
			output cout,
			output cf,
			output zf,
			output sf
	);
	wire [3:0] a1;
	wire [3:0] b1;
	wire [1:0] select1;
	reg [3:0] res1;
	reg cout1, cf1, zf1, sf1;
	reg [3:0] tmp1;
	reg [3:0] tmp2;
	reg [3:0] tmp3;

	assign a1 = a;
	assign b1 = b;
	assign select1 = select;
	assign tmp2 = 4'b0001;

	always @(posedge clk)
		begin
			if (select == 2'b00)  //add
				begin
					add4 sum1(.a(a1), .b(b1), .sum(res1), .carry(cout1));
					if (cout1 == 1'b1)
						cf1 = 1'b1
					else
						cf1 = 1'b0

					if (res1 == 4'b0000)
						zf1 = 1'b1
					else
						zf1 = 1'b0

					sf1 = 1'b0;  //positive
				end

			else if (select == 2'b01)  //subtract
				begin
					sub4 dif1(.a(a1), .b(b1), .sum(res1), .carry(cout1));
					if (res1[3:3] == 1'b1)
						begin
							sf1 = 1'b1;
							tmp1 = ~res1;
							add4 sum2(.a(tmp1), .b(tmp2), .sum(tmp3), .carry(cout1));
							res1 = tmp3;
						end
					else
						sf1 = 1'b0;

					if (res1 == 4'b0000)
						zf1 = 1'b1
					else
						zf1 = 1'b0

					cf1 = 1'b0;  
				end

			else if (select == 2'b10)  //and
				begin
					and4 instance1(.a(a1), .b(b1), .result(res1));
					cout1 = 1'b0;
					cf1 = 1'b0;

					if (res1 == 4'b0000)
						zf1 = 1'b1
					else
						zf1 = 1'b0

					sf1 = 1'b0;
				end

			else  //or
				begin
					or4 instance2(.a(a1), .b(b1), .result(res1));
					cout1 = 1'b0;
					cf1 = 1'b0;

					if (res1 == 4'b0000)
						zf1 = 1'b1
					else
						zf1 = 1'b0

					sf1 = 1'b0;
				end
		end
	assign ref = ref1;
	assign cout = cout1;
	assign cf = cf1;
	assign zf = zf1;
	assign sf = sf1;
endmodule


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


module processor(input [2:0] opcode,
				input clk,
				input [3:0] a,
				input [3:0] b,
				input wenable,
				output [3:0] res,
				output cf,
				output zf,
				output sf,
				output invalid
	);

	reg [3:0] tmp1;
	reg [3:0] tmp2;
	reg [3:0] tmp3;
	reg [1:0] tmp4;
	reg tmp5, tmp6, tmp7, tmp8, tmp9;

	initial begin
		tmp3 = 0;
		tmp6 = 0;
		tmp7 = 0;
		tmp8 = 0;
		tmp9 = 0;
	end

	always @(posedge clk)
		begin
			if (opcode == 3'b100)
				begin
					regfile instance1(.clk(clk), .rr1(a), .rr2(b), .wr(a), .wdata(b), .wenable(wenable), .outreg1(tmp1), .outreg2(tmp2));
					tmp3 <= 4'bz;
					tmp6 <= z;
					tmp7 <= z;
					tmp8 <= z;
					tmp9 <= 0;
				end

			else if (opcode == 3'b000)  //and
				begin
					tmp4 = 2'b10; 
					alu4 instance2(.a(a), .b(b), .select(tmp4), .clk(clk), .res(tmp3), .cout(tmp5), .cf(tmp6), .zf(tmp7), .sf(tmp8));
					tmp9 = 0;
				end

			else if (opcode == 3'b001)  //or
				begin
					tmp4 = 2'b10; 
					alu4 instance3(.a(a), .b(b), .select(tmp4), .clk(clk), .res(tmp3), .cout(tmp5), .cf(tmp6), .zf(tmp7), .sf(tmp8));
					tmp9 = 0;
				end

			else if (opcode == 3'b010)  //add
				begin
					tmp4 = 2'b11; 
					alu4 instance4(.a(a), .b(b), .select(tmp4), .clk(clk), .res(tmp3), .cout(tmp5), .cf(tmp6), .zf(tmp7), .sf(tmp8));
					tmp9 = 0;
				end

			else if (opcode == 3'b011)  //subtract
				begin
					tmp4 = 2'b01; 
					alu4 instance5(.a(a), .b(b), .select(tmp4), .clk(clk), .res(tmp3), .cout(tmp5), .cf(tmp6), .zf(tmp7), .sf(tmp8));
					tmp9 = 0;
				end

			else
				tmp9 = 1'b1;
		end

	assign res = tmp3;
	assign cf = tmp6;
	assign zf = tmp7;
	assign sf = tmp8;
	assign invalid = tmp9;

endmodule
