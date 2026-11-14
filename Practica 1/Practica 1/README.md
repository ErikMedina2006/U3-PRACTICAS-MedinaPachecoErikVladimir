# Práctica 1: Uso de Procedimientos (CALL/RET) en x86 MASM

## 📋 Descripción del Programa
Este programa en **ensamblador x86 (32 bits)** utiliza la librería `Irvine32.inc` para demostrar el concepto de modularización de código mediante el uso de procedimientos utilizando las instrucciones `CALL` y `RET`. 

El flujo del programa realiza lo siguiente:
1. Muestra un mensaje inicial en la consola (*"inicio de programa"*).
2. Llama al procedimiento `mensajeAviso` para imprimir un mensaje secundario (*"Estoy dentro del procedimiento"*).
3. Realiza operaciones de carga de valores en registros (como `mov eax, 10` y `mov eax, 20`) entre las llamadas.
4. Finaliza mostrando un mensaje de cierre (*"Fin del programa"*).

---

## 🔍 Comprobaciones al Ejecutar
Al compilar y ejecutar el programa en el entorno de desarrollo, se comprobó lo siguiente:

* **Control de flujo con la pila (Stack):** Se verificó que la instrucción `CALL` guarda correctamente la dirección de retorno en la pila y salta a la etiqueta del procedimiento, mientras que la instrucción `RET` extrae dicha dirección para regresar de manera fluida al flujo principal (`main`).
* **Modularización:** Se confirmó que un mismo procedimiento (`mensajeAviso`) puede ser invocado múltiples veces desde diferentes puntos del programa sin alterar la estructura general ni perder el hilo de ejecución principal.
* **Integridad de registros:** El uso de las macros y funciones de la librería de Irvine (`WriteString`, `Crlf`) opera correctamente al interactuar con la consola de Windows bajo la arquitectura x86.
