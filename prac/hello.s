.section .text
.global _start

_start: addi  a0, x0, 1      # stdout
        la    a1, helloworld # load address of helloworld
        addi  a2, x0, 13     # length of string
        addi  a7, x0, 64     # write
        ecall                # syscall
        

        addi    a0, x0, 0   # return code=0
        addi    a7, x0, 93  # syscall to terminate prog
        ecall               

.data
helloworld:      .ascii "Hello World!\n"

