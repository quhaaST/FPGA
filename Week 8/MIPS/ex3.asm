.data
	e: .float 2.71828
	pi: .float 3.1415
	answer: .float 0.0
.text
main:
	l.s $f2, e # load values
	l.s $f4, pi
	jal func
	
	s.s $f2, answer # storing value into label
	
	li $v0, 2 # writing a result
    	lwc1 $f12, answer
    	syscall
    	
    	li $v0, 10 # terminating the program
    	syscall
func:
	mul.s $f2, $f2, $f2 # making some arithmetics
	div.s $f2 , $f2, $f4
	jr $ra
