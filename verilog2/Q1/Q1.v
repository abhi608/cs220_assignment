`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:11:40 03/31/2017 
// Design Name: 
// Module Name:    Q1 
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
module Q1(input [3:0] no,
				input push1,
				input push2,
				input clk,
				output [3:0] sum,
				output ledpin,
				output  sf_e,
				output  e,
				output  rs,
				output  rw,
				output  d,
				output  c,
				output  b1,
				output  a1
    );
reg [3:0] a,b;
//wire [3:0] sum;
wire carry;
	always @(posedge clk)
	begin
		if(push1 == 1)
			a = no;
		else if(push2 == 1)
			b = no;
	end
	add4 add4_1(.a(a[3:0]),.b(b[3:0]),.sum(sum[3:0]),.carry(carry));
	assign ledpin = carry;
	printLCD print_1(.value(sum[3:0]),.clk(clk),.sf_e(sf_e),.e(e),.rs(rs),.rw(rw),.d(d),.c(c),.b(b1),.a(a1));
	
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