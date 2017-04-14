`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:36:42 04/14/2017
// Design Name:   alu4
// Module Name:   /home/deepak/6thSem/CS220A/Assignments/verilog3/Q1/Q1_test.v
// Project Name:  Q1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Q1_test;

	// Inputs
	reg clk;
	reg push1;
	reg push2;
	reg push3;
	reg [3:0] no;

	// Outputs
	wire [3:0] res;
	wire cout;
	wire cf;
	wire zf;
	wire sf;
	wire sf_e;
	wire e;
	wire rs;
	wire rw;
	wire d;
	wire c;
	wire b2;
	wire a2;

	// Instantiate the Unit Under Test (UUT)
	alu4 uut (
		.clk(clk), 
		.res(res), 
		.cout(cout), 
		.cf(cf), 
		.zf(zf), 
		.sf(sf), 
		.sf_e(sf_e), 
		.e(e), 
		.rs(rs), 
		.rw(rw), 
		.d(d), 
		.c(c), 
		.b2(b2), 
		.a2(a2), 
		.push1(push1), 
		.push2(push2), 
		.push3(push3), 
		.no(no)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		push1 = 0;
		push2 = 0;
		push3 = 0;
		no = 0;

		// Wait 100 ns for global reset to finish
		#100;
		always *
		begin
      clk = !clk;
		clk = !clk;
		push1 = 1;
		no = 4'b0001;
		push1 = 0;
		push2 = 1;
		no = 4'b1100;
		push2 = 0;
		push3 = 1;
		no = 4'b0101;
		// Add stimulus here
		end
	end
      
endmodule

