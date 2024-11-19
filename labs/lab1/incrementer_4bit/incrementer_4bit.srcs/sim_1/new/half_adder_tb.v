`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 02:22:21 PM
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb();

reg a;
reg b;
wire s;
wire c;

half_adder uut(a, b, s, c);

initial begin
    a = 1'b0;
    b = 1'b0;
    #10;
    a = 1'b0;
    b = 1'b1;
    #10
    a = 1'b1;
    b = 1'b0;
    #10
    a = 1'b1;
    b = 1'b1;
end


endmodule
