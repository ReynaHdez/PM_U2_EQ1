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

.code
	
	main18 PROC
	
		;L�gica del Programa

		ciclo:
		     call readint; eax
			 cmp eax,0
			 jge ciclo

		exit	
	
	main18 ENDP
	
	END main18