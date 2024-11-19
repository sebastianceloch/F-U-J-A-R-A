.data
	a:	.word 3
	b:	.word 2
	D:	.word 7,7,7,7,7,7
.text
	lw $s0, a
	lw $s1, b
	la $s2, D
	
	li $t0, 0
test_i:	slt $t2, $t0, $s0
	beq $t2, $zero, end_i
	li $t1,0
test_j:	slt $t2,$t1,$s1
	beq $t2,$zero,end_j
	add $t2,$t0,$t1
	sll $t3,$t1,4
	add $t3,$s2,$t3
	sw $t2,0($t3)
	addi $t1,$t1, 1
	j test_j
end_j:	addi $t0, $t0, 1
	j test_i
end_i:	li $v0, 10
	syscall
	
