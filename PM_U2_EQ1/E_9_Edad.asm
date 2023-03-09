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
var_actualidad dword 2023   ; año actual

msj1_edad db "Ingrese su anio de nacimiento: ", 0
msj2_edad db "Usted es mayor de edad", 0
msj3_edad db "Usted es menor de edad", 0

.code
	
	mainE9 PROC
	
		;Lógica del Programa
		; Pide al usuario su año de nacimiento
        mov edx, offset msj1_edad
        call writestring
        call crlf
        call readint
        mov ebx, eax  ; Guarda el año de nacimiento en EBX

        ; Calcula la edad restando el año de nacimiento del año actual
        mov eax, var_actualidad
        sub eax, ebx

        ; Compara la edad con 18 y muestra el mensaje correspondiente
        cmp eax, 18
        jl menor_de_edad  ; Salta a "menor_de_edad" si la edad es menor que 18
        mov edx, offset msj2_edad
        jmp mostrar_mensaje

menor_de_edad:
    mov edx, offset msj3_edad

mostrar_mensaje:
    call writestring
    call crlf

		exit	
	
	mainE9 ENDP
	
	END mainE9