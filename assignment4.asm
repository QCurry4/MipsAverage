##assignment 4 
##add the values up, compute the average, and store the result in a memory location.
.data  
    number1:    .byte 12
    number2:    .byte 97
    number3:    .byte 133
    number4:    .byte 82
    number5:    .byte 236

.text
.globl main
main : 
    lbu $t0, number1($zero)     #store number1 into $t0
    lbu $t1, number2($zero)     #store number2 into $t1
    lbu $t2, number3($zero)     #store number3 into $t2
    lbu $t3, number4($zero)     #store number4 into $t3
    lbu $t4, number5($zero)     #store number5 into $t4

    add $t5, $t0, $t1       # $t5 = number1 + number2 (12 + 97 = 109)
    add $t6, $t5, $t2       # $t6 = $t5 + number2 (109 + 133 = 242)
    add $t7, $t6, $t3       # $t7 = $t6 + number4 (242 + 82 = 324)
    add $s0, $t7, $t4       # $s0 = $t7 + number5  (324 + 236 = 560)

    addi $s1, $zero, 5     #store the value 5 into $s1   
    div	$s2, $s0, $s1      #Store into $s2 the value of $s0 dividwed by $s1 (560 / 5 = 112)
    


