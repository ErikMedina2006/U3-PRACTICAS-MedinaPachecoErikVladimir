# Práctica 5: Uso de Macros para Encapsulamiento y Reutilización en x86 MASM

## 📋 Descripción del Programa
Este programa en **ensamblador x86 (32 bits)**, desarrollado con la librería `Irvine32.inc`, demuestra cómo definir y utilizar **macros** para encapsular bloques de código repetitivos, facilitando la modularidad y limpieza del código fuente sin incurrir en la sobrecarga de llamadas a procedimientos (`CALL`/`RET`).

El programa define y utiliza dos macros principales:
1. **`MostrarMensaje`**: Encapsula la carga de la dirección de una cadena (`mov edx, OFFSET texto`) y las llamadas a las funciones `WriteString` y `Crlf` para imprimir mensajes en la consola.
2. **`Multi`**: Encapsula una operación aritmética de multiplicación con signo (`imul`) entre dos números ingresados como parámetros, cargando el resultado en `eax` y mostrándolo directamente con `WriteInt` y `Crlf`.

---

## 🔍 Comprobaciones al Ejecutar
Al compilar y ejecutar el código, se verificaron los siguientes aspectos técnicos:

* **Expansión de Macros en Ensamblaje:** Se comprobó que el preprocesador del ensamblador reemplaza cada invocación de las macros (`MostrarMensaje` y `Multi`) con su respectivo bloque de instrucciones en tiempo de compilación, optimizando el flujo de ejecución.
* **Reutilización de Código:** Se validó que la macro `MostrarMensaje` puede ser llamada múltiples veces con diferentes argumentos (`mensajeBienvenida` y `mensajeFin`) de forma limpia y directa.
* **Paso de Argumentos en Macros:** Se confirmó que la macro `Multi 4, 5` procesa correctamente los valores pasados como parámetros para realizar el cálculo aritmético y desplegar el resultado entero esperado en la consola.
