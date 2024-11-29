/* Author: Yehia Darwish
   Status: Undergraduate
   Department: ECE, Alexandria University(Egypt)
*/
/* Date: 07/09/2024
   File Name: DataMemory.v 
   Category: module
*/
/* keywords: ALUResult, WriteData, ReadData
   Function: Simple Memory used to read and write data
    
*/
// Note: This is a submodule

module DataMemory(
    input clk,                 // Clock input
    input [31:0] ALUResult,      // Memory address
    input [31:0] WriteData,    // Data to write to memory
    input MemWrite,            // Control signal for writing to memory
 //   input MemRead,             // Control signal for reading from memory
    output  [31:0] ReadData // Data read from memory
);

    reg [31:0] memory [0:255]; // Define a memory with 256 32-bit locations

    always @(posedge clk) begin
        if (MemWrite) begin
            memory[ALUResult ] <= WriteData; // Write data to memory
        end
    end


  assign  ReadData = memory[ALUResult ];  // Read data from memory

endmodule

