LXI H, 3000H ;21 Load H-L pair with address 3000H.
;2001 00 Lower-order of 3000H.
;2002 30 Higher-order of 3000H.
MOV C, M ;4E Move counter from memory to reg. C.
MVI A, 00H ;3E Initialize accumulator with 00H.
;2005 00 Immediate value 00H.
loop: INX H ;23 Increment H-L pair.
MOV B, M ;46 Move next number from memory to reg. B.
ADD B ;80 Add B with A.
DCR C ;0D Decrement counter.
JNZ loop ;C2 Jump to address 2006H if counter is not zero.
;200B 06 Lower-order of 2006H.
;200C 20 Higher-order of 2006H.
INX H ;23 Increment H-L pair.
MOV M, A ;77 Move the result from reg. A to memory.
HLT ;76 Halt.