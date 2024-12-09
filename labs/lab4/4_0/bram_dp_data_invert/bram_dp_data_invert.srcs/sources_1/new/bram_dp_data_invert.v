`timescale 1ns / 1ps

    // Oczywiście jak zwykle skomplikowałem sobie zadanie dodając jeszcze możliwość wpisu danych
    // Na 9999% da się wpisać dane łatwiej w symulacji niż tak
    // Można np. dodać chociażby sygnał writeDummyData który w łatwy sposób ustawi dane w RAMie bez jakiejś zabawy w writeViaB itd.
    // Jak mi się będzie chciało to poprawie to
    
    // A ogólnie to pomysł jest taki, że jeden port odczytuje a drugi zapisuje w tym samym momencie
    // Jeden idzie od początku, od 0 do n, a drugi od n do 0
    // No i mamy inwersję
    // Tylko trzeba kombinować z output reg itp., żeby ładnie to pokazać na waveformie w symulacji

module bram_dp_data_invert(
    input clk,
    input convert,
    
    input writeViaB,
    input readViaB,
    input [awidth-1 : 0] writeViaBAddr,
    input [dwidth-1 : 0] writeViaBDin,
    
    // Odczytujący
    output reg weA = 0,                     // write ebable
    output reg [awidth-1 : 0] addrA,    // address
    output reg [dwidth-1 : 0] dinA = 0,     // input data
    output [dwidth-1 : 0] doutA,    // output data
   
    // Zapisujący
    output reg weB = 1,                     // write ebable
    output reg [awidth-1 : 0] addrB,    // address
    output reg [dwidth-1 : 0] dinB,     // input data
    output [dwidth-1 : 0] doutB     // output data
    );
    
    parameter awidth = 4;
    parameter dwidth = 8; 
    
    reg conversionActive = 0;
    reg [4:0] counter = 0;
    integer n = (2**awidth) - 1;
    
    bram_dp BRAMka(clk, weA, addrA, dinA, doutA, clk, weB, addrB, dinB, doutB);
   
    // Jeśli poprosimy (klikniemy przycisk) o konwersję, to niech się zapisze rejestr
    // Zostanie on zresetowany po konwersji, aby konwersja zrobiła się 1 raz
    always @(posedge convert) begin
        conversionActive = 1;
        counter = 0;
    end
   
    
    // Pomysł jest taki: 
    // n = 15
    // port A odczytuje dane z addr 0, 1, 2.....n
    // port B zapisuje dane do addr n, n-1, n-2.....0
    always @(posedge clk) begin
        if(writeViaB) begin
            weB = 1;
            addrB = writeViaBAddr;
            dinB = writeViaBDin;
        end
        else if(readViaB) begin
            weB = 0;
            addrB = writeViaBAddr;
            dinB = 0;
        end
        
        else if(conversionActive) begin
            weB = 0;
            if(counter <= 15) begin
                    
                    // Odczytujący
                    addrA = counter;
                    dinA = 0;
                    
                    // Zapisujący
                    addrB = n-counter;
                    dinB = doutA;
                
                counter = counter + 1;
            end
        end
        else begin
            conversionActive = 0;
        end
    end
    
endmodule
