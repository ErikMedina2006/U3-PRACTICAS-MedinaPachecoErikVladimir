# Práctica 2: Funcionamiento del Stack y Direcciones de Retorno en x86 MASM

## 📋 Descripción del Programa
Este programa en **ensamblador x86 (32 bits)**, desarrollado utilizando la librería `Irvine32.inc`, demuestra de forma práctica cómo opera la pila (`stack`) y cómo se gestionan las direcciones de retorno en la memoria cuando se ejecutan llamadas a procedimientos (`CALL` y `RET`).

El flujo del programa realiza lo siguiente:
1. **En el bloque `main`:** Lee directamente la cima del stack apuntada por el registro `esp` (`mov eax, [esp]`) e imprime el valor en formato hexadecimal utilizando `WriteHex`.
2. **Procedimiento `procUno`:** Salta mediante una instrucción `CALL` hacia un primer procedimiento, donde vuelve a inspeccionar el contenido actual del stack para visualizar la dirección de retorno almacenada.
3. **Procedimiento `procDos`:** Desde `procUno`, realiza una segunda llamada anidada (`CALL`) hacia `procDos`, repitiendo la lectura de la cima del stack para evidenciar cómo cambian dinámicamente las direcciones de retorno a medida que se anidan las funciones antes de retornar con `RET`.

---

## 🔍 Comprobaciones al Ejecutar
Al compilar y ejecutar el código, se verificaron los siguientes aspectos técnicos:

* **Inspección de la Cima del Stack:** Se comprobó que la instrucción `mov eax, [esp]` permite acceder de manera directa al contenido superior de la pila sin alterarlo, mostrando direcciones de memoria reales en hexadecimal correspondientes al flujo de ejecución.
* **Anidación de Procedimientos y Retornos:** Se confirmó que cada vez que se invoca un procedimiento con `CALL`, la dirección de retorno se apila automáticamente, y al finalizar con `RET`, el puntero de pila se desenreda correctamente para regresar en orden inverso a cada procedimiento anterior (`procUno` y finalmente `main`).
