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
mensaje1_13 db "Mensaje 1", 0
mensaje2_13 db "Mensaje 2", 0
mensaje3_13 db "Mensaje 3", 0

.code
	
	main13 PROC
	
		;Lógica del Programa

		;Desplegaremos el mensaje 2, solo cuando el valo leido sea 1

		call readint ;lee un numero y lo almacena en eax

		mov edx, offset mensaje1_13
		call writestring
		call crlf

		call dumpregs ;volcado de resgistros


		cmp eax, 1 ;compara si eax es 1 -->las reglas de comparacion respetan las usadas por 
		;cmp compara a traves de una resta que despues a realizarse se deshace
		;pero si altera al resgitro de banderas

		call dumpregs ;volcado de resgistros

		jz soniguales;salta si es cero
		;realiza el salto a la localidad de la etiqueta, si la bandera de zero esta activa
		;la bandera de zero se activa, si la comparacion es entre dos numeros iguales

		jmp continuar	;salto incondicional

		soniguales:

			mov edx, offset mensaje2_13
			call writestring
			call crlf

		continuar:		;etiqueta

		mov edx, offset mensaje3_13
		call writestring
		call crlf


		exit	
	
	main13 ENDP
	
	END main13
