`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2026 18:23:49
// Design Name: 
// Module Name: tb_top_system
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




module tb_top_system();

    reg [1:0] a;
    reg [1:0] b;
    reg       cin;
    wire [7:0] y;

    top_system uut (
        .y(y),
        .a(a),
        .b(b),
        .cin(cin)
    );

    initial begin
        a = 2'b00; b = 2'b00; cin = 1'b0;
        #10; 
        a = 2'b00; b = 2'b00; cin = 1'b0; #10;

        a = 2'b01; b = 2'b01; cin = 1'b0; #10;

        a = 2'b10; b = 2'b01; cin = 1'b1; #10;

        a = 2'b11; b = 2'b11; cin = 1'b1; #10;

        $finish;
    end
      
endmodule
