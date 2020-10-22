.data
	text1: .asciiz "Enter n to get sum of 1 to n numbers: "
.text
	li $v0, 4 # print text
	la $a0, text1
	syscall 
	
	li $v0, 5 # read integer
	syscall
	
	move $t0, $v0 # store integer
	move $t2, $zero
	
	move $a0, $t0
	move $a1, $t2
	
	jal recursion
	
	move $a0, $v0
	li $v0, 1 # print value
	syscall
	
	li $v0, 10 # terminate the program
	syscall
	
recursion:
	add $v0, $a0, $a1
	addi $v1, $a0, -1
	move $a1, $v0
	move $a0, $v1
	bgtz $v1, recursion # recurse while not complete
	jr $ra
	