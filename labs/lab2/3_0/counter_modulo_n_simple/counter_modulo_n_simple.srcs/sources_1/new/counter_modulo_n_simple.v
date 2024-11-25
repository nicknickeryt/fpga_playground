`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 07:44:06 PM
// Design Name: 
// Module Name: counter_modulo_n_simple
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

// modulo 6 -> wystarcza 3 bity
module counter_modulo_n_simple(
    input clk,
    input up,
    output reg[2:0] Q = 0
    );
    
    
    always @(posedge clk) begin
        if(up) begin
            if(Q == 6-1) begin Q <= 0; end
            else begin Q <= Q + 1; end
        end
        else begin
            if(Q == 0) begin Q <= 6-1; end
            else begin Q <= Q - 1; end
        end
    end
    
endmodule
