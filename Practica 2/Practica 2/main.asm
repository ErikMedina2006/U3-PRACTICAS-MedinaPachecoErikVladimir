;Materia: Lenguajes de Interfaz
;Alumno: Medina Pacheco Erik Vladimir
;Horario: 10 Am - 11 Am
;Docente: Dr. José Luis Medina Jiménez
;Práctica: PRACTICA 2.
;Descripción: muestra cómo funciona el stack y las direcciones de retorno leyendo directamente la cima de la pila

INCLUDE Irvine32.inc

.data

.code
main PROC 
	; Lee la cima del stack
	mov eax,[esp]
	call WriteHEx
	call Crlf
	call procUno ; Hace una llamada al procedimiento procUno	
	exit
main ENDP
	
procUno PROC
	; Lee la cima del stack que contiene la dirección de retorno de procUno
	mov eax, [esp]
	call WriteHex
	call Crlf
	; Al invocar procDos, se empuja una nueva dirección de retorno al stack
	call procDos
	
	ret
procUno ENDP

procDos PROC
	; Lee la cima del stack que contiene la dirección de retorno de procDos
	mov eax, [esp]
	call WriteHex
	call Crlf
	ret
procDos ENDP

END main