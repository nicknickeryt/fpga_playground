`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 08:00:38 PM
// Design Name: 
// Module Name: piso_ce_tb
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


module piso_ce_tb();

reg clk;
reg load;
reg ce;
reg [3:0] D;
wire QSER;

piso_ce uut(clk, load, ce, D, QSER);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    load = 1;
    ce = 1;
    D = 4'b1011;
    #10
    load = 0;
    #100
    $finish;
end

endmodule
