.section .text
.global _start

_start:
	la t0,n 	# load address of n
	lw t1,0(t0)     #t1=n
	beqz t1,zero    #Base case
	li t2,0         #F(0)=0   - prevprev
	li t3,1         #F(1)=1   -prev
	addi t1,t1,-1   
	
loop:	
	blez t1,end
	add t4,t2,t3     #F(n)=F(n-1)+ F(n-2)   -curr
	mv t2,t3         #prevprev=prev
	mv t3,t4         #prev=curr
	addi t1,t1,-1
	j loop
	
zero:                     #F(0)=0
	li t3,0              
	j end

end:
	mv a0,t3            #terminate prog and set exit code as F(n)
	li a7,93
	ecall

.data
n:  .word 5

