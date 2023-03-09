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

.code
	
	main20 PROC
	
		;Lógica del Programa

		mov ebx, 5

		cicloP:

		mov eax, 1
		ciclo:
		call writedec
		call crlf
		inc eax 
		cmp eax, 10
		jle ciclo

		call crlf

		dec ebx
		cmp ebx, 0
		jg cicloP

		exit	
	
	main20 ENDP
	
	END main20