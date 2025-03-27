# RISC-V Programming Repository

## Overview
This repository contains various RISC-V assembly programs, including implementations of recursion, multi-precision arithmetic, context switching, and RISC-V and C interfacing. Each module is structured into a `docs/` directory containing documentation and a `src/` directory containing source code.

## Table of Contents
- [Directory Structure](#directory-structure)
- [Modules](#modules)
  - [Basic Arithmetic Operations](#basic-arithmetic-operations)
  - [Multi-Precision Arithmetic](#multi-precision-arithmetic)
  - [Privilege Switching](#privilege-switching)
  - [RISC-V and C Interfacing](#risc-v-and-c-interfacing)
  - [Simple Recursion](#simple-recursion)
- [Execution Instructions](#execution-instructions)

## Directory Structure
```
RISC-V-Programming-Repository/
│── BasicArithmeticOperations/
│   ├── docs/
│   │   ├── README.md
│   ├── src/
│   │   ├── array.s
│   │   ├── arithmetic_op.s
│
│── Multi-Precision-Arithmetic/
│   ├── docs/
│   │   ├── README.md
│   ├── src/
│   │   ├── mul_128bit.s
│
│── Privilege-Switching/
│   ├── docs/
│   │   ├── README.md
│   ├── src/
│   │   ├── context_switch.s
│
│── RISC-V-And-C-Interfacing/
│   ├── docs/
│   │   ├── README.md
│   ├── src/
│   │   ├── interface.c
│   │   ├── interface.s
│
│── Simple-Recursion/
│   ├── docs/
│   │   ├── README.md
│   ├── src/
│   │   ├── factorial.s
│   │   ├── fibonacci.s
│
│── README.md
```

## Modules
### Basic Arithmetic Operations
This module contains RISC-V assembly programs demonstrating fundamental operations such as array manipulation and arithmetic computations.

### Multi-Precision Arithmetic
This module implements multi-precision arithmetic operations such as 128-bit multiplication using low-level RISC-V assembly.

### Privilege Switching
This module includes programs that demonstrate privilege level switching in RISC-V, crucial for operating system development.

### RISC-V and C Interfacing
This module demonstrates interoperability between RISC-V assembly and C, allowing mixed-language programming.

### Simple Recursion
This module contains recursive implementations such as factorial and Fibonacci, showcasing stack-based function calls.

## Execution Instructions
To execute any of these programs, compile them using a RISC-V cross-compiler and run them in an appropriate RISC-V emulator (e.g., Spike):

```bash
riscv64-unknown-elf-gcc -nostartfiles -T link.ld program.s -o program.out
spike -d program.out
```
