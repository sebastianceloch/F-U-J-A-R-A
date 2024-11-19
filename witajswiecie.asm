.data
 greeting: .asciiz "Hello World"
.text
addi $v0, $zero, 4 #v0:=4
la $a0, greeting #a0:=&greeting
syscall #print string
li $v0,10 #v0:=10
syscall #terminate