		AREA		RESET, CODE, READONLY
		ENTRY
		MOV	R5, #3
		LDR	R0,=BLOCK1
		LDR	R1,=BLOCK2
NEXT	LDR	R2,[R0],#1
		STR	R2,[R1],#1
		SUBS	R5,#1
		BNE	NEXT
B1		B	B1
BLOCK1	DCB	0X11111111,0X22222222,0X33333333
		AREA	DATA1, DATA, READWRITE
BLOCK2	DCB	0
		END
		