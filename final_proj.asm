.data
coord:.asciiz "Your coordinates: 25 25\n"

.text

main: 
#int x[4]
li $a0 4 		# allocating sizeof(char) * 7 space
li $v0 9		# address of the allocated space in $v0
syscall
move $s0, $v0		# move allocated space to $s0

#int y[4]
li $a0 4 		# allocating sizeof(char) * 7 space
li $v0 9		# address of the allocated space in $v0
syscall
move $s1, $v0		# move allocated space to $s2

#int myX
li $t0, 25

#int myY
li $t1, 25

#int move
li $t3, 0

#int status
li $t4, 0

#x[0] = 0
sw $0, 0($s0)
#y[0] = 0
#x[1] = 0
#y[1] = 50
li $t5, 50
sw $t5, 0($s1)

lw $t6, 0($s1)
la $a0, ($t6)
li $v0, 1
syscall
#x[2] = 50
#x[2] = 0
#x[3] = 50
#x[3] = 50

la $a0, coord
li $v0, 4
syscall