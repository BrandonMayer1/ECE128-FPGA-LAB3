module FourBitFullAdderDisplay(A1, B1, CI, sel, seg, an, dp, CO_rca);
    input [3:0] A1, B1;
    input CI;
    input sel;
    output [6:0] seg;
    output [3:0] an;
    output dp;
    output CO_rca;

    wire [3:0] sum_rca;
    wire [3:0] sum_selected;

    FourBitFullAdderCarry u1(.a1(A1), .b1(B1), .cI(CI), .s1(sum_rca), .co(CO_rca));
    TwoOneMux m0(.a(sum_rca), .b(CO_rca), .sel(sel), .out(sum_selected));
    BCDtoSevenSegmentDisplay1 u3(.data(sum_selected), .seg(seg), .an(an), .dp(dp));

endmodule