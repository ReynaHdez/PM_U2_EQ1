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
mensaje1_12 db "Mensaje 1", 0
mensaje2_12 db "Mensaje 2", 0
mensaje3_12 db "Mensaje 3", 0

.code
	
	main12 PROC
	
		;Lógica del Programa

		mov edx, offset mensaje1_12
		call writestring
		call crlf

		jmp continuar		;salto incondicional

		mov edx, offset mensaje2_12
		call writestring
		call crlf

		continuar:		;etiqueta

		mov edx, offset mensaje3_12
		call writestring
		call crlf


		exit	
	
	main12 ENDP
	
	END main12
