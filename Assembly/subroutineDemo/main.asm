		AREA    reset, CODE, READONLY     ; Name this block of code
        ENTRY                     ; Mark first instruction to execute
		MOV     r0, #10           ; Set up parameters
        MOV     r1, #3
        BL      doadd             ; Call subroutine
	    MOV     r3, #2         ; angel_SWIreason_ReportException
        SUB		r4,r3,r0
stop	B		stop		

doadd   ADD     r0, r0, r1        ; Subroutine code
        BX      lr                ; Return from subroutine
        END           