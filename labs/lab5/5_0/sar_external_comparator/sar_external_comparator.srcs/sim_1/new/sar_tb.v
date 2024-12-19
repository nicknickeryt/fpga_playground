`timescale 1ns / 1ps

module sar_tb;
    reg clk;
    reg start;
    
    reg [7:0] vin;
    wire [3:0] vinComparable;
    wire comparator;
    
    wire eoc;
    wire [3:0] sar;

    sar uut (
        .clk(clk),
        .start(start),
        .comparator(comparator),
        .eoc(eoc),
        .sar(sar)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    assign comparator = vinComparable >= sar  ? 1'b1 : 1'b0;
    assign vinComparable = vin/16;
    
    initial begin
        start = 0;
        vin = 8'b01011001; // = 59, potem je dzielimy na 16 i uzyskujemy cyfrowe wejscie z dokladnoscia 4 bitowa
        
        #10;
        start = 1; // szpilka start!
        #10;
        start = 0;

        // Poczekaj trochę
        #100;
        vin = 128; // = 128
        #10;
        start = 1; // szpilka start!
        #10;
        start = 0;

        #100;
        $finish;
    end
endmodule

