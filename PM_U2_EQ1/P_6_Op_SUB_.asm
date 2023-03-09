TITLE NombrePrograma

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Hernandez Santos Reyna Margarita
;         Salas Alardin Luis Fernando

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables
var1_6 dword 10d

.code

	main6 PROC
	
		;Lógica del Programa

		;sub se rige por las mismas reestricciones que mov
		;en cuento a los operandos
		
		;Operaciones Validas:
		;mem a reg ;a la memoria se le resta el registro
		;reg a mem 
		;reg a reg
		
		;//Ejemplo 1
		mov eax, 4
		
		;destino, origen
		sub var1_6, eax		;destino = destino - origen ;10- 4 = 6
		 

		;// Ejemplo 2
		sub eax, var1_6 ; eax=  4 - 6 
		
		call writeint


		;//Ejemplo 3
		call crlf

		mov ebx, 8
		sub ebx, eax ; ebx = 8 -(-2)

		mov eax, ebx

		call writedec


		;//Ejemplo 4
		call crlf

		sub eax, 3

		call writedec


		exit	
	
	main6 ENDP
	
	END main6
