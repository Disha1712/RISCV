.section .text
.global main

main:
    la t0,val1
    la t1,val2
    la t6,result1
    la t5,result2
    ld t2,0(t0)
    ld t3,0(t1)
    mul t4,t2,t3
    sd t4,0(t5)
    mulhu t4,t2,t3
    sd t4,0(t6)
.section .data
val1:    .dword  0x1234567887654321
val2:    .dword  0x8765432112345678
result1:   .dword  0
result2:    .dword 0
