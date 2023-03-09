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
var1_E6 dword 2d

msj1_E6 db "ingrese el valor de A: ", 0
msj2_E6 db "ingrese el valor de B: ", 0
msj3_E6 db "ingrese el valor de C: ", 0
resultado_E6 db "El area del terreno es: ", 0

.code
	
	mainE6 PROC
	
		;Lógica del Programa
		mov edx, offset msj1_E6
		call writestring
		call crlf
		call readint		;guarda eax

		mov ebx, eax		;ebx = A

		mov edx, offset msj2_E6
		call writestring
		call crlf
		call readint		;guarda eax

		mul ebx
		mov edx, 0			;limpamos el registro para evitar el ecceso de flow
		div var1_E6

		mov ecx, eax

		mov edx, offset msj3_E6
		call writestring
		call crlf
		call readint


		exit	
	
	mainE6 ENDP
	
	END mainE6