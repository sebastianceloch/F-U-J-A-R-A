.data
	i:	.word 4
	j:	.word 1
	A:	.word 3,3,3,3,3
	B:	.word 1,1,1,1,1,1,1,1,1
.text
	lw	$s3,i	#s3:=i
	lw	$s4,j
	la	$s6,A
	la	$s7,B
	sll $t0, $s3, 2 #t0:=4*i
	add $t0,$s6,$t0 #t0:=&A+4*i=&A[i]
	lw $t0, 0($t0) #t0:=A[i]
	sll $t1,$s4,2 #t1:=4*j
	add $t1,$s6,$t1 #t1:=&A+4*j=&A[j]
	lw $t1,0($t1) #t1:=A[j]
	add $t0,$t0,$t1 #t0:=A[i]+A[j]
	sw $t0,32($s7) #B[8]:=A[i]+A[j]
	syscall
