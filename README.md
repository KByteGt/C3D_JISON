# Interprete con Jison
## Organización De Lenguajes y Compiladores 2
Escriba un esquema de traducción dirigido por la sintaxis posfijo, para un analizador ascendente que reciba como entrada una expresión aritmética (*,+,-,/ y paréntesis) y genere para esta el código de tres direcciones equivalente utilizando el generador de analizadores sintácticos
## Esquema de traducción dirigido por la sintaxis posfijo
![Esquema de traducción dirigido por la sintaxis posfijo](https://raw.githubusercontent.com/KByteGt/C3D_JISON/main/resultados/esquema.png)
## Entradas: 

### (a + b) * (a + c)
![Salida 1](https://raw.githubusercontent.com/KByteGt/C3D_JISON/main/resultados/salida1.png)
### x * x
![Salida 2](https://raw.githubusercontent.com/KByteGt/C3D_JISON/main/resultados/salida2.png)
### y * y
![Salida 1](https://raw.githubusercontent.com/KByteGt/C3D_JISON/main/resultados/salida1.png)
### x2 + y2
![Salida 1](https://raw.githubusercontent.com/KByteGt/C3D_JISON/main/resultados/salida1.png)
### b + c + d
![Salida 1](https://raw.githubusercontent.com/KByteGt/C3D_JISON/main/resultados/salida1.png)
### a * a + b * b
![Salida 1](https://raw.githubusercontent.com/KByteGt/C3D_JISON/main/resultados/salida1.png)
### 5 + 2 * b
![Salida 1](https://raw.githubusercontent.com/KByteGt/C3D_JISON/main/resultados/salida1.png)
### 6 + 7 * 10+5 / 1
![Salida 1](https://raw.githubusercontent.com/KByteGt/C3D_JISON/main/resultados/salida1.png)
### ((7 + 9)/(((3 + 1) * (6 + 7) + 8) * 7) / 9) + 100
![Salida 1](https://raw.githubusercontent.com/KByteGt/C3D_JISON/main/resultados/salida1.png)
### 7 * 9 - 89 + 63
![Salida 1](https://raw.githubusercontent.com/KByteGt/C3D_JISON/main/resultados/salida1.png)