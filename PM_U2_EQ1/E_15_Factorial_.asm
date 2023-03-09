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
; �rea de Declaraci�n de Variables

msj1_factorial db "Ingrese el numero a factorizar: ", 0
msj2_factorial db "El factorial es: ", 0

.code

mainE15 PROC
    ;L�gica del Programa
    mov edx, offset msj1_factorial
    call writestring
    call crlf

    call readint
    mov ebx, eax
    mov eax, 1

    factorial_loop:
        cmp ebx, 1
        je fin_factorial
        mul ebx
        dec ebx
        jmp factorial_loop

    fin_factorial:
        mov edx, offset msj2_factorial
        call writestring
        call writedec
        call crlf

    exit
    
mainE15 ENDP

END mainE15