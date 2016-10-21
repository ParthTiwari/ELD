`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:59:00 10/21/2016
// Design Name:   tff
// Module Name:   E:/parthtiwari/tff_test.v
// Project Name:  parthtiwari
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: tff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tff_test;

	// Inputs
	reg t;
	reg clock;
	reg reset;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	tff uut (
		.out(out), 
		.t(t), 
		.clock(clock), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		t = 0;
		clock = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always #100 clock= ~clock;
		always #10 reset = 1;
		always #30 t= ~t;
    
endmodule

