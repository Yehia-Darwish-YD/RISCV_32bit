# RISCV_32bit
Developed a 32bit RISC-V pipelined processor inspired by Digital Design and Computer Architecture. This project explores modern processor design, implementing the complete pipeline process from instruction fetch to execution, offering a hands-on understanding of advanced computer architecture

![Screenshot 2024-11-29 164726](https://github.com/user-attachments/assets/fb321d7f-8d17-4be6-b064-0c813b38fcf5)

# Microarchitecture Overview:
Single-Cycle: Executes each instruction in one cycle. Simple but constrained by the slowest instruction and requires separate instruction and data memory.

Multicycle: Breaks execution into shorter cycles, reuses hardware, and uses single memory, improving efficiency but slowing individual instructions.

Pipelined: Divides execution into stages for simultaneous instruction processing. Requires extra logic to manage dependencies and separate caches for high performance.

# System Performance Overview:
Latency: The time it takes for one input to go through the system.

Throughput: How many inputs the system can handle in a given time.
Types of Parallelism:

Spatial: Multiple hardware units work on tasks at the same time.

Pipelining: Tasks are split into steps, with each step handled simultaneously to speed up processing.
Let me know if it needs further refinement!

![Screenshot 2024-11-29 165528](https://github.com/user-attachments/assets/587bc1aa-0fcb-40fd-b003-8ff40ec32b73)

# Pipeline Stages:
Fetch: Retrieve instructions from memory.

Decode: Interpret instructions and prepare control signals.

Execute: Perform calculations using the ALU.

Memory: Access data for reading or writing.

Writeback: Store results in registers.
