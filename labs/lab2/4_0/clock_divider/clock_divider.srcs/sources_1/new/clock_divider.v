`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2024 02:07:48 AM
// Design Name: 
// Module Name: clock_divider
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

// divide by 3 with 33.3% duty cycle
module clock_divider(
input clk,
output reg clk_div = 0
    );
reg [1:0] counter = 0;

always @(posedge clk) begin
    if(counter == 2) begin
        clk_div = 1;
        counter <= 0;
    end
    else begin
        clk_div = 0;
        counter <= counter + 1;
    end
end
 
endmodule
