`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2024 01:46:39 AM
// Design Name: 
// Module Name: shift_register_multiply_subtract_tb
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


module shift_register_multiply_subtract_tb();

reg clk;
reg [3:0] D;
reg load;
reg multiply;
wire [3:0] Q;
wire O;

shift_register_multiply_subtract uut(clk, D, load, multiply, Q, O);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    multiply = 1;
    load = 1;
    D = 4'b0001;
    #10
    load = 0;
    #10
    
    #10
    load = 1;
    D = 4'b0011;
    #10
    load = 0;
    #10
    
    multiply = 0;
    load = 1;
    D = 4'b0100;
    #10
    load = 0;
    #40
$finish;
end

endmodule
