
		AREA     RESET, CODE, READONLY
		ENTRY
		MOV r0, #1
		CMP r0,#0
		ADDEQ r1,r1,#1
		ADDNE r2,r2,#1
		end