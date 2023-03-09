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
msj1_pintor db "Ingrese la cantidad de metros cuadrados por pintar: ", 0
msj2_pintor db "Ingrese el precio por metro cuadrado: ", 0
msj3_pintor db "El presupuesto es de $", 0


.code
	
	mainE11 PROC
	
		;Lógica del Programa
		mov edx, offset msj1_pintor
		call writestring
		call crlf

		call readint
		mov ebx, eax

		mov edx, offset msj2_pintor
		call writestring
		call crlf

		call readint

		mul ebx		;multiplica el precio de los metros por la cantidad

		mov edx, offset msj3_pintor
		call writestring
		call writedec


		exit	
	
	mainE11 ENDP
	
	END mainE11