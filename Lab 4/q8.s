	AREA qn8, CODE, READONLY
	ENTRY
Main MOV R0, #0x01
	 MOV R0, R0, LSL #4
	 
Stop B Stop
	 END