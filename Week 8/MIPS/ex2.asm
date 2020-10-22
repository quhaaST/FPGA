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
	
recursion:
	blez $t0, end # check if recursion should stop
	add $t2, $t2, $t0
	addi $t0, $t0, -1 
	j recursion
	
end:
	li $v0, 1 # print value
	move $a0, $t2
	syscall
	
	li $v0, 10 # terminate the program
	syscall
