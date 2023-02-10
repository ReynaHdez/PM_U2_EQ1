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
msjEntrada_10 db "Ingresa una Calificacion: ", 0
msjResultado_10 db "El promedio es: ", 0
.code
	
	main10 PROC
	
		;Lógica del Programa

		mov edx, offset msjEntrada_10		;calf 1
		call writestring
		call crlf

		call readint		;lee un numero y lo guarda en eax
		;Disponibles ebx, exc.... para resguardar el valor
		mov ebx, eax		;guarda el valor eax en ebx

		mov edx, offset msjEntrada_10		;calf 2
		call writestring
		call crlf

		call readint		;lee un numero y lo guarda en eax
		;Resguardar u operar...
		; ---Operar : (sumar)
		Add ebx, eax ;Cal 1 +2 


		mov edx, offset msjEntrada_10		;calf 3
		call writestring
		call crlf

		call readint		;lee un numero y lo guarda en eax
		;Resguardar u operar...
		; ---Operar : (sumar)
		Add ebx, eax ; (Cal 1 +2 ) + cal 3

		mov edx, offset msjEntrada_10		;calf 4
		call writestring
		call crlf

		call readint		;lee un numero y lo guarda en eax
		;Resguardar u operar...
		; ---Operar : (sumar)
		Add ebx, eax ; (Cal 1 + 2 + cal 3) + cal 4

		mov edx, offset msjEntrada_10		;calf 5
		call writestring
		call crlf

	    call readint		;lee un numero y lo guarda en eax
		;Resguardar u operar...
		; ---Operar : (sumar) ... pero guardar en eax, para facilitar la proxima division
		Add eax, ebx ; Cal 5 + (Cal 1 + 2 + cal 3 + cal 4)


		mov edx, offset msjResultado_10		;resultado
		call writestring
		call crlf

		;La division siempre es eax /...
		;Division eax entre registro o una variable
		;Requiere que edx se encuentre en 0, para evitar overflow

		mov edx, 0 ; para guardar el residuo

		;Hasta este punto ecx, no cuenta con algun valor de utilidad
		; Y en ebx, el valor ya no se utilizara, por que ya fue utlizado a realizar la suma anterior
		; En este sentido, se puede utilizar ebx o ecx... se escogio ecx...
		mov ecx, 5
		Div ecx ; el cociente se guarda en eax

		call writeint

		
		exit	
	
	main10 ENDP
	
	END main10
