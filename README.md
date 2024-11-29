# RISCV_32bit
Developed a 32bit RISC-V pipelined processor inspired by Digital Design and Computer Architecture. This project explores modern processor design, implementing the complete pipeline process from instruction fetch to execution, offering a hands-on understanding of advanced computer architecture

![Screenshot 2024-11-29 164726](https://github.com/user-attachments/assets/fb321d7f-8d17-4be6-b064-0c813b38fcf5)

# Microarchitecture Overview:
Single-Cycle: Executes each instruction in one cycle. Simple but constrained by the slowest instruction and requires separate instruction and data memory.
Multicycle: Breaks execution into shorter cycles, reuses hardware, and uses single memory, improving efficiency but slowing individual instructions.
Pipelined: Divides execution into stages for simultaneous instruction processing. Requires extra logic to manage dependencies and separate caches for high performance.
