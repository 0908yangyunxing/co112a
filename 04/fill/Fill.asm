// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
D=A
@arr
M=D
@8192
D=A
@n
M=D
@i
M=0
(LOOP)
@i
D=M
@n
D=D-M
@ENDLOOP
D; JEQ
@KBD
D=M
@ELSE
D; JEQ  
@arr
D=M
@i
A=D+M
M=-1
@ENDIF
0; JMP
(ELSE)	
@arr
D=M
@i
A=D+M
M=0
(ENDIF)
@i
M=M+1
@LOOP
0; JMP
(ENDLOOP)
@FOREVER
0; JMP