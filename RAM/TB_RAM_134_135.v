`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:46:36 10/31/2022
// Design Name:   RAM_116
// Module Name:   E:/HDL_LAB_A1/RAM_116/TB_RAM_116.v
// Project Name:  RAM_116
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RAM_116
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_RAM_134_135;

	// Inputs
	reg clk;
	reg [3:0] data_in;
	reg wr;
	reg rd;
	reg [2:0] add;

	// Outputs
	wire [3:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	RAM_134_135 uut (
		.clk(clk), 
		.data_in(data_in), 
		.wr(wr), 
		.rd(rd), 
		.add(add), 
		.data_out(data_out)
	);

	
	initial begin
		// Initialize Inputs
		data_in = 0;
		wr = 0;
		rd = 0;
		add = 0;
		
		// Write
		data_in = 4'b0000;wr = 1;rd = 0;add = 3'b0000;#30;
		data_in = 4'b0001;wr = 1;rd = 0;add = 3'b0001;#30;
		data_in = 4'b0010;wr = 1;rd = 0;add = 3'b0010;#30;
		data_in = 4'b0011;wr = 1;rd = 0;add = 3'b0011;#30;
		// read
		wr = 0;rd = 1;add = 3'b0000;#30;
		wr = 0;rd = 1;add = 3'b0001;#30;
		wr = 0;rd = 1;add = 3'b0010;#30;
		wr = 0;rd = 1;add = 3'b0011;#30;
   
	end
	
   initial 
		begin
		clk = 0;
		forever #15 clk = ~clk;
	end   
	
endmodule

