`timescale 1ns / 1ps

module bram_dp_sim_tb;

    reg clkA, clkB;
    reg weA, weB;
    reg [3:0] addrA, addrB;
    reg [7:0] dinA, dinB;
    wire [7:0] doutA, doutB;

    bram_dp uut (
        .clkA(clkA),
        .weA(weA),
        .addrA(addrA),
        .dinA(dinA),
        .doutA(doutA),
        .clkB(clkB),
        .weB(weB),
        .addrB(addrB),
        .dinB(dinB),
        .doutB(doutB)
    );
    
    always #5 clkA = ~clkA;
    always #5 clkB = ~clkB;

    initial begin
        // Initialize signals
        clkA = 0; clkB = 0;
        weA = 0; weB = 0;
        addrA = 0; addrB = 0;
        dinA = 0; dinB = 0;

        // Write data to both ports
        #10; weA = 1; addrA = 4'hA; dinA = 8'hAA;
        #10; weA = 0;

        #10; weB = 1; addrB = 4'hB; dinB = 8'hBB;
        #10; weB = 0;

        // Simultaneous read/write on the same address
        #10; weA = 1; addrA = 4'hC; dinA = 8'hCC;
              weB = 0; addrB = 4'hC;

        #20; $finish;
    end


endmodule
