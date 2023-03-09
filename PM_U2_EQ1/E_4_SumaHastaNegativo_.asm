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
;Area de Declaracion de Variables
msj1_e4 db "Ingrese numero ", 0

.code
	
	mainE4 PROC
	
		;Lógica del Programa

		;Realizar la sumatoria, de todos los numero que sean ingresados hasta que se ingrese
		;un valor negativo. El negativo no se suma

		mov ecx, 0

		ciclo:
			mov edx, offset msj1_e4
			call writestring
			call crlf
			call readint	;eax
			add ecx, eax
			jge ciclo

		sub ecx, eax
		mov eax, ecx
		call writedec	;imprime lo que tenga EAX

		exit	
	
	mainE4 ENDP
	
	END mainE4