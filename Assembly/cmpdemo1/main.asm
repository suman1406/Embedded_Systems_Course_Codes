		AREA     RESET, CODE, READONLY
		ENTRY
		MOV R1, #7
		MOV R0,R1
		MOV R1,R0,LSL #3
		MOV R1,R1,LSR #3
		MOV R2, #10
		MOV R0,R2
		MOV R0,R0,LSL #24
		MOV R0,R0,LSR #24
		EOR R1,R1,R0
		MOV R1,R1,LSL #8
		MOV R1,R1,LSL #16
		MOV R1,R1,LSR #16
stop	B	stop
		end