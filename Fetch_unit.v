/* Author: Mohamed Haytham */

`timescale 1ns / 1ps

module Fetch_unit(
    input clk,pcsrc,StallF,
    input [31:0]PCtarget,
    output [31:0]Instr,PC,PCPlus4
    );
    wire [31:0]PC_next;
    
    mux2 m1(.A(PCPlus4),.B(PCtarget),.s(pcsrc),.Y(PC_next));
    
    Flipflop f1(.clk(clk),.StallF(StallF),.PCNext(PC_next), .PC(PC) );
    
    InstructionMemory mem1(.PC(PC), .Instr(Instr) );
    
    PCPlus4 p2(.PC(PC),.PCPlus4(PCPlus4));
    
endmodule 