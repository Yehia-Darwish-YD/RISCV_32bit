/* Author: Yehia Darwish
   Status: Undergraduate
   Department: ECE, Alexandria University(Egypt)
*/
/* Date: 06/09/2024
   File Name: Flipflop.v 
   Category: module
*/
/* keywords: clk, stallF, PCNext
   Function: program counter
    
*/
// Note: This is a submodule

`timescale 1ns / 1ps

module Flipflop(
        input clk,StallF,                // Clock input
        input [31:0] PCNext,      // Next Program Counter value
        output reg [31:0] PC      // Current Program Counter value
    );
    
        always @(posedge clk) begin
            if (StallF)
                PC <= PC;       // Reset the PC to 0 on reset signal
            else
                PC <= PCNext;      // Update PC to the next value on clock edge
        end
         initial
         PC = 32'd0;
endmodule 