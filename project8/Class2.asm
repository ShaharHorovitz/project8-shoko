(Class2.set)
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@16
M=D
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
M=M-1
A=M
D=M
@17
M=D
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@frame
M=D
@5
D=D-A
A=D
D=M
@return_address
M=D
@SP
AM=M-1 
D=M 
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@frame
D=M-1
A=D
D=M
@THAT
M=D
@2
D=A
@frame
D=M-D
A=D
D=M
@THIS
M=D // THIS = *(FRAME-2)
@3
D=A
@frame
D=M-D
A=D
D=M
@ARG
M=D // ARG = *(FRAME-3)
@4
D=A
@frame
D=M-D
A=D
D=M
@LCL
M=D // LCL = *(FRAME-4)
@return_address
A=M
0;JMP // goto RET

(Class2.get)
@Class2.asm.0
D=M
@SP
A=M
M=D
@SP
M=M+1
@Class2.asm.1
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
AM=M-1
D=M
@SP
AM=M-1
D=M-D
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@frame
M=D
@5
D=D-A
A=D
D=M
@return_address
M=D
@SP
AM=M-1 
D=M 
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@frame
D=M-1
A=D
D=M
@THAT
M=D
@2
D=A
@frame
D=M-D
A=D
D=M
@THIS
M=D // THIS = *(FRAME-2)
@3
D=A
@frame
D=M-D
A=D
D=M
@ARG
M=D // ARG = *(FRAME-3)
@4
D=A
@frame
D=M-D
A=D
D=M
@LCL
M=D // LCL = *(FRAME-4)
@return_address
A=M
0;JMP // goto RET

