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
cadena db "Ingresa un numero: ", 0

.code

	main5 PROC
	
		;L�gica del Programa

		mov edx, offset cadena
		call writestring
		call crlf

		call readint	;lee un valor ingresado por consola y lo almacena en eax

		call crlf
		call writeint	;echo para comprobar el contenido eax

		
		exit	
	
	main5 ENDP
	
	END main5
