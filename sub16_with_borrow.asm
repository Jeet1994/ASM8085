LHLD 3000H ;2A Load H-L pair with data from 3000H
;2001 00
;2002 30
XCHG ;EB ;Exchange data from H-L pair with D-E
LHLD 3002H ;2A Load H-L pair with data from 3002 H
MVI B, 00H ;06 Move 0 H to 
MVI C, 00H ;0E Move 0 H to C
MOV A, E ;7B Move lower order of 1st no. to A
SUB L ;95 Subtract lower order L from A
JNC loop ;D2 Jump to2011 H if there is no borrow
INR C ;0C If borrow, then increment C
loop: MOV E, A ;5F Move lower order back to E
MOV A, D ;7A Move higher order of 1st no. to A
SUB C ;91 First, subtract borrow from A
SUB H ;94 Now, subtract higher order from A
JNC loop1 ;D2 Jump to 2019 H if there is no borrow
INR B ;04 If borrow, increment B
loop1: MOV D, A ;57 Move higher order back to D
XCHG ;EB Exchange the result from D-E with H-L
SHLD 3004H ;22 Store the result al location 3004 H
MOV A, B ;78 Move borrow to A
STA 3006H ;32 Store borrow at location 3006 H
HLT

;result is in 2's complement form