/* Author: Yehia Darwish
   Status: Undergraduate
   Department: ECE, Alexandria University(Egypt)
*/
/* Date: 10/09/2024
   File Name: memory_unit.v
   Category: module
*/
/* keywords: ALUResultM,WriteDataM
   Function: controls data memory
    
*/
// Note: This is a submodule

`timescale 1ns / 1ps

module memory_unit(
    input [31:0]ALUResultM,WriteDataM,
    input clk,MemWriteM,
    output [31:0]ReadDataM
    );
    
     DataMemory mem2(.clk(clk), .MemWrite(MemWriteM), .WriteData(WriteDataM), .ALUResult(ALUResultM),
      .ReadData(ReadDataM));

endmodule