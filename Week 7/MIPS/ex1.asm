.data 
	text1: .asciiz "Enter a number: "
.text
	li $v0, 4 # print text
	la $a0, text1
	syscall
	
	li $v0, 5 # read integer
	syscall
	
	move $t0, $v0 # store integer
	
	bgtz $t0, positive_val # goto if positive
	beq $t0, $zero, zero_val # goto if zero
	blez $t0, negative_val # goto if negative

positive_val:
	addi $t1, $zero, 1
	j else
zero_val:
	addi $t1, $zero, 0
	j else
negative_val:
	addi $t1, $zero, -1
	j else
else:
	li $v0, 1 # print the result
	move $a0, $t1
	syscall
	
	li $v0, 10 # end the program
	syscall
	