`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 03:10:28 PM
// Design Name: 
// Module Name: decrementor_4bit
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


module decrementor_4bit(
    input [3:0] x,
    output [4:0] y
    );
    
    wire [3:0] c;
    wire [3:0] b = 5'b11111;
    assign c[0] = 1'b0;
    
    full_adder fa1(x[0], b[0], c[0], y[0], c[1]);
    full_adder fa2(x[1], b[1], c[1], y[1], c[2]);
    full_adder fa3(x[2], b[2], c[2], y[2], c[3]);
    full_adder fa4(x[3], b[3], c[3], y[3], y[4]);
    
    
endmodule
