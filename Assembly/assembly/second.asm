        AREA Example2, CODE, READONLY
                                ; Name this block of code ARMex
        ENTRY                   ; Mark first instruction to execute
start 	
	   	MOV r1,#Q ;load r1 with the constant Q
 		MOV r2,#R
 		MOV r3,#S
 		ADD r0,r1,r2
 		ADD r0,r0,r3

Stop 

Q 		EQU 2 ;Equate the symbolic name Q to the value 2
R 		EQU 4 ;
S 		EQU 5 ;
		END