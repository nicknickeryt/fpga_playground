`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2024 09:59:59 PM
// Design Name: 
// Module Name: tb_lock
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


module tb_lock();
    reg clk;
    reg [2:0] x;
    wire q;

    lock UUT(x, clk, q);
    
    
    wire [2:0] test;
    assign test[0] = UUT.state[0];
    assign test[1] = UUT.state[1];
    assign test[2] = UUT.state[2];
    
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;    
    end
    
    initial begin
        #2 
        x = 3'b001;
        #10
        x = 3'b010;
        #10
        x = 3'b001;
        #10
        x = 3'b101;
        #10
        x = 3'b010;
        #10
        x = 3'b010;
        
        #10
        x = 3'b001;
        #10
        x = 3'b011;
        #10
        x = 3'b111;
        
        #10
        x = 3'b111;
        
        #10
        x = 3'b101;
        
        #10
        x = 3'b111;
        $finish;
    end
endmodule
