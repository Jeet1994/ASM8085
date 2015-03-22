START: LXI H,00B4H  ;Assign 07D1H(Hex memory address) as the initial address
	MVI D,00H ;clearing register D
	MVI C,04H 

CHECK: MOV A,M ;Move data in current memory address to accumulator
	INX H ;increment H that is to the next address 07D2H
	CMP M ;compare the data in current address(07D2) with that in the accumulator(if A<M carry is set, if A>M carry is reset)
	JC NXTBYT ;conditional jump,jumps if carry is set
	MOV B,M  ; current data is moved to reg B
	MOV M,A ; Accumulator data is moved to current address (swapped)
	DCX H ; H is decremented to previous address
	MOV M,B; now Data in register B is pushed to current address
	INX H; H is incremented again
	MVI D, 01H

NXTBYT: DCR C; decrement c
	JNZ CHECK ; Check 
	MOV A,D ; move data in d register to accumulater
	RRC
	JC START
	HLT ;Terminate Program
