	AREA qn1,CODE,READONLY
	ENTRY
Main MOV R0,#5; R0 = 5
	 MOV R1,#10; R1 = 10 / 0xA
	 ADD R2,R0,R1; R2 = R0+R1 (0xF)
	 SUB R3,R0,R1; R3 = R0-R1 (-5)
	 RSB R4,R0,R1; R4 = R1-R0; R4 = R1-R0 (5)
	 SUBS R3,R0,R1; See the difference in CPSR
Stop B Stop; can be replaced by SWI&11
	END