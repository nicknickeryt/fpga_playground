`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2024 12:47:00 AM
// Design Name: 
// Module Name: very_good_sipo
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


module very_good_sipo(
    input clk,
    input din,
    output reg [3:0] Q = 0
    );
    
    reg [2:0] counter = 0;
    reg [3:0] Qsipo = 0;
    
    always @(posedge clk) begin
        Qsipo <= { Qsipo[2:0], din };
        if(counter == 3) begin
            counter <= 0;
            Q <= { Qsipo[2:0], din };
        end
        else counter <= counter + 1;
         
   end 
    
endmodule
