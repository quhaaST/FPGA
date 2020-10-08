.data
space : .asciiz " "
.text

add $t1, $zero,0
add $t2, $zero,1
li $v0,1
move $a0,$t2
syscall
li $v0, 4
la $a0, space
syscall


add $t3,$t2,$t1
add $t1,$t2,$zero
add $t2,$t3,$zero
li $v0,1
move $a0,$t2
syscall
li $v0, 4
la $a0, space
syscall

add $t3,$t2,$t1
add $t1,$t2,$zero
add $t2,$t3,$zero
li $v0,1
move $a0,$t2
syscall
li $v0, 4
la $a0, space
syscall

add $t3,$t2,$t1
add $t1,$t2,$zero
add $t2,$t3,$zero
li $v0,1
move $a0,$t2
syscall
li $v0, 4
la $a0, space
syscall

add $t3,$t2,$t1
add $t1,$t2,$zero
add $t2,$t3,$zero
li $v0,1
move $a0,$t2
syscall
li $v0, 4
la $a0, space
syscall

add $t3,$t2,$t1
add $t1,$t2,$zero
add $t2,$t3,$zero
li $v0,1
move $a0,$t2
syscall
li $v0, 4
la $a0, space
syscall

add $t3,$t2,$t1
add $t1,$t2,$zero
add $t2,$t3,$zero
li $v0,1
move $a0,$t2
syscall
li $v0, 4
la $a0, space
syscall

add $t3,$t2,$t1
add $t1,$t2,$zero
add $t2,$t3,$zero
li $v0,1
move $a0,$t2
syscall
li $v0, 4
la $a0, space
syscall

add $t3,$t2,$t1
add $t1,$t2,$zero
add $t2,$t3,$zero
li $v0,1
move $a0,$t2
syscall
li $v0, 4
la $a0, space
syscall

add $t3,$t2,$t1
add $t1,$t2,$zero
add $t2,$t3,$zero
li $v0,1
move $a0,$t2
syscall
li $v0, 4
la $a0, space
syscall

syscall
li $v0, 10
syscall