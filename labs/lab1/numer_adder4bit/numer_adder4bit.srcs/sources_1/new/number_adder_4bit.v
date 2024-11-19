`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 04:45:43 PM
// Design Name: 
// Module Name: number_adder_4bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module number_adder_4bit(
input  [3:0] a,
input  [3:0] b,
output [4:0] y
    );
wire [3:0] c;
assign c[0] = 0;

full_adder fa1(a[0], b[0], c[0], y[0], c[1]);
full_adder fa2(a[1], b[1], c[1], y[1], c[2]);
full_adder fa3(a[2], b[2], c[2], y[2], c[3]);
full_adder fa4(a[3], b[3], c[3], y[3], y[4]);

endmodule
