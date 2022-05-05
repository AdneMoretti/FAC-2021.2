.data
    	quebra: .asciiz "\n"
	str1: .space 200
	str2: .space 200

.text

    main:
    	move $s3, $zero
        #Lendo o tamanho das strings
        li $v0, 5	
        syscall
        move $s1, $v0

        # Lê a string 1
        li $v0, 8	
        la $a0, str1
        la $a1, 200
        syscall
	
	# lê a string 2
        li $v0, 8	
        la $a0, str2
        la $a1, 200
        syscall

	# Armazena as strings dentro dos registrador $t0 e $t1
	la $t0, str1
	la $t1, str2
	
	# Inicializa s2 com o 0
	move $s2, $zero
	
	
	loop:
		# Quando o valor do registrador s2 for igual a s1, vai para o procedimento fora
		beq $s2, $s1, exit
		
		# Carrega cada caracter 
		lb $t2, 0($t0)
        	lb $t3, 0($t1)
        	
        	#Verifica se o caracter é igual ou não
        	sub $t4, $t2, $t3
        	# Se o caracter for igual,pula para o prcedimento soma 
        	beq $t4, $zero, soma
        	# Se não for igual, vai para o procedimento verifica_prox
		j verifica_prox
		
	#Procedimento que vai pular acrescenta um aos caracteres verificados e no $s2
	verifica_prox: 
		add $t0, $t0, 1
        	add $t1, $t1, 1
        	add $s2, $s2, 1
        	j loop
	
	# Procedimento que soma a quantidade de acertos e os caracteres
	soma:	
		add $s3, $s3, 1
		add $t0, $t0, 1
        	add $t1, $t1, 1
        	add $s2, $s2, 1
		j loop
		
	# Procedimento que printa a quantidade de acertos e finaliza o programa
	exit:
		li $v0, 1
		move $a0, $s3
		syscall
		
		li $v0, 4
		la $a0, quebra
		syscall
		
		li $v0, 10	
       		syscall
