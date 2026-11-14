;Materia: Lenguajes de Interfaz
;Alumno: Medina Pacheco Erik Vladimir
;Horario: 10 Am - 11 Am
;Docente: Dr. José Luis Medina Jiménez
;Práctica: PRACTICA 5.
;Descripción: Demuestra el uso de macros para encapsular y reutilizar bloques de código repetitivos

INCLUDE Irvine32.inc

; macro para mostrar un mensaje en pantalla
MostrarMensaje MACRO texto
	mov edx, OFFSET texto
	call WriteString
	call Crlf
ENDM
; macro para multiplicar dos números y mostrar el resultado
Multi MACRO num1, num2
	mov eax, num1
	imul eax, num2
	call WriteInt
	call Crlf
ENDM

.data
	mensajeBienvenida BYTE "Bienvenido al sistema", 0
	mensajeFin BYTE "Nos vemos!", 0
.code
main PROC 
	;llamada a la macro para mostrar el mensaje de bienvenida
	MostrarMensaje mensajeBienvenida
	;llamada a la macro para mostrar el mensaje de despedida
	MostrarMensaje mensajeFin

	; llamada a la macro para multiplicar dos números y mostrar el resultado
	Multi 4, 5

main ENDP
END main