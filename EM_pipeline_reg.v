/* Author: Yehia Darwish
   Status: Undergraduate
   Department: ECE, Alexandria University(Egypt)
*/
/* Date: 11/09/2024
   File Name: EM_pipeline_reg.v 
   Category: module
*/
/* keywords: ALUResult, WriteData, Rdm, ResultSrcE
   Function: pipeline register
    
*/
// Note: This is a submodule

`timescale 1ns / 1ps

module EM_pipeline_reg(
    input clk,RegWriteE,MemWriteE,                  
    input [1:0] ResultSrcE,                     
    input [31:0] ALUResultE,WriteDataE,PCPlus4E,
    input [4:0] RdE,                                 
    output reg RegWriteM,MemWriteM,
    output reg [1:0] ResultSrcM,
    output reg [31:0] ALUResultM,WriteDataM,PCPlus4M,
    output reg [4:0] RdM
    );
     always @(posedge clk)
           begin
               RegWriteM <= RegWriteE;
               ResultSrcM <= ResultSrcE;
               MemWriteM <= MemWriteE;
               ALUResultM <= ALUResultE;
               WriteDataM <= WriteDataE;
               RdM <= RdE;
               PCPlus4M <= PCPlus4E;
           end 
endmodule
