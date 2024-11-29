/* Author: Yehia Darwish
   Status: Undergraduate
   Department: ECE, Alexandria University(Egypt)
*/
/* Date: 06/09/2024
   File Name: PCPlus4.v 
   Category: module
*/
/* keywords: PC, PCPlus4
   Function: Icrementing Pc by 4 for next instruction
    
*/
// Note: This is a submodule

module PCPlus4(
    input [31:0] PC,          // Current Program Counter
    output [31:0] PCPlus4     // PC incremented by 4 (for the next instruction)
);

    assign PCPlus4 = PC + 4;   // Add 4 to PC

endmodule 