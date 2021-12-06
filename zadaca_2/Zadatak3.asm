@R0
D = M
@R5
M = D

@R1
D = M
@R5
D = D - M
//if D < M then
@Reg2
D ; JLT
//else
@R1
D = M
@R5
M = D
//endif

(Reg2)
@R2
D = M
@R5
D = D - M
@Reg3
D ; JLT
@R2
D = M
@R5
M = D

(Reg3)
@R3
D = M
@R5
D = D - M
@Reg4
D ; JLT
@R3
D = M
@R5
M = D

(Reg4)
@R4
D = M
@R5
D = D - M
@End
D ; JLT
@R4
D = M
@R5
M = D

(End)
@End
0;JMP