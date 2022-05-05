	.data
	.text
main:
	li $v0, 5
	syscall
	move $s1, $v0
	
	li $v0, 5
	syscall
	
	move $s2, $v0
	
	add $s0, $s1, $s2
	
	li $v0, 1
	move $a0, $s0
	syscall
	