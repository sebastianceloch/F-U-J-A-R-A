.data
	i:	.word 4
	j:	.word 1
	A:	.word 3,3,3,3
	B:	.word 1,1,1,1,1,1,1,1,1
.text
	lw	$s3,i	#s3:=i
	lw	$s4,j
	la	$s6,A
	la	$s7,B
	sub	$t0, $s3, $s4 #t0:=i-j
	mul	$t0, $t0, 4 #t0:=4*(i-j)
	add $t0, $s6, $t0 #t0:=&A+4*(i-j)=&A
	lw $t0, 0($t0) #t0:=A[i-j]
	sw	$t0, 32($s7) #B[8]:=A[i-j]
	li $v0, 10 #v0:=10
	syscall