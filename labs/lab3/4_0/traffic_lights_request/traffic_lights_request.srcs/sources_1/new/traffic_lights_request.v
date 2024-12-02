`timescale 1s / 1ns

// Podobnie jak traffic_lights_simple, z tym, że counter jest uruchamiany po przycisnieciu przycisku
// Jeśli user nie naciśnie przycisku, to światło aut zielone, pieszych czerwone
// Po naciśnięciu odbywa się cykl z zadania 1, tylko dla jest odwrotny dla aut, a prawie taki sam
// dla pieszych.
// Po całym cyklu, czyli kiedy modulo się resetuje, resetujemy też wciśnięcie przycisku

module traffic_lights_request(
    input clk,
    input userButton,                       // Naciśnięcie przycisku ustawi request na 1, asynchronicznie
    output reg [2:0] CARS = 3'b000,         // RED | ORANGE | GREEN
    output reg [1:0] PEDESTRIANS = 2'b00    // RED | GREEN
    );
    
    reg [3:0] CNT = 0;
    reg request = 0;
    
    always @(posedge userButton) request = 1;
    
    always @(posedge clk) begin
        
        // Domyślnie światło GREEN dla aut i RED dla pieszych, bo auta są lepsze od pieszych
        CARS <= 3'b001;
        PEDESTRIANS <= 2'b10;
        
        // Jeśli request się ustawił:
        // Za chwilę robimy odwrotny cykl świateł z zad. 1 dla aut
        if(request) begin
            // Prosty counter modulo 12
            if(CNT == 11) begin 
                CNT <= 0;
                request <= 0; // resetujemy request
            end
            else CNT <= CNT + 1;
            
            // Od 0s do 15s jest zielone dla aut, czerwone dla pieszych
            if( CNT >= 0 && CNT < 3 ) begin
                CARS[2] <= 0;
                CARS[0] <= 1;
                PEDESTRIANS <= 2'b10;
            end
            // Od 10s do 15s oraz 55s do 60s jest pomarańczowe dla aut, czerwone dla pieszych
            if( CNT >= 2 && CNT < 3 || CNT >= 11 && CNT < 12 ) begin     
                CARS[1] <= 1;     
                CARS[0] <= 0;
                PEDESTRIANS <= 2'b10;
            end            
            // Od 15s do 55s jest zielone dla pieszych i czerwone dla aut
            if( CNT >= 3 && CNT < 11 ) begin
                CARS[0] <= 0;
                CARS[2] <= 1;
                PEDESTRIANS <= 2'b01;
            end
        end
    end
    
endmodule