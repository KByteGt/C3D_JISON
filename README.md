# Interprete con Jison
## Organización De Lenguajes y Compiladores 2
Escriba un esquema de traducción dirigido por la sintaxis posfijo, para un analizador ascendente que reciba como entrada una expresión aritmética (*,+,-,/ y paréntesis) y genere para esta el código de tres direcciones equivalente utilizando el generador de analizadores sintácticos
## Esquema de traducción dirigido por la sintaxis posfijo
![Esquema de traducción dirigido por la sintaxis posfijo] (https://raw.githubusercontent.com/KByteGt/C3D_JISON/main/esquema.png)
## Entradas: 

### (a + b) * (a + c)
![Salida 1](https://raw.githubusercontent.com/KByteGt/C3D_JISON/main/resultados/salida1.png)
x * x
y * y
x2 + y2
b + c + d
a * a + b * b
5 + 2 * b
6 + 7 * 10+5 / 1
((7 + 9)/(((3 + 1) * (6 + 7) + 8) * 7) / 9) + 100
7 * 9 - 89 + 63