.data
	text1: .asciiz "Enter Fahrenheit temperature: "
	celsian: .float 0.0
	coef_a: .float 5.0
	coef_b: .float 9.0
	coef_c: .float 32.0
.text
	li $v0, 4 # print text
	la $a0, text1
	syscall
	
	li $v0, 6 # read float
	syscall
	
	lwc1 $f1, coef_c # load coefficents
	lwc1 $f2, coef_a
	lwc1 $f3, coef_b
	
	sub.s $f0, $f0, $f1 # making some arithmetics
	mul.s $f0, $f0, $f2
	div.s $f0, $f0, $f3
	
	s.s $f0, celsian # storing value into label
	
	li $v0, 2 # writing a result
    	lwc1 $f12, celsian
    	syscall
    	
    	li $v0, 10 # terminating the program
    	syscall