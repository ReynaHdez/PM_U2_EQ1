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
;Solicitar el valor de "X" y pedir al usuario que ingrese tantos numeros que sean menores que X
msj1_E5 db "Ingrese numero x : ", 0
msj2_E5 db "Ingrese numero ", 0
msj3_E5 db "El numero ingresado es menor que x: " , 0

.code
	
	mainE5 PROC
	
		;Lógica del Programa
		mov edx, offset msj1_E5
		call writestring
		call crlf
		call readint
		mov ebx, eax

		ciclo:
		    mov edx, offset msj2_E5
			call writestring
		    call crlf
			call readint
		    cmp eax, ebx
			jge ciclo
			push eax

		mov edx, offset msj3_E5
		call writestring
		call crlf
		pop eax
		call writedec
		call crlf


		exit	
	
	mainE5 ENDP
	
	END mainE5