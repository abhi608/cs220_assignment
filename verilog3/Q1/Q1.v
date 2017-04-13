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

module alu4(
			input clk,
			output reg [3:0] res,
			output reg cout,
			output reg cf,
			output reg zf,
			output reg sf,
			output  sf_e,
			output  e,
			output  rs,
			output  rw,
			output  d,
			output  c,
			output  b2,
			output  a2,
			input push1,
			input push2,
			input push3,
			input [3:0] no
	);
	wire [3:0] a1;
	wire [3:0] b1;
	wire [1:0] select1;
	reg	[1:0]	select;
	reg [3:0] a,b,res1;
	reg cout1, cf1, zf1, sf1;
	wire [3:0] tmp1;
	wire [3:0] tmp2;
	wire [3:0] tmp3;

	assign a1 = a;
	assign b1 = b;
	assign select1 = select;
	assign tmp2 = 4'b0001;

	initial begin
		res1 = 0;
		cout = 0;
		cf = 0;
		zf = 0;
		sf = 0;
	end
	
	always @(posedge clk)
	begin
		if(push1 == 1)
			a = no;
		else if(push2 == 1)
			b = no;
		else if(push3 == 1)
			select = no[1:0];
	end
	wire [3:0] sum_res, and_res, or_res, sub_res;
	wire sum_cout, sub_cout;
	add4 sum1(.a(a1[3:0]), .b(b1[3:0]), .sum(sum_res[3:0]), .carry(sum_cout));
	sub4 dif1(.a(a1[3:0]), .b(b1[3:0]), .sum(sub_res[3:0]), .carry(sub_cout));
	assign tmp1 = ~sub_res;
	add4 sum2(.a(tmp1[3:0]), .b(tmp2[3:0]), .sum(tmp3[3:0]), .carry(sub_cout1));
	and4 instance1(.a(a1[3:0]), .b(b1[3:0]), .result(and_res[3:0]));
	or4 instance2(.a(a1[3:0]), .b(b1[3:0]), .result(or_res[3:0]));
	
	
	always @(posedge clk)
		begin
			if (select == 2'b00)  //add
				begin
					//assign res1 = sum_res;
					//add4 sum1(.a(a1[3:0]), .b(b1[3:0]), .sum(res1[3:0]), .carry(cout1));
					//add4(a1[3:0],b1[3:0],res1[3:0],cout1);
					res1 = sum_res;
					cout1 = sum_cout;
					if (cout1 == 1'b1)
						cf1 = 1'b1;
					else
						cf1 = 1'b0;

					if (res1 == 4'b0000)
						zf1 = 1'b1;
					else
						zf1 = 1'b0;

					sf1 = 1'b0;  //positive
				end

			else if (select == 2'b01)  //subtract
				begin
					//sub4 dif1(.a(a1[3:0]), .b(b1[3:0]), .sum(res1[3:0]), .carry(cout1));
					//sub4(a1[3:0], b1[3:0], res1[3:0], cout1);
					res1 = sub_res;
					cout1 = sub_cout;
					if (res1[3:3] == 1'b1)
						begin
							sf1 = 1'b1;
							//tmp1 = ~res1;
							//add4 sum2(.a(tmp1[3:0]), .b(tmp2[3:0]), .sum(tmp3[3:0]), .carry(cout1));
							//add4(tmp1[3:0], tmp2[3:0], tmp3[3:0],cout1);
							res1 = tmp3;
							cout = sub_cout1;
						end
					else
						sf1 = 1'b0;

					if (res1 == 4'b0000)
						zf1 = 1'b1;
					else
						zf1 = 1'b0;

					cf1 = 1'b0;  
				end

			else if (select == 2'b10)  //and
				begin
					//and4 instance1(.a(a1[3:0]), .b(b1[3:0]), .result(res1[3:0]));
					//and4(a1[3:0], b1[3:0], res1[3:0]);
					res1 = and_res;
					cout1 = 1'b0;
					cf1 = 1'b0;

					if (res1 == 4'b0000)
						zf1 = 1'b1;
					else
						zf1 = 1'b0;

					sf1 = 1'b0;
				end

			else  //or
				begin
					//or4 instance2(.a(a1[3:0]), .b(b1[3:0]), .result(res1[3:0]));
					//or4(a1[3:0],b1[3:0],res1[3:0]);
					res1 = or_res;
					cout1 = 1'b0;
					cf1 = 1'b0;

					if (res1 == 4'b0000)
						zf1 = 1'b1;
					else
						zf1 = 1'b0;

					sf1 = 1'b0;
				end
				
					res = res1;
					cout = cout1;
					cf = cf1;
					zf = zf1;
					sf = sf1;
		end
	
	
	printLCD print_1(.value(res[3:0]),.clk(clk),.sf_e(sf_e),.e(e),.rs(rs),.rw(rw),.d(d),.c(c),.b(b2),.a(a2));
endmodule


module printLCD(value,clk, sf_e, e, rs, rw, d, c, b, a);

input [3:0] value;
input clk; 
output reg sf_e; // 1 LCD access (0 strataFlash access)
output reg e; // enable (1)
output reg rs;	// Register Select (1 data bits for R/W)
output reg rw;	// Read/Write 1/0
output reg d;	// 4th data bits (to form a nibble)
output reg c;	// 3rd data bits (to form a nibble)
output reg b;	// 2nd data bits (to form a nibble)
output reg a;	// 1st data bits (to form a nibble)

reg [26:0] count = 0;	// 27-bit count, 0-(128M-1), over 2 secs
reg [5:0] code;	// 6-bits different signals to give out
reg refresh;	// refresh LCD rate @ about 25Hz

always @ (posedge clk) begin
count <= count + 1;

case (count [26:21])	// as top 6 bits change
// power-on init can be carried out befor this loop to avoid the flickers
0: code <= 6'h03;	// power-on init sequence
1: code <= 6'h03;	// this is needed at least once
2: code <= 6'h03;	// when LCD's powered on
3: code <= 6'h02;	// it flickers existing char dislay
// Table 5-3, Function Set 
// Send 00 and upper nibble 0010, then 00 and lower nibble 10xx
4: code <= 6'h02; // Function Set, upper nibble 0010 
5: code <= 6'h08; // lower nibble 1000 (10xx)
// Table 5-3, Entry Mode 
// send 00 and upper nibble: I/D bit (Incr 1, Decr 0), S bit (Shift 1, 0 no) 
6: code <= 6'h00; // see table, upper nibble 0000, then lower nibble: 
7: code <= 6'h06; // 0110: Incr, Shift disabled
// Table 5-3, Display On/Off 
// send 00 and upper nibble 0000, then 00 and lower nibble 1 DCB 
// D: 1, show char represented by code in DDR, 0 don't, but code remains 
// C: 1, show cursor, 0 don't 
// B: 1, cursor blinks (if shown), 0 don't blink (if shown) 
8: code <= 6'h00; // Display On/Off, upper nibble 0000 
9: code <= 6'h0C; // lower nibble 1100 (1 D C B)
// Table 5-3 Clear Display, 00 and upper nibble 0000, 00 and lower nibble 0001 
10: code <= 6'h00; // Clear Display, 00 and upper nibble 0000 
11: code <= 6'h01; // then 00 and lower nibble 0001
12: begin 
	if (value <= 4'h9)
	begin
		code <= 6'h23;
	end
	else
		code <= 6'h24;
	end
13: begin 
	if (value <= 4'h9)
	begin
		code <= 6'h20 + value[3:0];
	end
	else
		code <= 6'h20 + value[3:0] - 4'b1001;
	end

default: code <= 6'h10; // the restun-used time 
endcase 

// refresh (enable) the LCD when bit 20 of the count is 1 
// (it flips when counted upto 2M, and flips again after another 2M) 
refresh <= count[ 20 ]; // flip rate about 25 (50MHz/2*21=2M) 
sf_e <= 1; e <= refresh; 
rs <= code[5]; rw <= code[4]; 
d <= code[3]; c <= code[2]; 
b <= code[1]; a <= code[0]; 
end // always

endmodule