	.arch armv8-a
	.file	"strp.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"strp.c"
	.align	3
.LC1:
	.string	"s != NULL"
	.text
	.align	2
	.global	Str_getLength
	.type	Str_getLength, %function
Str_getLength:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	wzr, [sp, 44]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L3
	adrp	x0, __PRETTY_FUNCTION__.5
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.5
	mov	w2, 28
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L4:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L3:
	ldr	x0, [sp, 24]
	add	x1, x0, 1
	str	x1, [sp, 24]
	ldrb	w0, [x0]
	strb	w0, [sp, 43]
	ldrb	w0, [sp, 43]
	cmp	w0, 0
	bne	.L4
	ldrsw	x0, [sp, 44]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	Str_getLength, .-Str_getLength
	.section	.rodata
	.align	3
.LC2:
	.string	"copy != NULL"
	.text
	.align	2
	.global	Str_copy
	.type	Str_copy, %function
Str_copy:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L7
	adrp	x0, __PRETTY_FUNCTION__.4
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.4
	mov	w2, 47
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L7:
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L9
	adrp	x0, __PRETTY_FUNCTION__.4
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.4
	mov	w2, 48
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__assert_fail
.L10:
	ldr	x0, [sp, 24]
	ldrb	w1, [sp, 39]
	strb	w1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
	ldr	x0, [sp, 16]
	add	x0, x0, 1
	str	x0, [sp, 16]
.L9:
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	strb	w0, [sp, 39]
	ldrb	w0, [sp, 39]
	cmp	w0, 0
	bne	.L10
	ldr	x0, [sp, 24]
	strb	wzr, [x0]
	ldr	x0, [sp, 40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE1:
	.size	Str_copy, .-Str_copy
	.section	.rodata
	.align	3
.LC3:
	.string	"cat != NULL"
	.text
	.align	2
	.global	Str_concat
	.type	Str_concat, %function
Str_concat:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	str	x0, [sp, 56]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L13
	adrp	x0, __PRETTY_FUNCTION__.3
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3
	mov	w2, 70
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__assert_fail
.L13:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L14
	adrp	x0, __PRETTY_FUNCTION__.3
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.3
	mov	w2, 71
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__assert_fail
.L14:
	ldr	x0, [sp, 24]
	bl	Str_getLength
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	sxtw	x0, w0
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	str	x0, [sp, 24]
	b	.L15
.L16:
	ldr	x0, [sp, 24]
	ldrb	w1, [sp, 47]
	strb	w1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L15:
	ldr	x0, [sp, 16]
	add	x1, x0, 1
	str	x1, [sp, 16]
	ldrb	w0, [x0]
	strb	w0, [sp, 47]
	ldrb	w0, [sp, 47]
	cmp	w0, 0
	bne	.L16
	ldr	x0, [sp, 24]
	strb	wzr, [x0]
	ldr	x0, [sp, 56]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2:
	.size	Str_concat, .-Str_concat
	.section	.rodata
	.align	3
.LC4:
	.string	"s1 != NULL"
	.align	3
.LC5:
	.string	"s2 != NULL"
	.text
	.align	2
	.global	Str_compare
	.type	Str_compare, %function
Str_compare:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L19
	adrp	x0, __PRETTY_FUNCTION__.2
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.2
	mov	w2, 93
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L19:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L21
	adrp	x0, __PRETTY_FUNCTION__.2
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.2
	mov	w2, 94
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L25:
	ldrb	w1, [sp, 47]
	ldrb	w0, [sp, 46]
	cmp	w1, w0
	beq	.L22
	ldrb	w1, [sp, 47]
	ldrb	w0, [sp, 46]
	sub	w0, w1, w0
	b	.L23
.L22:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
	ldr	x0, [sp, 16]
	add	x0, x0, 1
	str	x0, [sp, 16]
.L21:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	strb	w0, [sp, 47]
	ldrb	w0, [sp, 47]
	cmp	w0, 0
	beq	.L24
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	strb	w0, [sp, 46]
	ldrb	w0, [sp, 46]
	cmp	w0, 0
	bne	.L25
.L24:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	strb	w0, [sp, 47]
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	strb	w0, [sp, 46]
	ldrb	w0, [sp, 47]
	cmp	w0, 0
	beq	.L26
	ldrb	w0, [sp, 47]
	b	.L23
.L26:
	ldrb	w0, [sp, 46]
	cmp	w0, 0
	beq	.L27
	ldrb	w0, [sp, 46]
	neg	w0, w0
	b	.L23
.L27:
	mov	w0, 0
.L23:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	Str_compare, .-Str_compare
	.align	2
	.type	Str_compareN, %function
Str_compareN:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	str	wzr, [sp, 60]
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L29
	adrp	x0, __PRETTY_FUNCTION__.1
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.1
	mov	w2, 128
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__assert_fail
.L29:
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L31
	adrp	x0, __PRETTY_FUNCTION__.1
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.1
	mov	w2, 129
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	__assert_fail
.L36:
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	strb	w0, [sp, 59]
	ldr	x0, [sp, 32]
	ldrb	w0, [x0]
	strb	w0, [sp, 58]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
	ldrb	w0, [sp, 59]
	cmp	w0, 0
	bne	.L32
	ldrb	w0, [sp, 58]
	neg	w0, w0
	b	.L33
.L32:
	ldrb	w0, [sp, 58]
	cmp	w0, 0
	bne	.L34
	ldrb	w0, [sp, 59]
	b	.L33
.L34:
	ldrb	w1, [sp, 59]
	ldrb	w0, [sp, 58]
	cmp	w1, w0
	beq	.L35
	ldrb	w1, [sp, 59]
	ldrb	w0, [sp, 58]
	sub	w0, w1, w0
	b	.L33
.L35:
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L31:
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L36
	mov	w0, 0
.L33:
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	Str_compareN, .-Str_compareN
	.section	.rodata
	.align	3
.LC6:
	.string	"toSearch != NULL"
	.align	3
.LC7:
	.string	"toFind != NULL"
	.text
	.align	2
	.global	Str_search
	.type	Str_search, %function
Str_search:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	bne	.L38
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 160
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	__assert_fail
.L38:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L39
	adrp	x0, __PRETTY_FUNCTION__.0
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0
	mov	w2, 161
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	__assert_fail
.L39:
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L40
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L40
	ldr	x0, [sp, 24]
	b	.L41
.L40:
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L42
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L42
	mov	x0, 0
	b	.L41
.L42:
	ldr	x0, [sp, 16]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L43
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L43
	ldr	x0, [sp, 24]
	b	.L41
.L43:
	ldr	x0, [sp, 16]
	bl	Str_getLength
	str	w0, [sp, 44]
	b	.L44
.L46:
	ldr	w2, [sp, 44]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	Str_compareN
	cmp	w0, 0
	bne	.L45
	ldr	x0, [sp, 24]
	b	.L41
.L45:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L44:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	strb	w0, [sp, 43]
	ldrb	w0, [sp, 43]
	cmp	w0, 0
	bne	.L46
	mov	x0, 0
.L41:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	Str_search, .-Str_search
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.5, %object
	.size	__PRETTY_FUNCTION__.5, 14
__PRETTY_FUNCTION__.5:
	.string	"Str_getLength"
	.align	3
	.type	__PRETTY_FUNCTION__.4, %object
	.size	__PRETTY_FUNCTION__.4, 9
__PRETTY_FUNCTION__.4:
	.string	"Str_copy"
	.align	3
	.type	__PRETTY_FUNCTION__.3, %object
	.size	__PRETTY_FUNCTION__.3, 11
__PRETTY_FUNCTION__.3:
	.string	"Str_concat"
	.align	3
	.type	__PRETTY_FUNCTION__.2, %object
	.size	__PRETTY_FUNCTION__.2, 12
__PRETTY_FUNCTION__.2:
	.string	"Str_compare"
	.align	3
	.type	__PRETTY_FUNCTION__.1, %object
	.size	__PRETTY_FUNCTION__.1, 13
__PRETTY_FUNCTION__.1:
	.string	"Str_compareN"
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 11
__PRETTY_FUNCTION__.0:
	.string	"Str_search"
	.ident	"GCC: (GNU) 11.3.1 20221121 (Red Hat 11.3.1-4)"
	.section	.note.GNU-stack,"",@progbits
