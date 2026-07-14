`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2026 18:18:59
// Design Name: 
// Module Name: adder_2bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module adder_2bit(
    output [2:0] result,
    input  [1:0] a,
    input  [1:0] b,
    input        cin
);
    wire s0, s1, cout, c0;

    full_add f1 (
        .sum(s0),
        .cout(c0),
        .a(a[0]),
        .b(b[0]),
        .cin(cin)
    );
    
    full_add f2 (
        .sum(s1),
        .cout(cout),
        .a(a[1]),
        .b(b[1]),
        .cin(c0)
    );

    assign result = {cout, s1, s0};
endmodule
