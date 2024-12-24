;/*Program to find smallest of N numbers*/	
		
		AREA	reset,	code, readonly
		ENTRY
main 
		ldr r0,=data1
		 	ldr r3,=0x40000000
		 	ldr r4,=0x05    ;//length of loop
		  	ldr r1,[r0],#04
			sub r4,r4,#01
back 
		 	ldr r2,[r0]						
		 	cmp r1,r2
		 	bls less		  ;// branch on low
		 	mov r1,r2
less	
			add r0,r0,#04
			sub r4,r4,#01
			cmp r4,#00
			bne back
			str r1,[r3]	   ;// smallest value stored in memory location
stop 	b stop
			AREA data,code
data1 	dcd &64,&05,&96,&10,&65
		END
