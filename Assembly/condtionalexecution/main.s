  ; Example: Determine the sign of the difference between two numbers

    ; Assume R0 contains first number, R1 contains second number
	AREA	RESET,	CODE,	READONLY
	
	ENTRY
	
	MOV	R0,#2
	MOV	R1,#2

    SUB     R2, R0, R1      ; R2 = R0 - R1

    CMP     R2, #0          ; Compare R2 with 0
    BGT     positive_diff   ; Branch if greater than (R0 > R1)
    BLT     negative_diff   ; Branch if less than (R0 < R1)

    ; Equal case (R0 == R1)
    MOV     R3, #0          ; R3 = 0 (indicating no difference)
end    B       end             ; Branch to end

positive_diff
    ; R0 > R1 case
    MOV     R3, #1          ; R3 = 1 (indicating positive difference)
end1   B       end1            ; Branch to end

negative_diff
    ; R0 < R1 case
    MOV     R3, #-1         ; R3 = -1 (indicating negative difference)

end2	B	end2
    ; Continue with common code here
    ; R3 now contains -1 if R0 < R1, 0 if R0 == R1, or 1 if R0 > R1
	END