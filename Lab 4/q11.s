	AREA qn11, CODE, READONLY
	ENTRY
Main LDR r0, =0xDEADBEEF 
     LDR r0, [r0]
	 
Stop B Stop
	 END