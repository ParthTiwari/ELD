`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:55:39 10/21/2016
// Design Name:   dff
// Module Name:   E:/parthtiwari/tf_dff.v
// Project Name:  parthtiwari
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tf_dff;

	// Inputs
	reg data;
	reg clock;
	reg reset;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	dff uut (
		.out(out), 
		.data(data), 
		.clock(clock), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		data = 0;
		clock = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	end
      always #100 clock= ~clock;
		always #10 reset = 1;
		always #30 data = ~data;
endmodule

