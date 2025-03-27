.section .text
.global main

main:
    la t0,val1a
    la t1,val1b
    la t2,val2a
    la t3,val2b

    ld a1,0(t0)
    ld a2,0(t1)
    ld a3,0(t2)
    ld a4,0(t3)

    mul t4,a2,a4
    la t1,result4
    sd t4,0(t1)
    mulhu t5,a2,a4


    mul t4,a1,a4
    add t0,t5,t4
    sltu a6,t0,t5
    mul t5,a3,a2
    add t0,t0,t5
    sltu a7,t0,t5
    la t1,result3
    sd t0,0(t1)

    mulhu t4,a1,a4
    mulhu t5,a2,a3
    add t0,t4,a6
    sltu a5,t0,a6
    add t0,t0,a7
    sltu t2,t0,a7

    add t0,t0,t5
    sltu a6,t0,t5

    mul t3,a1,a3
    add t0,t0,t3
    sltu a7,t0,t3

    la t1,result2
    sd t0,0(t1)

    mulhu t4,a1,a3
    add t4,t4,a6
    add t4,t4,a7
    add t4,t4,a5
    add t4,t4,t5
    la t1,result1
    sd t4,0(t1)
   
.section .data
val1a:    .dword  0x1234567887654321
val1b:    .dword  0x1234567887654321
val2a:    .dword  0x8765432112345678
val2b:    .dword  0x8765432112345678
result1:   .dword 0
result2:   .dword 0
result3:   .dword 0
result4:   .dword 0
