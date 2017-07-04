.text
start:
		mov		r0,#3
		mov		r1,#2
		cmp		r0,r1
		bge		soma
		sub		r3,r0,r1
soma:		add		r3,r0,r1
