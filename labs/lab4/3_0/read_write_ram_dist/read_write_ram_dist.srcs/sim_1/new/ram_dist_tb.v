`timescale 1ns / 1ps

module ram_dist_tb();
    
    parameter awidth = 4;       // address bus bit width
    parameter dwidth = 8;       // data bus bit width
    
    reg clk;
    reg we;                     // write ebable
    reg [awidth-1 : 0] addr;    // address
    reg [dwidth-1 : 0] din;     // input data
    wire [dwidth-1 : 0] dout;   // output data
    
    ram_dist uut(clk, we, addr, din, dout);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    reg [15:0] dataToWrite = 16'b1010000011111011;
    integer i;
    initial begin
        // Wpisujemy 16 najmłodszych komórek
        // Wpisujemy używając adresów, po kolei od 0 do 15
        // Wpiszemy dane (MSB, LSB): 1010 0000 1111 1011
        // Uwaga! Zapis będzie odwrotny, bo adresujemy od 0, czyli od najmłodszej do najstarszej
    
        // Schemat jest taki:
        //  Wpierw zapis
        //      we = 1;
        //  Ustawiamy adres
        //      addr = 0;
        //  Ustawiamy pierwszą daną
        //      din = 1;
        
        // Wszystko to można robić ręcznie, ale zróbmy to z automatu.
        
        #5;
        we = 1;
        for (i = 0; i < 16; i = i + 1) begin
            addr = i;
            din = dataToWrite[i];
            #10;
        end
        
        // Teraz odczyt
        // Jedyne co się zmienia to sygnał WE, no i brak danych wejściowych
        // Zmieniłem również delay z #10 na #3, żeby pokazać, że zegar nie ma wpływu na wynik
        we = 0;
        din = 0;
        for (i = 0; i < 16; i = i + 1) begin
            addr = i;
            #3;
        end
        
        
    $finish;
    end

endmodule
