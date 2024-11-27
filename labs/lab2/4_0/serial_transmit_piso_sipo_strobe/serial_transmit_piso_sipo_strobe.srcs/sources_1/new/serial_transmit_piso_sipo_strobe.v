`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2024 01:06:58 AM
// Design Name: 
// Module Name: serial_transmit_piso_sipo_strobe
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


module serial_transmit_piso_sipo_strobe(
    input clk,
    input [3:0] D,
    output [3:0] Q,
    output reg data = 0,
    output reg strobe = 0
    );
    
    wire QSER;
    reg load = 0;
    reg [2:0] counter = 0;
    
    piso p(clk, load, D, QSER);
    sipo s(clk, 1'b0, QSER, Q);
    
    always @(posedge clk) begin
        if(counter == 0) begin
            load <= 1;
            data <= 1;
        end
        else begin
            load <= 0;
            data <= 0;
        end
        
        if(counter == 5) begin
            strobe <= 1;
            counter <= 0;
        end
        else strobe <= 0;    
        counter <= counter + 1;
        
    end
    
    
endmodule
