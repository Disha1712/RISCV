# Basic Arithmetic Operations

## Overview
This directory contains RISC-V assembly programs demonstrating fundamental operations such as array manipulation, arithmetic computations, and logical operations using low-level assembly instructions.

## Files Included
- `array.s` - Implements an array operation using a loop.
- `arithmetic_op.s` - Performs arithmetic and logical operations on two word-sized numbers.

## Problem Statements

### **1. Array Modification Using a Loop**
**Objective:**  
Write a RISC-V assembly program that initializes an integer array in memory with 5 elements. Each array element is modified by adding a constant equal to its index using a loop.

**Example:**  
Given input array: `[5, 3, 4, 6, 5]`  
After execution: `[5, 4, 6, 9, 9]`  

**Steps Performed:**  
1. Load an array into memory.  
2. Iterate over the array and modify each element.  
3. Store the modified values back in memory.  

---

### **2. Arithmetic and Logical Operations**
**Objective:**  
Write an assembly program that loads two word-sized numbers from memory and performs the following operations:  
- Addition  
- Subtraction  
- Logical AND  
- Logical OR  
- Logical XOR  

**Steps Performed:**  
1. Load two numbers from memory.  
2. Compute the results for each operation.  
3. Store the results back in memory.  

## Execution
These programs can be executed using Spike (RISC-V simulator) as follows:

```bash
spike --isa=rv64gc pk array.s
spike --isa=rv64gc pk arithmetic_op.s.s
