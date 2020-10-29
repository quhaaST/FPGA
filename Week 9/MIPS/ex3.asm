.data
	text1: .asciiz "Enter 8 float numbers: "
	text2: .asciiz "The MIN number is "
.text
	li $v0, 4 # print text
	la $a0, text1
	syscall
	
	li $v0, 6 # read 8 numbers
	syscall

	mov.s $f1, $f0
	li $v0, 6
	syscall
	
	mov.s $f2, $f0
	li $v0, 6
	syscall
	
	mov.s $f3, $f0
	li $v0, 6
	syscall
	
	mov.s $f4, $f0
	li $v0, 6
	syscall
	
	mov.s $f5, $f0
	li $v0, 6
	syscall
	
	mov.s $f6, $f0
	li $v0, 6
	syscall
	
	mov.s $f7, $f0
	li $v0, 6
	syscall
	
	mov.s $f8, $f0
comparasion:    # compare values using greedy algorithm
	c.lt.s $f2, $f1
	bc1t change_2_1
	
	c.lt.s $f3, $f1
	bc1t change_3_1
	
	c.lt.s $f4, $f1
	bc1t change_4_1
	
	c.lt.s $f5, $f1
	bc1t change_5_1
	
	c.lt.s $f6, $f1
	bc1t change_6_1
	
	c.lt.s $f7, $f1
	bc1t change_7_1
	
	c.lt.s $f8, $f1
	bc1t change_8_1
	
	j end
	
change_2_1: # change values
	mov.s $f1, $f2
	j comparasion
	
change_3_1:
	mov.s $f1, $f3
	j comparasion
	
change_4_1:
	mov.s $f1, $f4
	j comparasion
	
change_5_1:
	mov.s $f1, $f5
	j comparasion
	
change_6_1:
	mov.s $f1, $f6
	j comparasion
	
change_7_1:
	mov.s $f1, $f7
	j comparasion
	
change_8_1:
	mov.s $f1, $f8
	j comparasion
	
end: 
	li $v0, 4 # print text
	la $a0, text2
	syscall 
	
	mov.s $f12, $f1 # print answer
	li $v0, 2
	syscall
	
	li $v0, 10 # terminate program
	syscall