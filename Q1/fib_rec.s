.section .text
.global _start

_start:
	la t0,n
	lw a0,0(t0)	#a0=n
	call func
	
	li a7,93  	#terminate prog
	ecall
	
func:	
	addi sp,sp,-24
	sw ra,16(sp)		#store ret add
	sw a0,8(sp)             #store n
	
	
	beqz a0,zero		#base case n=0
	li t0,1
	beq a0,t0,one		#base case n=1
	
	addi a0,a0,-1
	call func		#rec call f(n-1)
	sw a0,0(sp)		#store f(n-1) in stack
	
	lw a0,8(sp)
	addi a0,a0,-2
	jal ra,func		#rec call f(n-2)
	
	lw t1,0(sp)		#t1=f(n-1)
	
	add a0,a0,t1		#f(n)=f(n-1)+f(n-2)
	
	j return
	
zero:
	li a0,0			#f(0)=0
	j return
one: 
	li a0,1			#f(1)=1
	j return
	
return:
	lw ra,16(sp)             #restore ret address
	addi sp,sp,24		 #deallocate stack space
	ret

.data
n:  .word 5

