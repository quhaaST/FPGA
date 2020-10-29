.data
	text1: .asciiz "Enter n: "
.text
	li $v0, 4 # print text
	la $a0, text1
	syscall 
	
	li $v0, 5 # read integer
	syscall
	
	move $t0, $v0 # store integer
	move $t2, $zero
	
	move $a0, $t0
	add $a1, $t2, 1
	move $a2, $t2
	
	move $v0, $a1 # store information to function variables
	move $v1, $a2
	jal func
	
	move $a0, $v0
	li $v0, 1 # print value
	syscall
	
	li $v0, 10 # terminate the program
	syscall
	
func:
	mul $v0, $v0, 2 # computing power in function variables
	addi $v1, $v1, 1
	bgt $a0, $v1, func # recurse while not complete
	jr $ra
