    AREA    Reset, CODE, READONLY
    ENTRY
ENTRY:
    ; Initialize registers with inputs
    MOV     r0, #7        ; r0 = 7
    MOV     r1, #3        ; r1 = 3

    ; Add the numbers
    ADD     r2, r0, r1    ; r2 = r0 + r1

    ; End of program
STOP:
    B .                   ; Infinite loop (for debugging)
    END ENTRY
