MAIN:				
		AND		R0,R0,#0 	;seta r0 como referencia
		ADD		R4,R0,#2 	;primeiro termo da pg
		ADD		R5,R0,#0
		ADD		R6,R0,#100 	;seleciona endereço de memoria inicial
		AND		R8,R8,#0	;inicializa contador em 0
		AND		R7,R7,#0
		STR		R4,[R6,#0]	;grava primeiro termo da pg no endereço 100
LOOP:
		CMP		R8,#9
		BGE		FIM
		TST		R4,#2147483648		
		ADD		R8,R8,#1	;incrementa contador
		ADD		R7,R4,R4	;multiplica por 2
		ADD		R6,R6,#4	;pula para proximo endereço de memoria
		ADD		R4,R7,#0	;move termo da pg para r4		
		STR		R4,[R6,#0]	;armazena termos no endereço de memoria
		B		LOOP
		LDR		R1,[R0,#136] 	;armazena em r1 ultimo termo da pg

FIM:


