`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 04:05:38 PM
// Design Name: 
// Module Name: decrementor_4bit_tb
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


module decrementor_4bit_tb();
reg [3:0] x;
wire [4:0] y;

decrementor_4bit uut(x, y);

initial begin
    x = 4'b0000;
    #10
    x = 4'b0001;
    #10
    x = 4'b0010;
    #10
    x = 4'b0011;
    #10
    x = 4'b1000;
    #10
    x = 4'b1111;

$finish;
end

endmodule
