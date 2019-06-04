eheader:
	.byte	0x7F, 0x45, 0x4C, 0x46	# e_ident[EI_MAG0] through e_ident[EI_MAG3]
	.byte	2						# e_ident[EI_CLASS]
	.byte	1						# e_ident[EI_DATA]
	.byte	1						# e_ident[EI_VERSION]
	.byte	0,0,0,0,0,0,0,0 		# e_ident[EI_OSABI]
	.globl	_start
	.type	_start, @function
_start:
	li		a0, 253		# a0 = 0
	li		a7,	93
	ecall
