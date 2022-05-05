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
		
		li $v0, 12
        	syscall
