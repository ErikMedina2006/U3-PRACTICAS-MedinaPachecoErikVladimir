;Materia: Lenguajes de Interfaz
;Alumno: Medina Pacheco Erik Vladimir
;Horario: 10 Am - 11 Am
;Docente: Dr. José Luis Medina Jiménez
;Práctica: PRACTICA 3.
;Descripción: Solicita una cadena de texto al usuario y valida si está vacía o no utilizando procedimientos

INCLUDE Irvine32.inc

.data
    cadena BYTE 50 DUP(0)          
    msgPedir BYTE "Ingresa una cadena (o presiona Enter para dejarla vacia): ", 0
    msgVacia BYTE "La cadena ESTA vacia.", 0
    msgNoVacia BYTE "La cadena NO esta vacia.", 0

.code
main PROC
    mov  edx, OFFSET msgPedir
    call WriteString

    mov  edx, OFFSET cadena
    mov  ecx, SIZEOF cadena
    call ReadString ; Lee la entrada del usuario y la almacena en la variable 'cadena'

    ; 2. Validar si está vacía comprobando el primer byte
    cmp  BYTE PTR [cadena], 0 ;Preguntar si el primer byte es 0 (cadena vacía)
    je   EsVacia ; Si es igual a 0, salta a la etiqueta EsVacia

; Validacion si no esta vacia
NoEsVacia:
    mov  edx, OFFSET msgNoVacia
    call WriteString
    call Crlf
    jmp  Fin

; Validacion si esta vacia
EsVacia:
    mov  edx, OFFSET msgVacia
    call WriteString
    call Crlf

Fin:
    exit
main ENDP
END main