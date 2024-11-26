`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2024 12:17:42 AM
// Design Name: 
// Module Name: counter_modulo_n_up_l_tb
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


module counter_modulo_n_up_l_tb();

    reg clk;
    reg [W-1:0] d;
    reg l;
    reg ce;
    reg up; 
    wire [W-1:0] q;

    parameter N = 5;
    localparam W = $clog2(5);

    counter_modulo_n_up_l uut(clk, d, l, ce, up, q);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        l = 1;
        ce = 1;
        up = 1;
        d = 3'b011;
        #15
        l = 0;
        #80
        up = 0;
        #80
        
    $finish;
    end

endmodule
