.data
	text1: .asciiz "Enter the string: "
	string_buffer: .space 256
	
.text
	la $a0, text1 # print text
	li $v0, 4
	syscall
	
	la $a0, string_buffer # read a string
	li $a1, 256
	li $v0, 8
	syscall
	
	move $t0, $a0
	
	la $a0, string_buffer # store a string
	move $a0, $t0
	li $v0, 4
	syscall
	
initial:
	li $t1, 256
	la $t2, string_buffer
	li $t3, 1
	j count_words
increase_cnt:
	addi $t3, $t3, 1 # increase counter if space 
	j count_words
count_words:
	lb $a0, 0($t2)
	addi $t2, $t2, 1
	addi $t1, $t1, -1
	beq $a0, 32, increase_cnt
	bgtz $t1, count_words

endloop:
	li $v0, 1 # print the result
	move $a0, $t3
	syscall
	
	li $v0, 10
	syscall
	
	
