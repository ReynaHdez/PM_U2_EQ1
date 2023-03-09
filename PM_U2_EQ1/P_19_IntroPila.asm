TITLE NombrePrograma

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Apellido Nombre Integrante 1
;         Apellido Nombre Integrante 2

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc  


.data
;Area de Declaracion de Variables

.code
	
	main19 PROC
	
		;Lógica del Programa


		;mov eax, 15;

		mov edx, 10 ; colocando en el registro edx el valor 10
		;este se pudo obtener de diversas formas o como resultado de alguna operacion

		;se requiere utlizar el registro edx, sin embargo, no se requiere perder su valor
		;entonces, se recurre a la pila para almacenar temporalmentee el valor del registro

		push edx ; almacenar el valor de edx en la pila

		mov edx, 0; cambia el valor de edx, y pone en este el nuevo valor

		mov eax, edx ; se coloca en eax el valor de edx para poder imprimirlo en consola

		call writedec
		call crlf
		
		pop eax ; recupera el ultimo valor que se guardo en la pila
		;en este caso, el valor de edx al comienzo del programa

		call writedec
		call crlf

		;checar que tiene la pila ahora...
		mov eax, 2
		pop eax
		call writedec
		call crlf

		exit	
	
	main19 ENDP
	
	END main19