# ECE128-FPGA-LAB6

The purpose of this lab was to design a pushbutton debouncer, a Moore FSM that detects 1100, and an overlapping Mealy FSM that detects 1101. The debouncer uses a 20-bit counter that resets whenever the button is let go, so the LED only turns on after the button is held for about 10.5 ms. The Moore FSM sets z = 1 in S4, and the Mealy FSM sets z = 1 when it's in S3 and the input is 1. Each design has a testbench, and a constraint file maps the debouncer to the Basys3 (CLK to the clock, RAW to the center button, CLEAN to LD0).

Run Instructions
Simulation:

Create a new project and select the Basys3 board
Add Debouncer.v, MooreFSM.v and MealyFSM.v under the design folder
Add Debouncer_TB.v, MooreFSM_TB.v and MealyFSM_TB.v under the simulation folder
Set one testbench as top, run Behavioral Simulation and hit Run All (the debouncer sim is 32 ms long)
Repeat for the other two testbenches
FPGA:

Set debouncing as the top module
Add Debouncer_Basys3.xdc under the constraint folder
Run Synthesis
Run Implementation
Generate Bitstream
Open Hardware Manager, find the device and program it
Hold the center button and LD0 turns on, let go and it turns off

