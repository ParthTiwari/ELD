`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:03:20 10/22/2016
// Design Name:   ripple
// Module Name:   E:/parthtiwari/ripple_test.v
// Project Name:  parthtiwari
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ripple_test;

	// Inputs
	reg t;
	reg clock;
	reg reset;

	// Outputs
	wire [7:0] o;

	// Instantiate the Unit Under Test (UUT)
	ripple uut (
		.o(o), 
		.t(t), 
		.clock(clock), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		t = 1;
		clock = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      always #10 clock= ~clock;
		always #2 reset = 1;

endmodule

