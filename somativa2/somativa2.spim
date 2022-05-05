.data
	quebra: .asciiz "\n"
	ADD: .asciiz "ADD: "
	SUB: .asciiz "SUB: "
	AND: .asciiz "AND: "
	OR: .asciiz "OR: "
	XOR: .asciiz "XOR: "
	MASK: .asciiz "MASK: "
	SLL: .asciiz "SLL("
	SRL: .asciiz "SRL("
	parenteses: .asciiz "): "
.text
main:
	# Le o a e armazena em s1
	li $v0, 5
	syscall
	move $s1, $v0
	
	# Le o b e armazena em s1
	li $v0, 5
	syscall
	move $s2, $v0
	
	# Le o c e armazena em s1
	li $v0, 5
	syscall
	move $s3, $v0
	
operacoes:
	# Realiza as operações aritméticas e guarda em valores temporários	
	add $t0, $s1, $s2
	sub $t1, $s1, $s2
	and $t2, $s1, $s2
	or $t3, $s1, $s2
	xor $t4, $s1, $s2
	and $t5, $s3, 31
	move $s4, $t5
	#sll $t6, $s1, 1
	#srl $t7, $s2, 1
	sllv $t6, $s1, $t5
	srlv $t7, $s2, $t5
	#addi $s0, $s0,1
#deslocamento:
	#sll $t6, $s1, 1
	#srl $t7, $s2, 1
	#beq $s0, $t5, printar
	
	#sll $t6, $t6, 1 # Deslocamento a 
	#srl $t7, $t7, 1 # SLR em t6
	#addi $s0, $s0,1

	#j deslocamento
# Printa todas as soluções das operações aritméticas	
printar:
	li $v0, 4
  	la  $a0, ADD
  	syscall 
  		
	li $v0, 1
  	la  $a0, ($t0)
	syscall
	
	li $v0, 4
  	la  $a0, quebra
  	syscall 
	
	li $v0, 4
  	la  $a0, SUB
  	syscall
  	
  	li $v0, 1
  	la  $a0, ($t1)
  	syscall
  	
  	li $v0, 4
  	la  $a0, quebra
  	syscall
  	
  	li $v0, 4
  	la  $a0, AND
  	syscall
  	
  	li $v0, 1
  	la  $a0, ($t2)
  	syscall
  	
  	li $v0, 4
  	la  $a0, quebra
  	syscall
  	
  	li $v0, 4
  	la  $a0, OR
  	syscall
  	
  	li $v0, 1
  	la  $a0, ($t3)
  	syscall
  	
  	li $v0, 4
  	la  $a0, quebra
  	syscall
  	
  	li $v0, 4
  	la  $a0, XOR
  	syscall
  	
  	li $v0, 1
  	la  $a0, ($t4)
  	syscall
  	
  	li $v0, 4
  	la  $a0, quebra
  	syscall
  	
  	li $v0, 4
  	la  $a0, MASK
  	syscall
  	
  	li $v0, 1
  	la  $a0, ($t5)
  	syscall
  	
  	li $v0, 4
  	la  $a0, quebra
  	syscall
  	
  	li $v0, 4
  	la  $a0, SLL
  	syscall
  	
  	li $v0, 1
  	la  $a0, ($t5)
  	syscall
  	
  	li $v0, 4
  	la  $a0, parenteses
  	syscall
  	
  	li $v0, 1
  	la  $a0, ($t6)
  	syscall
  	
  	li $v0, 4
  	la  $a0, quebra
  	syscall
  	
  	li $v0, 4
  	la  $a0, SRL
  	syscall
  	
  	li $v0, 1
  	la  $a0, ($t5)
  	syscall
  	
  	li $v0, 4
  	la  $a0, parenteses
  	syscall

  	li $v0, 1
  	la  $a0, ($t7)
  	syscall
  	
  	li $v0, 4
  	la  $a0, quebra
  	syscall
  	