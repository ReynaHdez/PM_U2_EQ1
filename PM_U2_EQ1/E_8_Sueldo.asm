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
var1_E8 dword 6d

msj1_sueldo db "Ingrese el sueldo por hora: ", 0
msj2_tiempo db "Ingrese las horas trabajadas: ", 0

msj3_total db "Su sueldo semanal es $", 0


.code
	
	mainE8 PROC
	
		;Lógica del Programa
		mov edx, offset msj1_sueldo		;sueldo por horas
		call writestring
		call crlf
		call readint	;guarda en eax

		mov ebx, eax

		mov edx, offset msj2_tiempo		;horas
		call writestring
		call crlf
		call readint

		mul ebx		;multiplica sueldo por horas (ebx * eax)

		mul var1_E8		;multiplica el sueldo por el numero de días

		mov edx, offset msj3_total
		call writestring
		call writedec


		exit	
	
	mainE8 ENDP
	
	END mainE8
