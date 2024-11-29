/* Author: Mohamed Haytham */

`timescale 1ns / 1ps

module FD_pipeline_reg(
    input FlushD,clk,StallD,
    input [31:0]Instr,PC,PCPlus4,
    output reg [31:0]InstrD,PCD,PCPlus4D
    );
   always @(posedge clk)
     begin
         if(FlushD)
             begin 
             InstrD <= 0;
             PCD <= 0;
             PCPlus4D <= 0; 
             end
          else
             if(StallD)
                 begin
                      InstrD <= InstrD;
                      PCD <= PCD;
                      PCPlus4D <= PCPlus4D;   
                 end   
              else   
                 begin
                         InstrD <= Instr;
                         PCD <= PC;
                         PCPlus4D <= PCPlus4; 
                 end          
     end  
endmodule