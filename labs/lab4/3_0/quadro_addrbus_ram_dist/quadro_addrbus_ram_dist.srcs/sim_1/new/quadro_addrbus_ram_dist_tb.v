`timescale 1ns / 1ps

module quadro_addrbus_ram_dist_tb;

    reg clk;
    reg we;
    reg [15:0] addr;
    reg [7:0] din;
    wire [7:0] dout;

    quadro_addrbus_ram_dist uut (
        .clk(clk),
        .we(we),
        .addr(addr),
        .din(din),
        .dout(dout)
    );

    initial begin
        // Initialize signals
        clk = 0;
        we = 0;
        addr = 0;
        din = 0;

        // Write to different blocks
        #10; we = 1; addr = 16'h0001; din = 8'hAA;
        #10; addr = 16'h4002; din = 8'hBB;
        #10; addr = 16'h8003; din = 8'hCC;
        #10; addr = 16'hC004; din = 8'hDD;
        #10; we = 0;

        // Read from the same blocks
        #10; addr = 16'h0001;
        #10; addr = 16'h4002;
        #10; addr = 16'h8003;
        #10; addr = 16'hC004;

        #20; $finish;
    end

    always #5 clk = ~clk;

endmodule
