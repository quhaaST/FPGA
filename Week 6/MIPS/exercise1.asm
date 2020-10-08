# Description : Result of expression!
.data
msg1: .asciiz " Enter the y number : "
msg2: .asciiz " Enter the z number : "
msg3: .asciiz " Enter the f number : "
msg4: .asciiz " Enter the q number : " 
result: .asciiz " The result of expression is: "
.text
li $v0,4 # enter y number
la $a0,msg1 #print msg1
syscall
li $v0,5
syscall
move $t1,$v0

li $v0,4 # enter z number
la $a0,msg2 #print msg2
syscall
li $v0,5
syscall
move $t2,$v0

mult $t2,$t2 # finding z squared
mflo $t2

mult $t1, $t2 # finding (y * z*z)
mflo $t1

li $v0,4 # enter f number
la $a0,msg3  
syscall
li $v0,5
syscall
move $t2,$v0

div $t1,$t2 # finding (y * z*z) / f
mflo $t1

li $v0,4 # enter q number
la $a0,msg4  
syscall
li $v0,5
syscall
move $t2,$v0

sub $t1,$t1,$t2 # finding result of expression

li $v0,4 # printing the result of expression
la $a0,result
syscall

li $v0,1
move $a0,$t1
syscall

li $v0,10
syscall
