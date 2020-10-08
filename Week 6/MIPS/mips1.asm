# Description : Result of expression!
.data
msg1: .asciiz " Enter the y number : "
msg2: .asciiz " Enter the z number : "
msg3: .asciiz " Enter the f number : "
msg4: .asciiz " Enter the q number : " 
result: .asciiz " The result of expression is: "
.text
# j = $t0
main:
    li $t0,0
    li $t1,1
    li $t3,0
loop:
    bgt $t0,15,exit
    add $t3,$t2, $t1
    move $t1, $t2
    move $t2, $t3
    
    j loop
    
    li $v0, 4 # printing the result of expression
	la $a0, result
	syscall
	li $v0, 1
	move $a0, $t3
	syscall
	li $v0, 10
	syscall
    
exit:
	li $v0, 4 # printing the result of expression
	la $a0, result
	syscall
	li $v0, 1
	move $a0, $t5
	syscall
	li $v0, 10
	syscall
