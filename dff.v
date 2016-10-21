`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:54:15 10/21/2016 
// Design Name: 
// Module Name:    dff 
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
module dff(out,data,clock,reset);
    
	 input data,clock,reset;
	 output reg out;	 		
	 always@(negedge clock,negedge reset)
	 if (reset == 0) 
	 out <= 0;
	 else 
	 out <= data;
 
endmodule
