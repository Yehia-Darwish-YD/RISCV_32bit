/* Author: Mohamed Haytham */

`timescale 1ns / 1ps

module MW_pipeline_reg(
    input clk,RegWriteM,                            
    input [1:0]ResultSrcM,                      
    input [31:0] ReadDataM,ALUResultM,PCPlus4M, 
    input [4:0] RdM,                                 
    output reg RegWriteW,
    output reg [1:0]ResultSrcW,
    output reg [31:0] ReadDataW,ALUResultW,PCPlus4W,
    output reg [4:0] RdW
    );
      always @(posedge clk)
      begin
           ReadDataW <= ReadDataM;
           ALUResultW <= ALUResultM;
           RdW <= RdM;
           PCPlus4W <= PCPlus4M;
           RegWriteW <= RegWriteM;
           ResultSrcW <= ResultSrcM;
      end
endmodule 