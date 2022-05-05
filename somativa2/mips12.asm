.data

	quebra_linha: .asciiz "\n"
	adic: .asciiz "ADD: "
	subtr: .asciiz "SUB: "
	andop: .asciiz "AND: "
	orop: .asciiz "OR: "
	xorop: .asciiz "XOR: "
	mask: .asciiz "MASK: "
	sll1: .asciiz "SLL("
	srl1: .asciiz "SRL("
	sl2: .asciiz "): "

.text
	main:
		#ler o primeiro numero inteiro "a"
		li $v0, 5
		syscall #o valor lido e armazenado em $v0
		
		move $s0, $v0 #armazena o valor em $s0 ($s0 = a)
		
		#ler o segundo numero inteiro "b"
		li $v0, 5
		syscall
		
		move $s1, $v0 #armazena o valor em $s1 ($s1 = b)
		
		#ler o terceiro numero inteiro "c"
		li $v0, 5
		syscall
		
		move $s2, $v0 #armazena o valor em $s2 ($s2 = c)
		
		#adicao
		li $v0, 4
		la $a0, adic
		syscall
		add $t0, $s0, $s1 #($t0 = a + b)
		li $v0, 1
		move $a0, $t0 #($a0 = $t0)
		syscall
		
		#quebra de linha
		li $v0, 4
		la $a0, quebra_linha
		syscall
		
		#subtracao
		li $v0, 4
		la $a0, subtr
		syscall
		sub $t0, $s0, $s1 #($t0 = a - b)
		li $v0, 1
		move $a0, $t0 #($a0 = $t0)
		syscall
		
		#quebra de linha
		li $v0, 4
		la $a0, quebra_linha
		syscall
		
		#and
		li $v0, 4
		la $a0, andop
		syscall
		and $t0, $s0, $s1 #($t0 = a and b)
		li $v0, 1
		move $a0, $t0 #($a0 = $t0)
		syscall
		
		#quebra de linha
		li $v0, 4
		la $a0, quebra_linha
		syscall
		
		#or
		li $v0, 4
		la $a0, orop
		syscall
		or $t0, $s0, $s1 #($t0 = a or b)
		li $v0, 1
		move $a0, $t0 #($a0 = $t0)
		syscall
		
		#quebra de linha
		li $v0, 4
		la $a0, quebra_linha
		syscall
		
		#xor
		li $v0, 4
		la $a0, xorop
		syscall
		xor $t0, $s0, $s1 #($t0 = a xor b)
		li $v0, 1
		move $a0, $t0 #($a0 = $t0)
		syscall
		
		#quebra de linha
		li $v0, 4
		la $a0, quebra_linha
		syscall
		
		#mask
		li $v0, 4
		la $a0, mask
		syscall
		andi $s3, $s2, 31 #($s3 = c and 31)
		li $v0, 1
		move $a0, $s3 #($a0 = $s3)
		syscall
		
		#quebra de linha
		li $v0, 4
		la $a0, quebra_linha
		syscall
		
		#shift left logical com a quantia de mask
		li $v0, 4
		la $a0, sll1
		syscall
		#imprime o valor de mask
		li $v0, 1
		move $a0, $s3 
		syscall
		li $v0, 4
		la $a0, sl2
		syscall
		#faz o shift left logical
		sll $t0, $s0, $s3
		li $v0, 1
		move $a0, $t0
		syscall
		
		#quebra de linha
		li $v0, 4
		la $a0, quebra_linha
		syscall
		
		#shift right logical com a quantia de mask
		li $v0, 4
		la $a0, srl1
		syscall
		#imprime o valor de mask
		li $v0, 1
		move $a0, $s3 
		syscall
		li $v0, 4
		la $a0, sl2
		syscall
		#faz o shift left logical
		srl $t0, $s1, $s3
		li $v0, 1
		move $a0, $t0
		syscall
		
		#quebra de linha
		li $v0, 4
		la $a0, quebra_linha
		syscall
		
		li $v0, 10 #sair do programa
		syscall