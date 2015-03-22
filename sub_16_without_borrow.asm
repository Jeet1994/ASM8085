LHLD 3000H ;2A Load H-L pair with 1st operand from 3000H.
;2001 00 Lower-order of 3000H.
;2002 30 Higher-order of 3000H.
XCHG ;EB Exchange H-L pair with D-E pair.
LHLD 3002H ;2A Load H-L pair with 2nd operand from 3002H.
;2005 02 Lower-order of 3002H.
;2006 30 Higher-order of 3002H.
MOV A, E ;7B
;Move the lower-order of 1st number from reg.
;E to reg. A.
SUB L ;95
;Subtract the lower-order of 2nd number from
;lower-order of 1st number.
MOV L, A ;6F Move the result from reg. A to register L.
MOV A, D ;7A
;Move the higher-order of 1st number from reg.
;D to reg. A.
;SBB H 
MOV H, A ;67 Move the result from reg. A to reg. H.
SHLD 3004H ;22
;Store the 16-bit result from H-L pair to
;memory.
;200E 04 Lower-order of 3004H.
;200F 30 Higher-order of 3004H.
HLT