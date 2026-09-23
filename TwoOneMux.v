`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2026 10:25:47 AM
// Design Name: 
// Module Name: TwoOneMux
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


module TwoOneMux(input [3:0] a, input b, sel, output [3:0] out);
    assign out[0] = (a[0] & ~sel) | (b & sel);
    assign out[1] = (a[1] & ~sel) | (1'b0 & sel);
    assign out[2] = (a[2] & ~sel) | (1'b0 & sel);
    assign out[3] = (a[3] & ~sel) | (1'b0 & sel);
endmodule