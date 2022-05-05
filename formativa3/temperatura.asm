.data
	celsius: .byte 'C'
	fare: .byte 'F'
	kelvin: .byte 'K'
	const18: .float 1.8
	const32: .float 32.0
	zero: .float 0.0
	buffer: .space 1
.text
	main:	
		
		lb $t4, celsius
		lb $t5, fare
		lb $t6, kelvin
	

		li $v0, 12
		syscall
		
		move $t0, $v0 
		
		li $v0, 12
		syscall
		
		move $t1, $v0 

		li $v0, 6
		syscall
		l.s $f3, zero #inicializando $f3 com zero
		add.s $f3, $f3, $f0 # Guardando o valor lido em $f3
		
		#beq $t0, $t4, transformac
		
	transformac:
	
		beq $t1,$t5, cf
		#beq $t1, $t6, ck 
		
	
	cf:
		l.s $f4, const18
		l.s $f2, const32
		mul.s $f1, $f4, $f1
		add.s $f12, $f1, $f2
		li $v0, 2
		syscall

