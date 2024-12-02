`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2024 09:42:57 PM
// Design Name: 
// Module Name: oversampling_8x
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


module oversampling_8x(
    input clk_8,
    input Din,
    output reg Q = 0,
    output reg [4:0] onesCount = 0,
    output reg [3:0] counter = 7
    );
    
    always @(posedge clk_8) begin
        if(counter == 7) begin
            counter <= 0;
            Q <= onesCount >= 4 ? 1 : 0;
            onesCount <= Din ? 1 : 0;
        end
        else begin
            counter <= counter + 1;
            if(Din) onesCount <= onesCount + 1;
        end    
    end
    
endmodule
