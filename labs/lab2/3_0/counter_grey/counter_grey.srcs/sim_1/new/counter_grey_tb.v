`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 10:05:10 PM
// Design Name: 
// Module Name: counter_grey_tb
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


module counter_grey_tb();
reg clk;
wire [2:0] Q;

counter_grey uut(clk, Q);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    #100;
$finish;
end

endmodule
