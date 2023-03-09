INCLUDE Irvine32.inc  

.data
; Área de Declaración de Variables

msj_mul db " x ", 0
msj_igual db " = ", 0
msj_elegirTabla db "Que tabla desea realizar?: ", 0

msj_intentos db "Usted lleva un total de intentos: ", 0
msj_continuar db "Desea continuar? (1 = SI, 2 = NO)", 0
msj_respuesta db "Ingrese su respuesta: ", 0
msj_error db "Respuesta incorrecta. "

varSI dword 1d
varNO dword 2d

.code

mainP2 PROC
    ;Lógica del Programa
    mov edx, offset msj_elegirTabla
    call writestring
    call crlf
    call readint
    mov ebx, eax ; Guardar la tabla elegida en ebx
    
    mov ecx, 1 ; Inicializar contador de intentos
    cicloTabla:
        mov eax, ecx ; Poner el número actual en eax
        mov edx, offset msj_mul
        call writestring
        call writedec; Mostrar tabla elegida
        mov edx, offset msj_igual
        call writestring
        
        mul ebx ; Multiplicar número actual por tabla elegida
        
        call writedec
        call crlf
        
        ; Preguntar al usuario la respuesta
        mov edx, offset msj_respuesta
        call writestring
        call readint
        
        cmp eax, edx ; Comparar respuesta con la esperada
        je respuestaCorrecta
        
        ; Si la respuesta es incorrecta
        mov edx, offset msj_error
        call writestring
        call crlf
        
        inc ecx ; Incrementar contador de intentos
        cmp ecx, 5 ; Comprobar si se han realizado 5 intentos
        jne cicloTabla ; Si no, volver a la multiplicación
        
        ; Si se han realizado 5 intentos
        mov edx, offset msj_intentos
        call writestring
        call writedec ; Mostrar el contador de intentos
        call crlf
        jmp fin
        
    respuestaCorrecta:
        inc ecx ; Incrementar contador de intentos
        mov edx, offset msj_intentos
        call writestring
        call writedec ; Mostrar el contador de intentos
        call crlf
        
        ; Preguntar si se desea continuar
        mov edx, offset msj_continuar
        call writestring
        call crlf
        call readint
        
        cmp eax, varNO ; Si no desea continuar, terminar programa
        je fin
        
        ; Si desea continuar, volver a la multiplicación
        jmp cicloTabla
    
    fin:
        exit
        
mainP2 ENDP

END mainP2

