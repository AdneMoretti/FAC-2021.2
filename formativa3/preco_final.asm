.data
	zero: .float 0.0
	quebra: .asciiz "\n"
	const100: .float 100.0
.text
	main:
		l.s $f4, const100
		
		li $v0, 6
		syscall
		l.s $f2, zero #inicializando $f2 com zero
		add.s $f2, $f2, $f0 # Guardando o valor lido em $f2
		
		li $v0, 6
		syscall
		l.s $f1, zero #inicializando $f1 com zero
		add.s $f1, $f1, $f0 # Guardando o valor lido em $f3
		
		li $v0, 6
		syscall
		l.s $f3, zero #inicializando $f3 com zero
		add.s $f3, $f3, $f0 # Guardando o valor lido em $f3

	calcula1:
		# Calculando a porcentagem de lucro
		div.s $f1, $f1, $f4
		mul.s $f5, $f2, $f1
		# Calculando a porcentagem de impostos
		div.s $f3, $f3, $f4
		mul.s $f6, $f2, $f3
		
	exit:	
		add.s $f6, $f6, $f5  #Somando as porcentagens calculadas
		add.s $f12, $f6, $f2 # Somando as porcentagens com o preço bruto
		#Printando o preço final
		li $v0, 2
		syscall
		
		#Printa o \n
		li $v0, 4
		la $a0, quebra
		syscall
		
		li $v0, 10
		syscall
	
