//Initalizes the variables
(INIT)
@R0 // Set to Dividend
D=M
@divd // Stores the dividend
M=D
@R1 // Set to Divisor
D=M
@divs // Stores the divisor
M=D
@i
M=0 // Set i to 0
//Starts the loop
(LOOP)
@divd
D=M
@divs
D=D-M
@STORE
D;JLT // If D is negative, jump to STORE

@divd
M=D
@i
M=M+1 // Increments i

@LOOP
0;JMP // Jumps to LOOP

//Stores the result
(STORE)
@i
D=M
@quot
M=D // Stores the quotient

(END)
@END
0;JMP // Jumps to END