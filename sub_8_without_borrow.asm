;WITHOUT BORROW

LXI H, 4000H ;"HL points 4000H"
MOV A, M     ;"Get first operand"
INX H        ;"HL points 4001H"
SUB M        ;"Subtract second operand"
INX H        ;"HL points 4002H"
MOV M, A     ;"Store result at 4002H"
HLT          ;"Terminate program execution"