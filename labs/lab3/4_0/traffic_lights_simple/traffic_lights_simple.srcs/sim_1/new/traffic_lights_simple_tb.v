`timescale 1s / 1ns

module traffic_lights_simple_tb();
    reg clk;
    wire [2:0] LEDS; // RED | ORANGE | GREEN
    
    traffic_lights_simple uut(clk, LEDS);
    
    initial begin
        clk = 1;                  // zegar pocz. wysoki, by symulacja była bardziej czytelna
        forever #2.5 clk = ~clk;  // okres zegara 5s, zob. timescale 
    end
    
    initial begin #100 $finish; end
    
endmodule
