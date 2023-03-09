TITLE NombrePrograma

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Apellido Nombre Integrante 1
;         Apellido Nombre Integrante 2

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI�N

INCLUDE Irvine32.inc  


.data
;Area de Declaracion de Variables
msg1_14 db "Ingresa un numero: ", 0
msgPar_14 db "Es PAR", 0
msgImpar_14 db "Es IMPAR", 0


.code
	
	main14 PROC
	
		;L�gica del Programa

		mov edx, offset msg1_14
		call writestring
		call crlf

		call readint	;eax

		mov ebx, 2
		mov edx, 0

		div ebx			;eax/2 => cociente se va a eax y el residuo a edx

		cmp edx, 0		;revisa si el residuo es 0

		jnz impar		;si no es 0, (si no es igual [edx != 0]), si no es par, se va a "impar"
		;si es par, entonces continua...

		mov edx, offset msgPar_14
		call writestring
		call crlf

		jmp salir

		impar:
		mov edx, offset msgImpar_14
		call writestring
		call crlf
		
		salir:

		exit	
	
	main14 ENDP
	
	END main14
