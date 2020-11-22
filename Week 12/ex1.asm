.data
	text1: .asciiz "Write your number: "
	coef: .float 0.0
	coef_2: .float 0.00001
.text
	li $v0, 4
	la $a0, text1
	syscall
	
	li $v0, 6
	syscall
	
	mov.s $f2, $f0
	lwc1 $f1, coef
	lwc1 $f4, coef_2
	
	
loop:
	add.s $f1, $f1, $f4
	mul.s $f3, $f1, $f1
	c.le.s $f2, $f3
	bc1t end
	j loop
end:
	mov.s $f12, $f1
	li $v0, 2
	syscall
	
	li $v0, 10
	syscall