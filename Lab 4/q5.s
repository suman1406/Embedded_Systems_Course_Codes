	AREA qn5, CODE, READONLY
	ENTRY
Main MOV R0, #0x0FF0 ;Evaluation version only supports till 32K
	 MOV R1, #0x00FF
	 AND R2,R0,R1

Stop B Stop
	END