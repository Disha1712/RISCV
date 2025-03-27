# RISC-V Privilege Switching 

## Overview
This project demonstrates privilege mode switching in RISC-V assembly, where execution moves between Machine mode (M), Supervisor mode (S), and User mode (U). The implementation showcases the use of **Control and Status Registers (CSRs)**, trap handling, and system calls (`ecall`).

## Files Included
- `privilege_switch.s` - Implements mode switching between M, S, and U modes.
- `link.ld` - Linker script for bare-metal execution.

---

## Problem Statement

### **Privilege Switching Between Machine, Supervisor, and User Modes**
**Objective:**  
Write a RISC-V assembly program that continuously switches between privilege levels in the following sequence:  
**M → S → U → S → M → S → U → ...**  

**Flow of Execution:**  
1. The program starts in **Machine mode**, configures the necessary **CSRs**, and switches to **Supervisor mode** using `mret`.
2. In **Supervisor mode**, the program sets up CSRs to transition into **User mode** using `sret`.
3. The program executes operations in **User mode** and then calls `ecall`, triggering a trap in **Supervisor mode**.
4. A **Supervisor Trap Handler**:
   - Reads `scause` and `sepc` registers.
   - Calls `ecall` to escalate the exception to **Machine mode**.
   - Returns to **User mode** after `ecall` execution.
5. A **Machine Trap Handler**:
   - Reads `mcause` and `mepc` registers.
   - Modifies `mepc` to continue execution.
   - Returns control to the **Supervisor Trap Handler**, which then restores **User mode**.
6. The process loops as **User mode** calls `ecall` again.

---

## Important Considerations
- The **`medeleg`** register must be correctly configured:
  - Exceptions from **User mode** should be delegated to **Supervisor mode**.
  - Exceptions from **Supervisor mode** should be delegated to **Machine mode**.
---

## Compilation and Execution
To compile and run the program using `riscv64-unknown-elf-gcc` and **Spike**:

```
riscv64-unknown-elf-gcc -nostartfiles -T link.ld privilege_switch.s -o a.out
spike -d a.out
```

**Note:**  
- Running the code with the **proxy kernel (`pk`)** will execute it in **User mode only**.
- To execute in **Machine mode**, the program must be run **without `pk`**.

---

