/* Author: Mohamed Haytham */

`timescale 1ns / 1ps

module control_unit_p(
     input [6:0]op,
     input [2:0]funct3,
     input funct7,
     output [1:0]ResultSrc,
     output MemWrite,
     output ALUsrc,
     output [1:0]ImmSrc,
     output RegWrite,
     output Branch, Jump,
     output [2:0]ALU_control
     );     
     wire [1:0]ALUop;
    
     main_dec dec1(.op(op),.branch(Branch),.ResultSrc(ResultSrc),.MemWrite(MemWrite),
     .ALUsrc(ALUsrc),.ImmSrc(ImmSrc),.RegWrite(RegWrite),.ALUop(ALUop),.Jump(Jump));
    
     AlU_dec dec2(.ALUop(ALUop),.funct3(funct3),
     .funct7(funct7),.op5(op[5]),.ALU_control(ALU_control));
    

endmodule 