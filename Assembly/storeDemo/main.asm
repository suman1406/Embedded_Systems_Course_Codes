		AREA 	reset,	CODE, READONLY
		ENTRY
		LDR R1,=0x40000000 ; Base address of Array 0x4000 0000 is the location from which data can be written
		MOV R2,#0
		MOV R3, #5;Number of elements to be stored/ Size of Array
LOOP 	CMP R2,R3 ; Checking whether index has reached the limit
		BGE Stop ; if index >= size, stop
		ADD R4, R2,#1 ; R4 = R2+1
		STR R4, [R1],#4		; storing R4 value into memory pointed by R1 and update R1 as R1+4
		ADD R2, R2,#1 ; update R2 as R2+1
		BNE LOOP; Repeat search if item is not found yet
Stop 	B Stop
		END