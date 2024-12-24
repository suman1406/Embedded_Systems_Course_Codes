		AREA     RESET, CODE, READONLY
		ENTRY
		; Example: Execute if R0 equals R1
		MOV R0,#1
		MOV	R1,#1
		CMP R0, R1
		ADDEQ R3, R1, R0  ; Add R3 and R4 and store in R2 if R0 == R1
		
		; Example: Execute if R0 does not equal R1
		MOV R0,#1
		MOV	R1,#2
		CMP R0, R1
		SUBNE R2, R1, R0  ; Subtract R4 from R3 and store in R2 if R0 != R1
		
stop	B	stop



