        AREA     RESET, CODE, READONLY
                                ; Name this block of code ARMex
        ENTRY                   ; Mark first instruction to execute
        MOV      r0, #1       ; Set up parameters
        MOV      r1, #1
        ADD      r0, r0, r1     ; r0 = r0 + r1
        END     