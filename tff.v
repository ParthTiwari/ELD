`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:58:15 10/21/2016 
// Design Name: 
// Module Name:    tff 
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
module tff(out,t,clock,reset
    );
input t,clock,reset;
output out;
wire D;
assign D=out^t;
dff as(out,D,clock,reset);
endmodule

