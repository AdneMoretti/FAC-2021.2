.data
    	quebra: .asciiz "\n"
	str1: .space 200

.text

    main:
        #Lendo o tamanho das strings
        li $v0, 5	
        syscall
        move $s1, $v0

        # Lê a string 1
        li $v0, 8	
        la $a0, str1
        la $a1, 200
        syscall

	# Armazena a string dentro dos registrador $t0 e $t1
	la $t0, str1
	la $t1, str1

	loop: 
		lb $t3, ($t1) # Coloca o byte de $t1 no $t3
		beq $t3, $zero, tras 
		add $t1, $t1, 1 # Caso $t3 seja diferente de 0, adiciona 1 ao $t1
		j loop # Volta para a execução do procedimento loop

	#Procedimento que vai fazer com que o $t1 percorra de tras pra frente
	tras:
		sub $t1, $t1, 2

	verifica:
		bge $t0, $t1, palindromo# Se o registrador $t3 for maior ou igual a $t4,vai para o procedimento palindromo
		lb $t3, ($t0) # Coloca o byte de $t0 no $t3
		lb $t4, ($t1) # Coloca o byte de $t1 no $t3
		bne $t3, $t4, nao_palindromo # Se o registrador $t3 nao for igual a $t4, vai para o procedimento nao_palindromo
		
		# Avança um bit de t0 e volta um bit de $t1
		add $t0, $t0, 1 
		sub $t1, $t1, 1 
		
		j verifica
	
	# Se nao for palindromo, printa 0	
	nao_palindromo:
		li $v0, 1
		move $a0, $zero
		syscall
		j sair
	
	#Se for palindromo printa 1
	palindromo:
		# Adiciona um em 0 e guarda no registrador s3
		add $s3, $zero, 1
		
		# Printa o numero 1 
		li $v0, 1
		move $a0, $s3
		syscall
		j sair
	sair:
		# Printa a quebra de linha
		li $v0, 4
		la $a0, quebra
		syscall
		
		# Syscall para sair
		li $v0, 10	
       		syscall
