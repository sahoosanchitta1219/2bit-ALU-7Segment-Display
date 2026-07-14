`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2026 18:19:53
// Design Name: 
// Module Name: bcd_deco
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


module bcd_deco(
    input  [2:0] result,
    output reg [7:0] y // [dp, g, f, e, d, c, b, a]
);
    always @(*) begin
        case(result)
            3'b000: y = 8'b01111110; // 0
            3'b001: y = 8'b00110000; // 1
            3'b010: y = 8'b01101101; // 2
            3'b011: y = 8'b01111001; // 3
            3'b100: y = 8'b00110011; // 4
            3'b101: y = 8'b01011011; // 5
            3'b110: y = 8'b01011111; // 6
            3'b111: y = 8'b01110000; // 7
            default: y = 8'b00000000;
        endcase
    end
endmodule
