.section .text
.global main

main :
	la t0, mtrap_handler
    	csrw mtvec, t0
    	
    	li t0,0x80
    	csrw mstatus, t0
    	 	
    	la t0, ucode
    	csrw mepc, t0
    	mret

mtrap_handler :
	csrr t0, mstatus
    	csrr t1, mepc
    	csrr t2, mcause
    	csrr t3, mtvec

    	la t4, ucode
    	csrw mepc, t4
    	mret
	
ucode :
	li a0,42           #random operation
	ecall
