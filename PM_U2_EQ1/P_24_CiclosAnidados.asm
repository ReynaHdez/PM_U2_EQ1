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
; Área de Declaración de Variables
msj1_24 db "mensaje",0
.code
	
	main24 PROC
	
		;Lógica del Programa
		mov edx, offset msj1_24
		call writestring
		call crlf

		call readint		;eax = n
		
		call crlf

		ciclo1:
			push eax
			mov eax, 1
			
			ciclo2:
				call writedec
				call crlf
				inc eax
				cmp eax, 10
				jle ciclo2

				call crlf
			
			pop eax		;n
			dec eax
			cmp eax, 0
			jg ciclo1

		
		exit	
	
	main24 ENDP
	
	END main24
