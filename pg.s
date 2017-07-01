	.text
start:	

		MOV		R0, #2
		MOV		R12, #0
		MOV		R3, #0x00010000
		MOV		R2,#0X0100
		STR		r0,[r3,R2]
LOOP:
		CMP		R12,#9
		BGE		FIM
		TST		R0,#2147483648
		ADD		R12,R12,#1
		LSL		R1,R0,#1
		ADD		R2,R2,#0X4
		MOV		R0,R1
		STR		r0,[r3,R2]
		B		LOOP
FIM:

