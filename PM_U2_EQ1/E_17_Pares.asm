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
msj1_numero db "Ingresa la cantidad de pares: ", 0 
msj2_pares db "Los pares son: ", 0


.code
	
	mainE17 PROC
    
		;Lógica del Programa
	    mov edx, offset msj1_numero ;pide al usuario ingresar la cantidad de pares
		call writestring
		call crlf

		call readint	; llee y guarda eax
	
	    mov ebx, eax ; mueve el valor de eax a ebx

		mov edx, offset msj2_pares ;imprime el mensaje 2
		call writestring

	    mov eax, 2 ; se inicia con 2 por el numero par
	    mov edx, 0 ; se inicia con 0 por que cuenta la cantidad de numeros pares
		call crlf

	    pares: 
	    call writedec; imprime el numero que esta en eax
		call crlf 
	    add eax, 2 ; suma 2 a eax par

	    inc edx; incrementa edx para contar los numero pares
	    cmp edx, ebx ;compara los numeros con la cantidad ingresada
	    jl pares ;se regresa al inicio si no se a impreso la cantidad de pares

		exit
	
	mainE17 ENDP
	
	END mainE17