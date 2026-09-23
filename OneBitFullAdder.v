//One bit adder Lab2
`timescale 1ns / 1ps
module OneBitFullAdder(
    input a1,b1,ci1,
    output co1,s1
    );
    assign s1 = a1 ^ b1 ^ ci1;
    assign co1 = (ci1 & b1) | (ci1 & a1) | (a1 & b1);
endmodule