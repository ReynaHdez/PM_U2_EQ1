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
; �rea de Declaraci�n de Variables
var1_9 dword 2d
mensaje1 db "Ingrese m: ", 0
mensaje2 db "Ingrese x: ", 0
mensaje3 db "Ingrese b: ", 0
mensaje4 db "El valor de Y es: ", 0

.code

	main9 PROC
	
		;L�gica del Programa

		mov edx, offset mensaje1
		call writestring
		call crlf
		call readint
		mov ebx, eax

		mov edx, offset mensaje2
		call writestring
		call crlf
		call readint
		mul ebx
		mov ecx, eax

		mov edx, offset mensaje3
		call writestring
		call crlf
		call readint
		add eax, ecx


		mov edx, offset mensaje4
		call writestring
		call crlf

		call writeint


		
		exit	
	
	main9 ENDP
	
	END main9
