`timescale 1ns / 1ps

module bram_dp_data_invert_tb();

    parameter awidth = 4;
    parameter dwidth = 8; 
    
    reg clk;
    reg convert;
    
    reg writeViaB;
    reg readViaB;
    reg [awidth-1 : 0] writeViaBAddr;
    reg [dwidth-1 : 0] writeViaBDin;
    
    // Odczytujący
    wire weA;        
    wire [awidth-1 : 0] addrA; 
    wire [dwidth-1 : 0] dinA;   
    wire [dwidth-1 : 0] doutA;   
   
    // Zapisujący
    wire weB;                  
    wire [awidth-1 : 0] addrB;    
    wire [dwidth-1 : 0] dinB;   
    wire [dwidth-1 : 0] doutB;
    
    bram_dp_data_invert uut(clk, convert, writeViaB, readViaB, writeViaBAddr, writeViaBDin, weA, addrA, dinA, doutA, weB, addrB, dinB, doutB);
    
    reg [15:0] dataToWrite = 16'b1010000011111011;
    integer i;
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        // Zapiszemy najpierw dane
        convert = 0;
        
        #5;
        writeViaB = 1;
        readViaB = 0;
        for (i = 0; i < 16; i = i + 1) begin
            writeViaBAddr = i;
            writeViaBDin = dataToWrite[i];
            #10;
        end
        
        // Poczilujemy chwilę
        #30
        
        // Odczyt
        writeViaB = 0;
        readViaB = 1;
        for (i = 0; i < 16; i = i + 1) begin
            writeViaBAddr = i;
            #10;
        end
        
        #30;
        
        // Teraz inwersja
        writeViaB = 0;
        readViaB = 0;
        convert = 1;
        #200;
    $finish;
    end
    
endmodule
