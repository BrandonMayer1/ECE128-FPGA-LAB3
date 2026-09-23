ECE128-FPGA-LAB3

The purpose of this lab was to design a BCD to seven-segment display driver and use it to display the output of the 4-bit full adder from Lab 2 on the Basys3's seven-segment display. The adder computes A1 + B1 + CI and produces a 4-bit sum and a carry-out. A 2:1 mux, driven by a sel switch, chooses what gets sent to the display: the 4-bit sum when sel = 0, or the carry-out bit (1/0) when sel = 1. The BCD-to-seven-segment decoder then converts that 4-bit value into a single digit segment pattern shown on the display. A testbench was used to test A1, B1, CI, and sel through multiple cases and verify that the sum and carry-out were calculated correctly. A constraint file was also created to map the design to the Basys3 board: A1[3:0] and B1[3:0] to switches, CI and sel to switches, seg[6:0], an[3:0], and dp to the seven-segment display, and CO_rca to an LED.

Run Instructions,
Create a new project, selecting the board type you are uploading to
Add the design files under the design folder: FourBitFullAdderDisplay, TwoOneMux, BCDtoSevenSegmentDisplay1, FourBitFullAdderCarry, OneBitFullAdder
Add the testbench under the simulation folder
Add the constraint file under the constraint folder
Run Synthesis
Run Implementation
Run Generate Bitstream
Find the device and program
