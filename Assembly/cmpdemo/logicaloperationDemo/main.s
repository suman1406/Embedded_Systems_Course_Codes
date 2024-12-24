		AREA 	ConditionalBranch,	CODE,	READONLY

        ENTRY
        MOV     R0, #10         ; Move immediate value 10 into R0
        MOV     R1, #15         ; Move immediate value 15 into R1
        CMP     R0, R1          ; Compare R0 and R1
        BGT     larger          ; Branch if R0 > R1
        
        ; R0 is not greater than R1
        MOV     R2, #0          ; Move 0 into R2
        B       end             ; Branch to end

larger  MOV     R2, #1          ; Move 1 into R2 (R0 is greater than R1)

end     ; End of program

        END