LXI H, 3000H 
MOV A, M 
INX H
MOV B, M 
MVI C, 00H 
SUB B 
JNC loop
INR C 
loop: INX H
MOV M, A 
INX H 
MOV M, C
HLT