	AREA qn11, CODE, READONLY
	ENTRY
Main LDR r0, =0xCAFEBABE
     STR r0, [r0]
	 
Stop B Stop
	 END