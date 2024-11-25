`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 08:41:07 PM
// Design Name: 
// Module Name: sipo_ce
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


module sipo_ce(
    input clk,
    input ce,
    input clear,
    input D,                     // serial input
    output reg [3:0] QPAR = 0    // parallel output
    );
    
    always @(posedge clk) begin
        if(ce) begin
            if(clear) begin QPAR <= 0; end
            else begin
                 QPAR <= { QPAR[2:0], D };
            end
        end
    end
    
endmodule
