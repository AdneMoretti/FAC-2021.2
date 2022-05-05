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
        move $s0, $v0
	
	li $v0, 5	
        syscall
        move $s1, $v0
        
        add $t0, $zero, 2
        
        ble $s0, 1, inval
        ble $s1, 1, inval
        

        mmc:
		bgt $t0, $s1, mdc
		mul $t1, $s0, $t0
		div $t2, $t1, $s1
		mfhi $t5
		beq $t5, 0, obtem
		add $t0, $t0, 1
		j mmc
	
	obtem:
		add $t4, $t1, 0
		add $t0, $s1, 1
		
	mdc:
        	beq $s1, 0, return
        	div $t3, $s0, $s1
        	mfhi $t3
        	move $s0, $s1
        	move $s1, $t3
        	j mdc
        return:
        	li $v0, 1
		la $a0, ($s0)
		syscall
		
        	li $v0, 4
		la $a0, quebra
		syscall
		
		li $v0, 1
		la $a0, ($t4)
		syscall
		j sair
		
	inval:
		li $v0, 4
		la $a0, invalida
		syscall
		j sair	
		
	sair:
		li $v0, 4
		la $a0, quebra
		syscall

		li $v0, 10	
       		syscall
