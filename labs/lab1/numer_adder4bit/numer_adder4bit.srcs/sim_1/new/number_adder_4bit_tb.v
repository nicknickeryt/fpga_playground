`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 04:49:09 PM
// Design Name: 
// Module Name: number_adder_4bit_tb
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


module number_adder_4bit_tb();

reg [3:0] a;
reg [3:0] b;
wire [4:0] y;

number_adder_4bit uut(a, b, y);

initial begin
    assign a = 4'b0000;
    assign b = 4'b0000;
    #10
    assign a = 4'b0001;
    assign b = 4'b0000;
    #10
    assign a = 4'b0001;
    assign b = 4'b0001;
    #10
    assign a = 4'b1111;
    assign b = 4'b1111;
    #10
    
$finish;
end

endmodule
