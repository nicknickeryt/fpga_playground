`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 02:38:51 PM
// Design Name: 
// Module Name: incrementor_4bit_tb
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


module incrementor_4bit_tb();

reg [3:0] x;
wire[3:0] y;

incrementor_4bit uut(x, y);

initial begin
    x = 4'b000;
    #10;
    x = 4'b001;
    #10;
    x = 4'b010;
    #10;
    x = 4'b011;
    #10;
    x = 4'b100;
    #10;
    x = 4'b101;
    #10;
    x = 4'b110;
    #10;
    x = 4'b111;


$finish;
end

endmodule
