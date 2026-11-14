;Materia: Lenguajes de Interfaz
;Alumno: Medina Pacheco Erik Vladimir
;Horario: 10 Am - 11 Am
;Docente: Dr. José Luis Medina Jiménez
;Práctica: PRACTICA 4.
;Descripción: Muestra el uso de la pila para pasar parámetros a una función, 
;y el uso de la instrucción imul para multiplicar dos valores.

INCLUDE Irvine32.inc

.data
	
.code
main PROC 
	 mov ebx, 10
	 push 1	;el primer valor a multiplicar y guardarlo en la pila
	 push 2 ;el segundo valor a multiplicar y guardarlo en la pila

	 call sumarPila	; salto al procedimiento sumarPila

	 nop
	 exit

main ENDP

sumarPila PROC 
	push ebp ; guarda el valor de ebp en la pila
	mov ebp, esp ; establece ebp como el nuevo puntero de pila

	push ebx ; reserva espacio para ebx en la pila, ya que se va a usar en el procedimiento

	mov eax, [ebp+8] ; accede al valor 2
	mov ebx, [ebp+12]; accede al valor 1

	imul eax, ebx ; multiplica los valores de eax y ebx, el resultado se guarda en eax
	
	pop ebx ; restaura el valor original de ebx
	pop ebp	; restaura el valor original de ebp

	ret 8 ; retorna y limpia los parámetros de la pila

sumarPila ENDP

END main
