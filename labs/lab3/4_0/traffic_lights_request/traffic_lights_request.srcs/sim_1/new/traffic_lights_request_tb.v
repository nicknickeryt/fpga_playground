`timescale 1s / 1ns

module traffic_lights_request_tb();
    reg clk;
    reg userButton;               
    wire [2:0] CARS;           // RED | ORANGE | GREEN
    wire [1:0] PEDESTRIANS;    // RED | GREEN
    
    traffic_lights_request uut(clk, userButton, CARS, PEDESTRIANS);
    
    initial begin
        clk = 1;
        forever #5 clk = ~clk;
    end
    
    initial begin
        userButton = 0;
        #100;
        userButton = 1;
        #1;
        userButton = 0;
        #300
    $finish;
    end
    
endmodule
