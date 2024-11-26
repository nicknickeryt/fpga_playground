`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2024 12:12:06 AM
// Design Name: 
// Module Name: counter_modulo_n_up_l
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


module counter_modulo_n_up_l(
    input clk,
    input [W-1:0] d,
    input l,
    input ce,
    input up,
    output reg [W-1:0] q = 0
    );
    
    parameter N = 5;
    localparam W = $clog2(5);
    
    always @(posedge clk) begin
        if(ce)
            if(l) q <= d;
            else if(up)
                if(q >= N-1) q <= 0;
                else q <= q + 1;
            else
                if(q==0) q <= N-1;
                else q <= q - 1;
    end
    
    
endmodule
