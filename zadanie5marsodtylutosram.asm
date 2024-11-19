.data
	a: .word 1
	b: .word 2
	c: .word 3
	d: .word 4
	copy_a0 .word 0
	copy_a1 .word 0
.text

	lw $a0, a
	lw $a1, b
	lw $a2, c
	lw $a3, d
	
	sw $a0, copy_a0
	sw $a1, copy_a1