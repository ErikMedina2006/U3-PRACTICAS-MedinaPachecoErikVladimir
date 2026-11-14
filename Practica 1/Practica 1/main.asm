;Materia: Lenguajes de Interfaz
;Alumno: Medina Pacheco Erik Vladimir
;Horario: 10 Am - 11 Am
;Docente: Dr. José Luis Medina Jiménez
;Práctica: PRACTICA 1.
;Descripción: Muestra el uso de procedimientos (CALL/RET) para modularizar código

INCLUDE Irvine32.inc

.data
	mensajeInicio BYTE "inicio de programa",0
	mensajeProcedimiento BYTE "Estoy dentro del procedimiento",0
	mensajeFin BYTE "Fin del programa",0

.code
main PROC
	mov edx, OFFSET mensajeInicio
	call WriteString
	call Crlf

	;Primera llamada
	call mensajeAviso

	mov eax, 10

	;Segunda llamado 
	call mensajeAviso
	mov eax, 20

	; Carga y muestra el mensaje final
	mov edx, OFFSET mensajeFin
	call WriteString
	call Crlf

	exit

	main ENDP

mensajeAviso PROC
	mov edx, OFFSET mensajeProcedimiento
	call WriteString
	call Crlf
	ret ; Retorna el flujo principal: extrae la dirección de retorno del stack hacia EIP
	mensajeAviso ENDP

	END main