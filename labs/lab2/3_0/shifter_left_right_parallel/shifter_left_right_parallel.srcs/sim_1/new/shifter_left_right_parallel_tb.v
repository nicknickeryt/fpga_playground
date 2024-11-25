`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 09:37:31 PM
// Design Name: 
// Module Name: shifter_left_right_parallel_tb
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


module shifter_left_right_parallel_tb();

reg clk;
reg Left;
reg load;
reg [3:0] D;
wire [3:0] Q;

shifter_left_right_parallel uut(clk, Left, load, D, Q);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    Left = 1;
    load = 1;
    D = 4'b1101;
    #40
    
    load = 0;
    Left = 1;
    #40
    
    load = 1;
    D = 4'b1101;
    #40
    
    load = 0;
    Left = 0;
    #40
    
        
$finish;
end

endmodule
