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
; Área de Declaración de Variables
msj1_porcentaje db "Ingrese el total: ", 0
msj2_procentaje db "Ingrese la cantidad: ", 0

msj3_resultado db "La cantidad del porcentaje es: ", 0

var_totalpor dword 100d
.code

	mainE19 PROC
	
		;Lógica del Programa
		mov edx, offset msj1_porcentaje
		  call writestring
		  call crlf

		  call readint
		  mov ebx, eax

		  mov edx, offset msj2_procentaje
		  call writestring
		  call crlf

		  call readint

		  mul ebx
		  mov ebx, eax
		  mov ecx, 100
		  mov edx, 0
		  div ecx

		  mov edx, offset msj3_resultado
		  call writestring
		  call crlf

		  call writedec
		
		exit	
	
	mainE19 ENDP
	
	END mainE19