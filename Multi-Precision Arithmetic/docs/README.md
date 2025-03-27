# Multi-Precision Arithmetic

## Overview
This directory contains RISC-V assembly programs for multi-precision arithmetic, including 64-bit and 128-bit multiplication using assembly-level operations.

## Files Included
- `mul_64bit.s` - Implements 64-bit × 64-bit multiplication.
- `mul_128bit.s` - Implements 128-bit × 128-bit multiplication.

## Problem Statements

### **1. 64-bit × 64-bit Multiplication**
**Objective:**  
Write a RISC-V assembly program that reads two 64-bit numbers from memory, performs a multiplication operation, and stores the 128-bit result in memory.

**Example Input:**  
```
val1 = 0x123456789ABCDEF
val2 = 0x6253749231578967
```

**Expected Output:**  
```
result = 0x0DB6A7C3E91F60F8D6786543F
```

**Steps Performed:**  
1. Load two 64-bit numbers from memory.  
2. Perform multiplication using `mul` and `mulhu` instructions.  
3. Store the 128-bit result back in memory.  

---

### **2. 128-bit × 128-bit Multiplication**
**Objective:**  
Write a RISC-V assembly program that reads two 128-bit numbers from memory, performs a multiplication operation, and stores the 256-bit result in memory. Since each register can only store 64-bit values, the operation is split into multiple partial multiplications.

**Example Input:**  
```
val1 = 0x123456789ABCDEF123456789ABCDEF
val2 = 0x62537492315789676253749231578967
```

**Expected Output:**  
```
result = 0x0DAF9B60D8E3C2199B6654C3A7D8B6F0E7C5D4A3B2C1D0F
```

**Steps Performed:**  
1. Load two 128-bit numbers from memory, split into 64-bit chunks.  
2. Compute partial products using multiple 64-bit multiplications.  
3. Accumulate the results correctly to obtain the full 256-bit product.  
4. Store the final result back in memory.  

## Execution
These programs can be executed using Spike (RISC-V simulator) as follows:

```bash
riscv64-unknown-elf-gcc -nostartfiles -T link.ld mul_64bit.s -o mul_64bit.out
spike -d mul_64bit.out

riscv64-unknown-elf-gcc -nostartfiles -T link.ld mul_128bit.s -o mul_128bit.out
spike -d mul_128bit.out
