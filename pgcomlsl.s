MAIN
		AND		R0,R0,#0
		ADD		R4,R0,#2
		ADD		R5,R0,#0x010000
		ADD		R6,R0,#100
		AND		R8,R8,#0
		AND		R7,R7,#0
		STR		R4,[R5,r6]
LOOP
		CMP		R8,#9
		BGE		FIM
		TST		R4,#2147483648
		ADD		R8,R8,#1
		LSL		R7,R4,#1
		ADD		R6,R6,#4
		ADD		R4,R7,#0
		STR		R4,[R5,r6]
		B		LOOP
FIM
		LDR		R1,[R5,#0x088]
		END

