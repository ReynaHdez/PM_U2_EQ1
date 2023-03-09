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
	
	main16 PROC
	
		;Lógica del Programa

		;x = 3
		;y = 4
		;x elevada a la 4
		;3 x 3 x 3 x 3

		call readint		;leemos la base y guardamos eax
		mov ebx, eax		;respalda la base

		call readint		;leemos la potencia y guardamos eax
		mov ecx, eax		;respalda la potencia

		;se debe regresar la base a eax
		mov eax, ebx

		repite:
			mul ebx
			sub ecx, 1
			cmp ecx, 1
			jg repite

		call writedec


		exit	
	
	main16 ENDP
	
	END main16