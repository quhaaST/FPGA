.data
	text1: .asciiz "Write your number: "
	coef: .float 0.0
	coef_2: .float 2.0
	coef_3: .float 0.00001
.text
	li $v0, 4
	la $a0, text1
	syscall
	
	li $v0, 6
	syscall
	
	mov.s $f2, $f0#right value
	lwc1 $f1, coef #left value
	lwc1 $f4, coef_2 #2.0
	lwc1 $f5, coef_3 #0.00001
	
loop:
	mov.s $f12, $f1
	li $v0, 2
	syscall
	sub.s $f3, $f2, $f1
	c.le.s $f3, $f5
	bc1t end
	div.s $f6, $f3, $f4
	mul.s $f8, $f6, $f6
	c.le.s $f8, $f0
	bc1t change_left
	bc1f change_right
	j loop
change_left:
	mov.s $f1, $f6
	j loop
change_right:
	mov.s $f2, $f6
	j loop
end:
	mov.s $f12, $f1
	li $v0, 2
	syscall
	
	li $v0, 10
	syscall
