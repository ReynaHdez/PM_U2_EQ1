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
msj1_kilometro db "Ingrese la distancia a viajar: ", 0
msj2_precio db "El precio por kilometro es de: ", 0
msj3_total db "El costo del boleto es $", 0


.code
	
	mainE12 PROC
	
		;Lógica del Programa
		mov edx, offset msj1_kilometro
		call writestring
		call crlf

		call readint
		mov ebx, eax

		mov edx, offset msj2_precio
		call writestring
		call crlf

		call readint

		mul ebx		;multiplica el precio 

		mov edx, offset msj3_total
		call writestring
		call writedec


		exit	
	
	mainE12 ENDP
	
	END mainE12