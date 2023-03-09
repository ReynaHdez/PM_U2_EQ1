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
var1_8 dword 2d

.code

	main8 PROC
	
		;Lógica del Programa

		;La division siempre debe realizarse entre eax y un operando
		;el cociente se almacena en eax
		;el resuido se almacena en edx
		;SE RECOMIENDA LIMPIAR EL RESIGTRO EDX SIEMPRE QUE SE VAYA A REALIZAR UNA DIVISION
		
		mov eax, 10
		
		mov edx, 0 ; limpieza del registro

		div var1_8 ; eax = 10/2

		call writeint
		call crlf

		;Ejemplo 2
		mov eax, 9
		mov edx, 0
		div var1_8 ; cociente = eax residuo = edx
		call writeint ; eax = cociente
		call crlf

		;mov eax, edx ; sobreescribir el cociente ; opcion 1
		xchg eax, edx ; intercambia el valor de los registros ; opcion 2
		call writeint 
		
		
		exit	
	
	main8 ENDP
	
	END main8
