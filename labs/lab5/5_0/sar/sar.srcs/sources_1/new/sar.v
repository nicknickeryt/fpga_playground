`timescale 1ns / 1ps

module sar (
    input clk,
    input start,
    input [3:0] vin,
    output reg eoc = 0,
    output reg [3:0] sar = 4'bXXXX
);
    reg [1:0] i = 3;
    reg convRunning = 0;

    always @(posedge clk) begin
        if(start) begin
            convRunning = 1;
            i = 3;
            eoc = 0;
            sar = 4'b1000;
        end
        else if (convRunning) begin
            if (vin >= sar) begin
                sar[i] <= 1'b1;
            end
            else begin
                sar[i] <= 1'b0;
            end
            if(i>0) sar[i-1] <= 1'b1;
            
            i <= i - 1'b1;
            
            if(i == 0) begin
                eoc <= 1;
                convRunning = 0;
            end
        end
    end
endmodule