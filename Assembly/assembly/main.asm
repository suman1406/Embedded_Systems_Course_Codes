        AREA     RESET, CODE, READONLY
                                ; Name this block of code ARMex
        ENTRY                   ; Mark first instruction to execute
start
        MOV      r0, #10        ; Set up parameters
        MOV      r1, #3
        ADD      r0, r0, r1     ; r0 = r0 + r1

		MOV r1,#Q ;load r1 with the constant Q
 		MOV r2,#R
 		MOV r3,#S
 		ADD r0,r1,r2
 		ADD r0,r0,r3
stop	B	stop

Q 		EQU 2 ;Equate the symbolic name Q to the value 2
R 		EQU 4 ;
S 		EQU 5 ;
		END
