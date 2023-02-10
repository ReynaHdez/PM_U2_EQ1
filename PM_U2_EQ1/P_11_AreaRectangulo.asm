TITLE NombrePrograma

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Apellido Nombre Integrante 1
;         Apellido Nombre Integrante 2

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc  


.data
;Area de Declaracion de Variables
msjbase_11 db "Ingresa la Base: ", 0
msjaltura_11 db "Ingresa la altura: ", 0
msjResultado_11 db "El resultado es: ", 0

.code
	
	main11 PROC
	
		;Lógica del Programa

		mov edx, offset msjbase_11		;base
		call writestring
		call crlf

		call readint	;lee y guarda en eax
		mov ebx, eax

		mov edx, offset msjaltura_11	;altura
		call writestring
		call crlf

		call readint	;lee y guarda eax
		mul ebx

		mov edx, offset msjResultado_11		;resultado
		call writestring
		call crlf

		call writeint
		
		exit	
	
	main11 ENDP
	
	END main11
