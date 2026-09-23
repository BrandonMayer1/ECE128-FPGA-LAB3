//Ripple Carry Adder Lab2
module FourBitFullAdderCarry(
    input [3:0] a1,b1,
    input cI,
    output [3:0] s1,
    output co
    );

wire co0, co1, co2;
OneBitFullAdder FA0 (.a1(a1[0]), .b1(b1[0]), .ci1(cI),  .s1(s1[0]), .co1(co0));
OneBitFullAdder FA1 (.a1(a1[1]), .b1(b1[1]), .ci1(co0), .s1(s1[1]), .co1(co1));
OneBitFullAdder FA2 (.a1(a1[2]), .b1(b1[2]), .ci1(co1), .s1(s1[2]), .co1(co2));
OneBitFullAdder FA3 (.a1(a1[3]), .b1(b1[3]), .ci1(co2), .s1(s1[3]), .co1(co));

endmodule