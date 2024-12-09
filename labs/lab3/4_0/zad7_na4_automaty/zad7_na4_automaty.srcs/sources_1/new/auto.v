`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2024 07:05:08 PM
// Design Name: 
// Module Name: auto
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


module auto(
    input clk,      
    input reset,    
    output reg [6:0] q  
);
    reg [2:0] state;
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= 3'b000; 
        end else begin
            state <= state + 1;
            if (state == 3'b100) begin 
               /// state <= 3'b001;
                state <= reset;
            end
        end
    end

    always @(*) begin
 
        if (state == 3'b001) begin
            q = 7'b0000110; // Cyfra 1
        end else if (state == 3'b010) begin
            q = 7'b1011011; // Cyfra 2
        end else if (state == 3'b011) begin
            q = 7'b1001111; // Cyfra 3
        end else if (state == 3'b100) begin
            q = 7'b1100110; // Cyfra 4
        end else begin
            q = 7'b0000000; // Wartość domyślna (wyłączone wszystkie segmenty)
        end
    end

endmodule
