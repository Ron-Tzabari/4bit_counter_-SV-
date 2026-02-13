This is a SystemVerilog project of a synchronous counter that counts from 0 to 15. The design is modular and consists of two separate components:
1) A 4-bit combinational adder.
2) A sequential Flip-Flop register.

The Adder: Receives a constant 4-bit '1' and the current counter value. It also receives a '0' as Carry-In (cin). The Carry-Out (cout) is not used in this design.
The Register (FF): Takes the sum from the adder and stores it as the next counter value.
Operation: On every clock rising edge, the counter increments by 1. When it reaches 15, it resets back to 0.
Reset: The 'rst' input initializes the counter to 0.

counter.sv: The top-level module.
four_bit_adder.sv: The combinational adder component.
counter_tb.sv: The testbench for simulation.
