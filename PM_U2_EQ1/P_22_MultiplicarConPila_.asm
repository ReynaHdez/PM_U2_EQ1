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
msj1_21 db " x ", 0
msj2_21 db " = ", 0
msj3_21 db "Que tabla quiere mostrar?: ", 0

.code
	
	main22 PROC
	
		;Lógica del Programa

		;Desplegar la tabla de multiplicar indicada por el usuario...

		mov edx, offset msj3_21		;Elije la tabla
		call writestring
		call crlf

		call readint			;tabla que se quiere visualizar
		mov ebx, 1				;contador de la tabla

		ciclo:
			call writedec		;imprime la tabla

			mov edx, offset msj1_21	
			call writestring

			xchg eax, ebx
			call writedec

			mov edx, offset msj2_21	
			call writestring

			;hasta aqui en eax esta el contador y ebx el valor de la tabla
			;si se hace una multiplizacion se va a perder el contador...
			;necesitamos eviarlo... como?

			push eax	;respaldo del valore del contador... toma el valor de eax y lo guarda en la pila

			mul ebx		;eax = eax * ebx = contador * tabla
			call writedec	;imprimr el resultado de la multiplicacion
			pop eax	;recupera el valor de la tabla almacenada en la pila y lo coloca en eax

			;en este punto... eax = contador
			;ebx = tabla

			inc eax		;Incrementa el contador en 1
			xchg eax, ebx	;intercambia los registros para que en eax = tabla y en ebx = contador
			call crlf

			cmp ebx, 10
			jle ciclo

		exit	
	
	main22 ENDP
	
	END main22