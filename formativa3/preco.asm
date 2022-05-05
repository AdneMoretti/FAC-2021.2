.data
	zero: .double 0.0
	quebra: .asciiz "\n"
	const100: .double 100.0
.text
	main:
		# Guardando o valor 100 no registradir $f4
		l.d $f4, const100
		
		li $v0, 7
		syscall
		l.d $f2, zero #inicializando $f2 com zero
		add.d $f2, $f2, $f0 # Guardando o valor lido em $f2
		
		li $v0, 7
		syscall
		l.d $f6, zero #inicializando $f1 com zero
		add.d $f6, $f6, $f0 # Guardando o valor lido em $f6
		
		li $v0, 7
		syscall
		l.d $f8, zero #inicializando $f3 com zero
		add.d $f8, $f8, $f0 # Guardando o valor lido em $f8

	calcula1:
		# Calculando a porcentagem de lucro
		div.d $f6, $f6, $f4
		mul.d $f10, $f2, $f6
		# Calculando a porcentagem de impostos
		div.d $f8, $f8, $f4
		mul.d $f14, $f2, $f8
		
	exit:	
		add.d $f10, $f10, $f14  #Somando as porcentagens calculadas
		add.d $f12, $f10, $f2 # Somando as porcentagens com o preço bruto
		#Printando o preço final
		li $v0, 3
		syscall
		
		#Printa o \n
		li $v0, 4
		la $a0, quebra
		syscall
		
		li $v0, 10
		syscall