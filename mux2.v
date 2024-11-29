/* Author: Yehia Darwish
   Status: Undergraduate
   Department: ECE, Alexandria University(Egypt)
*/
/* Date: 06/09/2024
   File Name: mux2.v
   Category: module
*/
/* keywords: 
   Function: 
    
*/
// Note: This is a submodule

module mux2 #(parameter WIDTH = 32) (
    input wire [WIDTH-1:0] A, 
    input wire [WIDTH-1:0] B,
    input wire s,
    output wire [WIDTH-1:0] Y
);
    assign Y = s ? B : A;
endmodule