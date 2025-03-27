# Recursion in RISC-V

## Overview
This directory contains RISC-V assembly programs demonstrating recursive algorithms such as the factorial and Fibonacci sequence. 

## Files Included
- `factorial.s` - Computes the factorial of a given number using recursion.
- `fibonacci.s` - Computes the nth Fibonacci number using recursion.

## Problem Statements

### **1. Recursive Factorial Calculation**
**Objective:**  
Write a RISC-V assembly program that computes the factorial of an integer using recursion. The program demonstrates how function calls push return addresses onto the stack and how intermediate values are stored.

**Example Input:**  
```
n = 5
```

**Expected Output:**  
```
result = 120
```

**Steps Performed:**  
1. Check base case: if `n == 0`, return 1.  
2. Push saved registers onto the stack to preserve context.  
3. Recursively compute `factorial(n-1)`.  
4. Multiply `n * factorial(n-1)` and return the result.  
5. Restore saved registers before returning.  

---

### **2. Recursive Fibonacci Calculation**
**Objective:**  
Write a RISC-V assembly program that computes the nth Fibonacci number using recursion. The implementation showcases efficient register management and stack usage to maintain function calls.

**Example Input:**  
```
n = 6
```

**Expected Output:**  
```
result = 8
```

**Steps Performed:**  
1. Check base cases: if `n == 0`, return 0; if `n == 1`, return 1.  
2. Push necessary registers onto the stack before recursion.  
3. Recursively compute `fib(n-1) + fib(n-2)`.  
4. Restore registers and return the final result.  

## Execution
These programs can be executed using Spike (RISC-V simulator) as follows:

```bash
riscv64-unknown-elf-gcc -nostartfiles -T link.ld factorial.s -o factorial.out
spike -d factorial.out

riscv64-unknown-elf-gcc -nostartfiles -T link.ld fibonacci.s -o fibonacci.out
spike -d fibonacci.out
```

This implementation ensures proper stack handling by saving return addresses and caller-saved registers before making recursive calls, preventing data corruption and ensuring correctness.
