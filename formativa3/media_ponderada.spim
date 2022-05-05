.data
	zero: .float 0.0
	quebra: .asciiz "\n"
.text
	main:
		l.s $f4, zero #	Colocando o 0 em $f4
		
		#Lendo o numero de numeros a serem lidos e armazenando em $s0
		li $v0, 5
		syscall
		move $s0, $v0
		
		#Inicializando s1 com zero
		move $s1, $zero

	loop:
		#Adicionando 1 em $s1 a cada iteracao
		add $s1, $s1, 1
		
		#Lendo o primeiro float e guardando em $f1
		li $v0, 6
		syscall
		l.s $f1, zero
		add.s $f1, $f1, $f0
		
		#Lendo o segundo float e guardando em $f2
		li $v0, 6
		syscall
		l.s $f2, zero #inicializando $f2 com zero
		add.s $f2, $f2, $f0 # Guardando o valor lido em $f2
		
		add.s $f10, $f10, $f1 # Colocando a soma de todos os numeros inseridos no registrador $f10
		
		mul.s $f3, $f1, $f2 # Multiplicacao do numero pelo peso
		
		add.s $f4, $f4, $f3 # Guardando no registrador $f4 a soma de todas as multiplicações
		
		blt $s1, $s0, loop #Se $s1 for menor que $s2, volta para loop
		
	exit:
		#Calcula a media ponderada
		div.s $f12, $f4, $f10
		li $v0, 2
		syscall
		
		#Printa o \n
		li $v0, 4
		la $a0, quebra
		syscall
		
		li $v0, 10
		syscall
	
	
