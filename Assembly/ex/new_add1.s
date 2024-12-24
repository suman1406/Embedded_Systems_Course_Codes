		AREA RESET, CODE, READONLY
		ENTRY
		mov r1, #5
		adr r2, array 
loop	ldr r3, [r2, r1,LSL #2]
		subs r1, r1 ,#1
		bge loop
done	b	done
		align
array 	dcd 1,2,3,4,5,6
		end
