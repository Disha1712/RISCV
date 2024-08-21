.section .text
.global _start

_start:
    la t0, n            
    lw a0, 0(t0)        
    li a1, 'A'          # From rod
    li a2, 'C'          # To rod
    li a3, 'B'          # Aux rod
    jal ra, tow         

    li a7, 93          
    ecall

tow:
    addi sp, sp, -40    
    sw ra, 32(sp)       
    sw a0, 24(sp)       
    sw a1, 16(sp)       
    sw a2, 8(sp)       
    sw a3, 0(sp)       
    
    beqz a0,return
    
    lw a0, 24(sp)
    addi a0, a0, -1
    lw a1, 16(sp)
    lw a2, 0(sp)
    lw a3, 8(sp)
    jal ra, tow
    jal ra,primd
    
    lw a0, 24(sp)
    lw a1, 0(sp)
    lw a2, 8(sp)
    lw a3, 16(sp)
    jal ra, tow
    
    lw ra,32(sp)
    addi sp,sp,40
    ret
   


primd:
    # Print "Move disk X from rod Y to rod Z"
    li a7, 64           #write
    li a0, 1            #stdout
    la a1, strmd        #Load address
    li a2, 10           #len of str
    ecall

    # Print disk number
    lw t0, 24(sp)       #load n
    addi t0, t0, '0'    #convert to ascii
    mv a1, t0           #move to a1
    li a2, 1            #len of one char
    ecall

    # Print "from rod"
    la a1, from
    li a2, 9
    ecall

    # Print 'from rod' character
    lw t0, 16(sp)
    mv a1, t0
    li a2, 1
    ecall

    # Print " to rod "
    la a1, to
    li a2, 7
    ecall

    # Print 'to rod' character
    lw t0, 8(sp)
    mv a1, t0
    li a2, 1
    ecall

    # Print newline
    la a1, newline
    li a2, 1
    ecall

    ret

return:
	lw ra, 32(sp)       #Restore ret add
    	addi sp, sp, 40     #Deallocate stack space
    	ret                 


.data
n:	.word 3
strmd:	.string	"Move disk "
from:	.string	" from rod "
to:	.string	" to rod "
newline:	.ascii	"\n"

 
    
    

	


