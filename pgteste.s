MAIN:				
		AND		R0,R0,#0 	
		ADD		R4,R0,#2 	
		ADD		R5,R0,#0
		ADD		R6,R0,#100 	
		AND		R8,R8,#0	
		AND		R7,R7,#0
		STR		R4,[R6,#0]	
LOOP:
		CMP		R8,#9
		BGE		FIM
		TST		R4,#2147483648		
		ADD		R8,R8,#1	
		ADD		R7,R4,R4	
		ADD		R6,R6,#4	
		ADD		R4,R7,#0			
		STR		R4,[R6,#0]	
		B		LOOP
FIM:
		LDR		R1,[R0,#136] 
END:
