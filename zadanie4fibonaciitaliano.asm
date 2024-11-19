.text
	lw $a0, n
	jal fib
	move $a0, $v0
	li $v0, 1
	syscall
	li $v0, 10
	syscall
	
fib:	addi $sp, $sp, -12
	sw $a0, 8($sp)
	sw $ra, 4($sp)
	sw $s0, 0($sp)