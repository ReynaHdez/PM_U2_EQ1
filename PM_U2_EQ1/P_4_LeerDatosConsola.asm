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


.code

	main4 PROC
	
		;Lógica del Programa

		call readint
		;lee un valor ingresado por consola y lo almacena en aex

		call writeint ;echo para comprobar el contenido

		
		exit	
	
	main4 ENDP
	
	END main4
