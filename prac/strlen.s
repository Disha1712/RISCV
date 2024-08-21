.section .text
.global strlen
.global _start


_start:
strlen: 
    la a1, str
    li t0, 0
loop_start:
    add t1,t0,a1
    lb  t1,0(t1)
    beqz t1,loop_end
    addi t0,t0,1
    j	 loop_start
    
loop_end:
    mv a0,t0
    li a7,93  
    ecall
    

.data
str:    .ascii "Hello, World!"



