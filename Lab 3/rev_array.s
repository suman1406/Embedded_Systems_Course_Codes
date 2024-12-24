

	AREA RESET, CODE, READONLY
	ENTRY

main
	ldr r0, = array
	ldr r3, = 0x5
	ldr r2, = 0x0

loop
	ldr r1,[r0],#04
	add r2,r2,r1
	sub r3,r3,#01
	cmp r3,#00
	bne loop

STOP B STOP

	AREA data, CODE
array dcd &01,&02,&03,&04,&05
	END