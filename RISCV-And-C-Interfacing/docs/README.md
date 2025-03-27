# RISC-V Assembly and C Interfacing

## Overview
This repository demonstrates the interaction between RISC-V assembly and C programs. The examples cover function calls, global variable access, and string manipulation.

## Files Included
- `display_student_profile.c` - Displays a formatted student profile.
- `student_profile.s` - RISC-V assembly interacting with C to print student details.
- `reverse_string.c` - Calls an assembly function to reverse a string.
- `reverse.s` - Implements string reversal in RISC-V assembly.

---

## Problem Statements

### **1. Interfacing C and Assembly for Student Profile**
**Objective:**  
Implement a RISC-V assembly program (`student_profile.s`) that interacts with C functions to print a student's profile.

**Tasks Performed:**  
- Define a global variable `course_name` in C.
- Implement `getCourse()` in C to return a course name as a string.
- Call `getCourse()` from assembly.
- Implement `displayStudentProfile()` in C to print:  
  ```
  First Name: <first_name>, Last Name: <last_name>, Course: <course_name>
  ```
- Pass arguments from assembly to C to display the profile.

**Example Output:**  
```
First Name: John, Last Name: Doe, Course: RISC-V Programming
```

---

### **2. String Reversal in Assembly**
**Objective:**  
Write a RISC-V assembly function (`reverse.s`) that reverses a given string and returns its length.

**Tasks Performed:**  
- Define a function `reverse()` in assembly that:
  - Reverses a string passed from C.
  - Stores the reversed string in the `.data` section.
  - Returns the length of the string.
- Call `reverse()` from `reverse_string.c` and print the result.

**Example Input:**  
```
input_string: Hello
```

**Expected Output:**  
```
reverse_string: olleH, length = 5
```

---

## Execution
These programs can be compiled and executed using `riscv64-unknown-elf-gcc` and a RISC-V emulator:

### **Compiling and Running Student Profile Program**
```bash
riscv64-unknown-elf-gcc -o student_profile display_student_profile.c student_profile.s
qemu-riscv64 student_profile
```

### **Compiling and Running String Reversal Program**
```bash
riscv64-unknown-elf-gcc -o reverse_string reverse_string.c reverse.s
qemu-riscv64 reverse_string
```

---
