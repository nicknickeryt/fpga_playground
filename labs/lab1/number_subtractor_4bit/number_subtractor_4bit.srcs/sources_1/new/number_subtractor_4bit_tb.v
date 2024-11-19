`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 06:29:39 PM
// Design Name: 
// Module Name: number_subtractor_4bit_tb
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


module number_subtractor_4bit_tb();

reg [3:0] a;
reg [3:0] b;
wire  [3:0] y;

number_subtractor_4bit uut(a, b, y);

initial begin
    a = 4'b1000;
    b = 4'b0001;
    #10
    a = 4'b1001;
    b = 4'b0010;
    #10    
    a = 4'b1001;
    b = 4'b0101;
    #10
$finish;
end

endmodule
