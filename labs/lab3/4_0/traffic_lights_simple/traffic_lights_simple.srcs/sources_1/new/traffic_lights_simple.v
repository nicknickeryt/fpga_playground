`timescale 1s / 1ns

module traffic_lights_simple(
    input clk,
    output reg [2:0] LEDS = 3'b000 // RED | ORANGE | GREEN
    );
    
    // Nie działamy na liczbach od 0 do 60, a jedynie na 0 do 12, by oszczędzić zasoby
    // Zegar i tak jest co 5 sekund!
    // Mapa pomocnych wartości CNT i w sekundach
    // 0 - 0
    // 2 - 10
    // 3 - 15
    // 11 - 55
    // 12 - 60
    
    reg [3:0] CNT = 0;
    
    always @(posedge clk) begin
        LEDS <= 3'b000;
        
        // Prosty counter modulo 12
        if(CNT == 11) CNT <= 0; else CNT <= CNT + 1;
        
        // Na pałę warunki z zadania
        if( CNT >= 0 && CNT < 3 )                               LEDS[2] <= 1;
        if( CNT >= 2 && CNT < 3 || CNT >= 11 && CNT < 12 )      LEDS[1] <= 1;
        if( CNT >= 3 && CNT < 11 )                              LEDS[0] <= 1;
    end
    
endmodule
