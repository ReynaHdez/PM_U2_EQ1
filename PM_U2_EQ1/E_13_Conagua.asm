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
msj1_agua db "Ingrese la cantidad de agua gastada: ", 0
msj2_preciolitro db "El precio por litro es de: ", 0
msj3_pagar db "El costo de la cuenta es de $", 0


.code
	
	mainE13 PROC
	
		;Lógica del Programa
		mov edx, offset msj1_agua
		call writestring
		call crlf

		call readint
		mov ebx, eax

		mov edx, offset msj2_preciolitro
		call writestring
		call crlf

		call readint

		mul ebx		;multiplica el precio 

		mov edx, offset msj3_pagar
		call writestring
		call writedec


		exit	
	
	mainE13 ENDP
	
	END mainE13