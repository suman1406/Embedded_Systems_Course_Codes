	AREA qn4, CODE, READONLY
	ENTRY
Main	MOV R0,#20
		MOV R1,#4
		MOV R2,#0
		
		CMP R0,#0
		BEQ Stop
		CMP R1,#0
		BEQ Stop
		
Loop	CMP R0,#0
		BEQ Stop
		CMP R0,R1
		BLT Stop
		SUB R0,R0,R1
		ADD R2,R2,#1
		B Loop

Stop B Stop
	END