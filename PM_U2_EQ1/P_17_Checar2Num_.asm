TITLE NombrePrograma

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Apellido Nombre Integrante 1
;         Apellido Nombre Integrante 2

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI�N

INCLUDE Irvine32.inc  


.data
;Area de Declaracion de Variables
mayorA_17 db "A es mayor que B", 0
mayorB_17 db "B es mayor que A", 0
iguales_17 db "A y B Son iguales", 0

msj1_17 db "Ingresa el valor de A ", 0
msj2_17 db "Ingresa el valor de B ", 0


.code
	
	main17 PROC
	
		;L�gica del Programa

		mov edx, offset msj1_17
		call writestring
		call crlf

		call readint		;guarda valor de A en eax

		mov edx, offset msj2_17
		call writestring
		call crlf

		mov ebx, eax		;respalda el valor de eax en ebx
		call readint		;guarda valor de B en eax
		;eax = B y en ebx = A

		cmp ebx, eax		;comparamos a A con B

		jz igual
		jl menor

		mov edx, offset mayorA_17
		call writestring
		call crlf

		jmp salir

		menor:
			mov edx, offset mayorB_17
			call writestring
			call crlf

		jmp salir

		igual:
			mov edx, offset iguales_17
			call writestring
			call crlf

		salir:
		exit	
	
	main17 ENDP
	
	END main17