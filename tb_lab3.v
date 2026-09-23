`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2026 10:37:10 AM
// Design Name: 
// Module Name: tb_lab3
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


module tb_lab3();
    reg [3:0] A1, B1;
    reg CI;
    reg sel;
    wire [6:0] seg;
    wire [3:0] an;
    wire dp;
    wire CO_rca;

    FourBitFullAdderDisplay uut( .A1(A1), .B1(B1), .CI(CI), .sel(sel), .seg(seg), .an(an), .dp(dp), .CO_rca(CO_rca));

    integer i, j;

    initial begin
        A1 = 4'b0000;
        B1 = 4'b0000;
        CI = 1'b0;
        sel = 1'b0;

        for (i = 0; i < 16; i = i + 1) begin
            A1 = i;
            for (j = 0; j < 16; j = j + 1) begin
                B1 = j;

                sel = 1'b0;  
                CI = 1'b0;
                #10;
                CI = 1'b1;
                #10;

                sel = 1'b1;   
                CI = 1'b0;
                #10;
                CI = 1'b1;
                #10;
            end
        end
        $stop;
    end
endmodule
