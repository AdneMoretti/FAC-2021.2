.data
     str: 	.asciiz "Ola mundo"
.text
main:
	li $v0, 4
	la $a0, str
	syscall