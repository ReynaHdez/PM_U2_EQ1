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

;MOV destino, origen	;destino = origen
;Destino/Origen pueden ser tres cosas (Variables, Registros, Inmediatos)
;Registros = EAX, EBX, ECX, EDX
;Inmediatos = Valores (1,2,3,a,b,c,hola)
;Viariables = Memoria

;Origen y destino deben de ser de la misma capacidad ("Tipo de dato")
;Es decir mover un registro de 16bits a otro de 16bit
;No se puede mover de 16bits a 32bits

.data
; Área de Declaración de Variables
var1 dword 12

.code
	
	main1 PROC
	
		;Lógica del Programa
		;EAX, EBX, ECX (Comienzan con valores desconocidos)

		;Prueba de inmediato a memoria
		mov var1, 7		;var1 = 7

		;Prueba de inmediato a registro
		mov eax, 24		;eax = 24

		;Prueba de registro a memoria
		mov var1, eax	;var1 = eax

		;Prueba de memoria a registro
		mov ebx, var1	;ebx = var1

		;Prueba de registro a registro
		mov ecx, ebx	;ecx = ebx
		
		exit	
	
	main1 ENDP
	
	END main1
