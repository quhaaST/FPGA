.data
	text1: .asciiz "Enter x value: "
	text2: .asciiz "Enter y value: "
	coef_a: .float 5.4
	coef_b: .float 12.3
	coef_c: .float 18.23
	coef_d: .float 8.23
.text
	li $v0, 4 # print text
	la $a0, text1
	syscall 
	
	li $v0, 6 # read float number
	syscall
	
	mov.s $f1, $f0
	
	li $v0, 4 # print text
	la $a0, text2
	syscall 
	
	li $v0, 6  # read float number
	syscall
	
	mov.s $f2, $f0
	
	lwc1 $f3, coef_a # load coefficents
	lwc1 $f4, coef_b
	lwc1 $f5, coef_c
	lwc1 $f6, coef_d
	
	mul.s $f3, $f3, $f1 # make computations
	mul.s $f3, $f3, $f2
	
	mul.s $f4, $f4, $f2
	mul.s $f5, $f5, $f1
	sub.s $f3, $f3, $f4
	add.s $f3, $f3, $f5
	sub.s $f3, $f3, $f6
	
	mov.s $f12, $f3
	
	li $v0, 2 # print answer
	syscall
	
	li $v0, 10 # terminate the program
	syscall
	
	