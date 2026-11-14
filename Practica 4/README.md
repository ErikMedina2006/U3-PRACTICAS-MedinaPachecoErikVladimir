# Práctica 4: Uso de la Pila para Paso de Parámetros y Multiplicación (`imul`) en x86 MASM

## 📋 Descripción del Programa
Este programa en **ensamblador x86 (32 bits)**, basado en la librería `Irvine32.inc`, demuestra cómo utilizar la pila (`stack`) para pasar parámetros de manera ordenada a un procedimiento, además de emplear la instrucción `imul` para realizar operaciones de multiplicación con signo.

El flujo del programa realiza lo siguiente:
1. **En el bloque `main`:** Inicializa registros de trabajo y utiliza la instrucción `push` para colocar dos valores numéricos (`1` y `2`) en la pila, preparándolos para ser consumidos por la función.
2. **Salto al procedimiento (`call sumarPila`):** Transfiere el control de ejecución hacia la rutina encargada de procesar los datos.
3. **Gestión del marco de pila (Stack Frame):** Configura el registro base `ebp` para acceder a los parámetros apilados mediante desplazamientos relativos (`[ebp+8]` y `[ebp+12]`) preservando la integridad de los registros auxiliares.
4. **Operación aritmética:** Multiplica ambos valores utilizando `imul` y limpia la pila al retornar mediante la instrucción `ret 8`.

---

## 🔍 Comprobaciones al Ejecutar
Al compilar y ejecutar el código, se verificaron los siguientes puntos clave:

* **Paso de Parámetros por Pila:** Se confirmó que los valores apilados antes del `call` son accesibles dentro de la rutina utilizando el puntero de base `ebp` con los desplazamientos correctos.
* **Multiplicación con `imul`:** Se validó que la instrucción opera correctamente sobre los operandos cargados en los registros, almacenando el resultado esperado en `eax`.
* **Limpieza y Retorno (`ret 8`):** Se comprobó que el uso de `ret 8` restablece adecuadamente el puntero de la pila liberando los 8 bytes ocupados por los dos argumentos enteros pasados al procedimiento.
