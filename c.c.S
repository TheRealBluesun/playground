	.file	"c.c"
	.option nopic
	.text
	.globl	mystr
	.data
	.align	3
	.type	mystr, @object
	.size	mystr, 19
mystr:
	.string	"This is a test str"
	.globl	myarr
	.align	3
	.type	myarr, @object
	.size	myarr, 80
myarr:
	.dword	1
	.dword	2
	.dword	3
	.dword	4
	.dword	5
	.dword	6
	.dword	7
	.dword	8
	.dword	9
	.dword	0
	.globl	bytes
	.align	3
	.type	bytes, @object
	.size	bytes, 10
bytes:
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.text
	.align	1
	.globl	dostuff
	.type	dostuff, @function
dostuff:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	sb	zero,0(a5)
	nop
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	dostuff, .-dostuff
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	9
	.word	8
	.word	7
	.word	6
	.word	5
	.word	4
	.word	3
	.word	2
	.word	1
	.text
	.align	1
	.globl	_start
	.type	_start, @function
_start:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	addi	s0,sp,64
	lui	a5,%hi(.LC0)
	ld	a1,%lo(.LC0)(a5)
	addi	a4,a5,%lo(.LC0)
	ld	a2,8(a4)
	addi	a4,a5,%lo(.LC0)
	ld	a3,16(a4)
	addi	a4,a5,%lo(.LC0)
	ld	a4,24(a4)
	addi	a5,a5,%lo(.LC0)
	ld	a5,32(a5)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	sd	a5,-32(s0)
	sw	zero,-20(s0)
	j	.L3
.L4:
	lui	a5,%hi(buff.1606)
	addi	a0,a5,%lo(buff.1606)
	call	dostuff
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L3:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,9
	ble	a4,a5,.L4
	lui	a5,%hi(buff.1606)
	lbu	a5,%lo(buff.1606)(a5)
	sext.w	a5,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	_start, .-_start
	.local	buff.1606
	.comm	buff.1606,255,8
	.ident	"GCC: (GNU) 8.2.0"
