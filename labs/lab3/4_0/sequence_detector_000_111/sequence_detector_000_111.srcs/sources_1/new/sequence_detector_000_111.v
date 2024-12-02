`timescale 1ns / 1ps

module sequence_detector_000_111(
    input clk,
    input Din,
    output reg [1:0] Q = 2'b00
    );
    reg [2:0] QH;
    
    always @(posedge clk) begin
        QH = {QH[1:0], Din};    // specjalnie nie <=, tylko =, aby już w tym cyklu móc porównywać
                                // pewnie można zachować przypisanie, ale mi się nie chce xd
        if(QH == 3'b000) Q <= 2'b01;
        else if(QH == 3'b111) Q <= 2'b10;
        else Q <= 2'b00;
    end
    
endmodule
