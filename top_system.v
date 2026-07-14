`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2026 18:20:35
// Design Name: 
// Module Name: top_system
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


module top_system(
    output [7:0] y,
    input  [1:0] a,
    input  [1:0] b,
    input        cin
);
    wire [2:0] result;

    adder_2bit a1 (
        .result(result),
        .a(a),
        .b(b),
        .cin(cin)
    );

    bcd_deco d1 (
        .result(result),
        .y(y)
    );
endmodule
