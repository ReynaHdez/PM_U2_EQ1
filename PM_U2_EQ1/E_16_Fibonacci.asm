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
var1_16 dword 0d
var2_16 dword 1d

.code

	mainE16 PROC
	
		;Lógica del Programa
		mov eax, var1_16 ;Primero numero de la serie 
		mov ebx, var2_16; Segundo numero de la serie 
		mov ecx, 0 ;Inicia la serie en 0

		fibonacci:
		call writedec ;escribe el valor actual en la serie
		call crlf

        add eax, ebx ;suma dos numeros 0 y 1, lo guarda en eax   
        mov ebx, ecx ;mueve el valor de ecx a ebx
        mov ecx, eax ;mueve el valor de eax a ecx

		cmp ecx, 100 ; compara el valor de ecx con 100
		jle fibonacci ; salta si ecx es menor o igual a 100

		call writedec

		exit	
	
	mainE16 ENDP
	
	END mainE16