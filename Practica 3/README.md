# Práctica 3: Validación de Cadenas de Texto Vacías en x86 MASM

## 📋 Descripción del Programa
Este programa en **ensamblador x86 (32 bits)** utiliza la librería `Irvine32.inc` para solicitar una cadena de texto al usuario mediante la consola y comprobar dinámicamente si el ingreso se realizó correctamente o si se dejó vacío.

El flujo del programa realiza lo siguiente:
1. Muestra un mensaje solicitando texto al usuario (*"Ingresa una cadena (o presiona Enter para dejarla vacia):"*).
2. Utiliza la función `ReadString` para capturar la entrada y almacenarla en un arreglo de bytes (`cadena`).
3. Evalúa el contenido de la variable verificando si el primer byte es igual a `0` (`cmp BYTE PTR [cadena], 0`), lo cual indica que se presionó Enter sin ingresar caracteres.
4. Redirige el flujo mediante saltos condicionales (`je` / `jmp`) para imprimir en consola si **"La cadena ESTA vacia"** o si **"La cadena NO esta vacia"**.

---

## 🔍 Comprobaciones al Ejecutar
Al compilar y ejecutar el programa en distintas pruebas, se verificó lo siguiente:

* **Captura de Entrada con `ReadString`:** Se confirmó que la función almacena correctamente los caracteres ingresados y coloca un terminador nulo o maneja adecuadamente la longitud cuando el usuario solo presiona la tecla Enter.
* **Evaluación Condicional por Byte:** Se comprobó que la instrucción `cmp BYTE PTR [cadena], 0` es efectiva para detectar de manera inmediata el estado inicial del búfer de la cadena y tomar decisiones de control de flujo con precisión.
* **Respuesta en Consola:** Se validó que los mensajes de estado (`msgVacia` y `msgNoVacia`) se muestran correctamente en pantalla utilizando las funciones `WriteString` y `Crlf` antes de finalizar la ejecución del programa con `exit`.
