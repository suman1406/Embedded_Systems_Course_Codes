		AREA		RESET, CODE, READONLY
		ENTRY
		MOV	R5, #6
		LDR	R0,=BLOCK1
		LDR	R1,=BLOCK2
NEXT	LDRB	R2,[R0],#1
		STRB	R2,[R1],#1
		SUBS	R5,#1
		BNE	NEXT
B1		B	B1
BLOCK1	DCB	0X11,0X22,0X33,0X44,0X55,0X66
		AREA	DATA1, DATA, READWRITE
BLOCK2	DCB	0
		END
		