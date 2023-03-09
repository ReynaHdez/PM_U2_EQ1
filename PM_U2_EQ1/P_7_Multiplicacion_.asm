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
; Área de Declaración de Variables
var1_7 dword 10d

.code

	main7 PROC
	
		;Lógica del Programa

		;la multiplicacion en ensamblador unicamente se puede realizar entre el registro eax y un operando
		;proporcionado en la instruccion, el operando no puede ser un valor inmediato
		;El resultado de la multiplicacion se almacena en eax

		;Ejemplo 1

		mov eax, 5
		mul var1_7		;eax = eax * var1_7
		call writeint
		call crlf

		;Ejemplo 2
		mov eax, 5
		mov ebx, 2
		mov ecx, 3

		mul ebx		;eax = eax * ebx
		mul ecx
		call writeint
		call crlf

		;Ejemplo 3
		mov eax, 4
		;mul 5		;Es una operacion no valida (el valor debe estar en una variable o registro)

		exit	
	
	main7 ENDP
	
	END main7
