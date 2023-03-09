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

.code

	main25 PROC
	
		;Lógica del Programa
		;prog1
		 ;mov eax, 65
		 ;call writechar ;A
		 ;call crlf

		 ;prog2

		 ;call readChar ;eax
		 ;call writechar ;echo
		 ;call crlf

		 ;prog 3
		 mov eax, 10
		 ;call randomrange ;  0 - eax = eax
		 ;call writedec
		 ;call crlf

		 ;prog 4
		 ;mov ecx, 100

		 ;ciclo:
		; mov eax, 10 
		 ;call randomrange ; imprime el rango de numero aleatorios [0,39]
		 ;call writedec
		 ;call crlf
		 
		 ;loop ciclo ;   dec, camp, jg


		 ;prog 5

		 ;call randomize
		 ;mov ecx, 100

		 ;ciclo:
		 ;mov eax, 10
		 ;call randomrange
		 ;call writedec
		 ;call crlf
		 
		 ;loop ciclo ;   dec, camp, jg


		 ;prog 6
		 ;mov eax, 10
		 ;call waitmsg
		 ;call writedec

		 ;prog 7

		 ;mov eax, 10
		 ;push eax
		 ;mov eax, 500
		 ;call delay
		 ;pop eax
		 ;call writedec

		 ;prog 8
		 ;loop trabaja con ecx

		 mov ecx, 10

		 ciclo:
		 mov eax, 40
		 call writedec
		 call crlf
		 loop ciclo ;siempre utiliza ecx


		exit	
	
	main25 ENDP
	
	END main25
