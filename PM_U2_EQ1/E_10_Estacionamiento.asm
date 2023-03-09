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

var1_E10 dword 60d ; minutos de una hora

msj1_precio db "Ingrese el precio por hora: ", 0
msj2_hora db "Ingrese las horas de estacionamiento: ", 0
msj3_total db "El precio del estacionamiento es: ", 0

.code
		
	mainE10 PROC
	
		;Lógica del Programa
		mov edx, offset msj1_precio ; precio por hora
		call writestring
		call crlf
		call readint

		mov ebx, eax

		mov edx, offset msj2_hora ; horas de estacionamiento
		call writestring
		call crlf
		call readint

		mov eax, edx
		mov edx, 0
		mul var1_E10 

		mov edx, offset msj3_total
		call writestring
		call writedec ; imprimime el precio del estacionamiento


		exit	
	
	mainE10 ENDP
	
	END mainE10