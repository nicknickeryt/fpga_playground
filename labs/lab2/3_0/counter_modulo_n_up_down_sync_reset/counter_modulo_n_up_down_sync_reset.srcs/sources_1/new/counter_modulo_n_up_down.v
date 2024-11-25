`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 06:44:29 PM
// Design Name: 
// Module Name: counter_modulo_n_up_down
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


module counter_modulo_n_up_down(
    input clk,
    input reset,
    input up,
    input ce,
    output reg [M-1:0] Q=0    
    );
    
    
    parameter N = 63;
    localparam M = $clog2(N);

    always @(posedge clk) begin
        if(reset) begin Q<=0; end
        else if(ce)
            if(up) begin
                if(Q==N-1) begin Q <= 0; end
                else begin Q <= Q + 1; end
            end
            else begin
                if(Q==0) begin Q<=N-1; end
                else begin Q <= Q-1; end
            end
        end
    
endmodule
