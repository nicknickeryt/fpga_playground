`timescale 1ns / 1ps

module sar_tb;
    reg clk;
    reg start;
    reg [3:0] vin;
    wire eoc;
    wire [3:0] sar;

    sar uut (
        .clk(clk),
        .start(start),
        .vin(vin),
        .eoc(eoc),
        .sar(sar)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        
        start = 0;
        vin = 4'b0100; // = 4
        #10;
        start = 1; // szpilka start!
        #10;
        start = 0;

        // Poczekaj trochę
        #100;
        vin = 4'b0011; // = 3
        #10;
        start = 1; // szpilka start!
        #10;
        start = 0;

        #100;
        $finish;
    end
endmodule

