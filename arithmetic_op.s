.section .text
.global main

main:
    la t0,n
    lw t1,0(t0)
    la t2,m
    lw t3,0(t2)
    la t6,ans

    add t4,t1,t3
    sw t4,0(t6)

    sub t4,t1,t3
    sw t4,0(t6)

    and t4,t1,t3
    sw t4,0(t6)

    or t4,t1,t3
    sw t4,0(t6)

    xor t4,t1,t3
    sw t4,0(t6) 
end: 
    li a7,93
    ecall

.section .data
n:    .word  6
m:     .word 10
ans:   .word 0
