`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2024 01:09:14 AM
// Design Name: 
// Module Name: sipo
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


module sipo(
    input clk,
    input clear,
    input d,                     // serial input
    output reg [3:0] QPAR = 0    // parallel output
    );
    
    always @(posedge clk) begin
        if(clear) begin QPAR <= 0; end
        else begin
             QPAR <= { QPAR[2:0], d };
        end
    end
endmodule
