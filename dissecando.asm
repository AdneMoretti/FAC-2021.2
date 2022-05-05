.data
	zero: .float 0.00000000
	imprimemaior: .asciiz "\n+\n"
	imprimemenor: .asciiz "\n-\n"
.text
	lwc1 $f4, zero

main:
	li $v0, 6
	syscall
	move $t0, $v0
	
	li $v0, 2
	add.s $f12, $f0, $f4
	syscall


	c.le.s $f12, $f4, menor
  	c.lt.s $t1, $zero, maior
  	
	menor:
  		li $v0, 4
  		la  $a0, imprimemenor
  		syscall 

		li $v0, 10
  		syscall
 
  	maior:
  		li $v0, 4
  		la  $a0, imprimemaior
  		syscall 
  		
  		li $v0, 10
  		syscall

	#fahr: l.s $f16 , const5+
	#l.s $f18 , const9
	#div.s $f16 ,$f16 ,$f18
	#l.s $f18 , const32
	#sub.s $f18 ,$f12 ,$f18
	#mul.s $f0 ,$f16 ,$f18
	#jr $ra
