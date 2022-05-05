.data
    	quebra: .asciiz "\n"
	sim: .asciiz "sim"
	nao: .asciiz "nao"
	invalida: .asciiz "Entrada invalida."

.text

    main:
        #Lendo o numero
        li $v0, 5	
        syscall
        move $t4, $v0

	add $t0, $zero, 2
	ble $t4, $zero, inval
	beq $t4, 1, nao_primo
	beq $t4, 2, primo
	
	div $t5, $t4, 2
	mfhi $t6
	beq $t6, 0 , nao_primo
	
	div $t3, $t4, 2
	
	verificar:
		
		div $t5, $t4, $t0
		mfhi $t6
		beq $t6, 0 , nao_primo
		mul $t0, $t0, $t0
		ble $t0, $t4, primo
		add $t0, $t0, 2
		j verificar

	inval:
		li $v0, 4
		la $a0, invalida
		syscall
		j sair	
		
	nao_primo:
	
		li $v0, 4
		la $a0, nao
		syscall
		j sair

	primo:
		li $v0, 4
		la $a0, sim
		syscall
		j sair
	sair:
		li $v0, 4
		la $a0, quebra
		syscall

		li $v0, 10	
       		syscall
