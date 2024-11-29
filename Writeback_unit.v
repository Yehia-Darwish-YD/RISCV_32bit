/* Author: Mohamed Haytham */

`timescale 1ns / 1ps

module Writeback_unit(
    input [31:0]ReadDataW,ALUResultW,PCPlus4W,
    input [1:0]ResultSrcW,
    output [31:0]ResultW
    );
    
    mux3 M3(.s(ResultSrcW), .A(ALUResultW), .B(ReadDataW), .C(PCPlus4W), .Y(ResultW));

endmodule 