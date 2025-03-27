.section .text
.global main

main:
    la t0,array
    la t3,n
    lb t4,0(t3)
    li t1,0

loop:
    lb t2,0(t0)
    add t2,t2,t1
    sb t2,0(t0)
    addi t0,t0,1
    addi t1,t1,1
    bne t1,t4,loop
end: 
    li a7,93
    ecall

.section .data
array: .byte 6,5,4,3,2,1
n:    .word  6
