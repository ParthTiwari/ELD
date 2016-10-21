`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:00:17 10/22/2016 
// Design Name: 
// Module Name:    ripple 
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
module ripple(o,t,clock,reset);
input t,clock,reset;
output [7:0]o;
tff s1(o[0],t,clock,reset);
tff s2(o[1],t,o[0],reset);
tff s3(o[2],t,o[1],reset);
tff s4(o[3],t,o[2],reset);
tff s5(o[4],t,o[3],reset);
tff s6(o[5],t,o[4],reset);
tff s7(o[6],t,o[5],reset);
tff s8(o[7],t,o[6],reset);
endmodule
