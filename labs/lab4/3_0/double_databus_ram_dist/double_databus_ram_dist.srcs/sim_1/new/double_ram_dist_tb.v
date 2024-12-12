`timescale 1ns / 1ps

module double_ram_dist_tb();

reg clk = 0;
reg we; 
reg [3 : 0] addr;
reg [15 : 0] din;
wire [15 : 0] dout;

double_ram_dist uut(clk, we, addr, din, dout);


always #5 clk = ~clk;

initial begin
    
    we = 1;
    addr = 1;
    din = 1;
    
    #10;
    
    we = 0;
    
    #10;
    
    we = 1;
    addr = 2;
    din = 16;
    
    #10
    
    we = 0;
    
    #10
    
    addr = 1;
    
    #10
    
    

$finish;
end

endmodule
