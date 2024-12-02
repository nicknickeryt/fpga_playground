`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2024 09:49:16 PM
// Design Name: 
// Module Name: oversampling_8x_tb
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


module oversampling_8x_tb();
    reg clk_8;
    reg Din;
    wire Q;
    wire [3:0] onesCNT;
    wire [3:0] counter;
    
    oversampling_8x uut(clk_8, Din, Q, onesCNT, counter);
    
    initial begin
        clk_8 = 1;
        forever #5 clk_8 = ~clk_8; // clk oversampling - 10ns; clk real = 80ns
    end
    
    initial begin
        Din = 0;
        #10
        Din = 1;
        #20;
        Din = 1;
        #50
        Din = 0;
        #10
        Din = 1;
        #40;
        Din = 0;
        #180
    $finish;
    end
    
endmodule
