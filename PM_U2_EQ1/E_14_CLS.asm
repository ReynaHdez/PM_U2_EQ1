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
msj1_kw db "Ingrese el valor de precio por Kilowatt: ", 0
msj2_preciokw db "Cuanto fue el consumo de energia: ", 0
msj3_pagarkw db "El costo de la cuenta es de $", 0


.code
	
	mainE14 PROC
	
		;Lógica del Programa
		mov edx, offset msj1_kw
		call writestring
		call crlf

		call readint
		mov ebx, eax

		mov edx, offset msj2_preciokw
		call writestring
		call crlf

		call readint

		mul ebx		;multiplica el precio 

		mov edx, offset msj3_pagarkw
		call writestring
		call writedec


		exit	
	
	mainE14 ENDP
	
	END mainE14