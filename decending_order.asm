START: LXI H,0000H
MVI D,00H
MVI C,02H
CHECK: MOV A,M
INX H
CMP M
JNC NXTBYT
MOV B,M
MOV M,A
DCX H
MOV M,B
INX H
MVI D,01H
NXTBYT: DCR C
JNZ CHECK
MOV A,D
RRC
JC START
HLT