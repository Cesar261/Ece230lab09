# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Cesar Garcia, Rafael Jacobo
## Summary
we explored the fundamentals of sequential logic by implementing latches. We learned feedback loops allow circuits to store state and maintain memory over time. First, we implemented a single-bit D-Latch in Verilog using behavioral code (`always` blocks with level-sensitive lists and non-blocking assignments) to make data storage transparent when Enable is high and latched when Enable is low. We then scaled this concept by combining 8-bit D-Latch memory blocks, 1-to-4 demultiplexers, and a 4-to-1 multiplexer to build a complete 4-byte memory storage system controlled by an address bus and a store command.
## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
Structural Verilog creates feedback loops that Vivado flags as timing errors because vivado lacks physical cross-coupled gate loops. Behavioral Verilog allows the synthesizer to infer proper built-in FPGA memory primitives without causing synthesis or timing errors.
### What is the meaning of always @(*) in a sensitivity block?
The `@(*)` wildcard sensitivity list automatically includes all read signals inside the `always` block. It tells the circuit to evaluate whenever any input changes, making sure pure combinational logic and preventing unintended memory latches.
### What importance is memory to digital circuits?
Memory allows digital systems to retain state over time, enabling sequential operations, instruction execution in CPUs, and timing synchronization. Without memory, circuits would be combinational and incapable of multi-step processing or data storage.
