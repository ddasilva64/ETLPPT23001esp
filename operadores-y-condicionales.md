# Operadores y condicionales

## Operadores aritméticos

| Operador | Nombre           | Ejemplo |
| :------: | :--------------- | :-----: |
| +        | suma             | x + y   |
| -        | Resta            | x - y   |
| *        | Multiplicación   | x * y   |
| /        | División         | x / y   |
| %        | Módulo           | x % y   |
| **       | Potencia         | x ** y  |
| //       | División entera  | x // y  |

**Notas**: 
1. Elevar un número a 0.5 equivale a hacer la raíz cuadrada de ese número
2. La división por 0 da error

**Orden de prelación de los operadores aritméticos**:
1. **P**arétesis
2. **E**xponentes
3. **M**ultiplicación 
4. **D**ivisión
5. **A**dición
6. **S**ubstracción

**Nota**: En la expresión se evaluará de izquierda a derecha con el orden especificado

````python

'''
Código:   octavo ejemplo
Utilidad: operadores aritméticos
'''

# operaciones aritméticas
print('----------- operaciones aritméticas -----------')
print(10 + 10)
print(10 - 5)
print(10 * 2)
print(10 / 2) # 5
print(10 % 2) # 0
print(10 / 3)
print(10 % 3)
print(10 // 3)
print(2 ** 3)

# orden de prelación de los operadores aritméticos
print('----------- orden de prelación de los operadores aritméticos -----------')
print(2 ** 3 + 3 - 7 / 1 // 4)
print(2 ** 3)
print((7 / 1) // 4)
print(8 + 3 - 1)

# print(10 / 0) esto daría un error

# raíz cuadrada con exponente 0.5
print('----------- raíz cuadrada con exponente 0.5 -----------')
print(25**0.5)

# operadores aritméticos con strings
print('----------- operadores aritméticos con strings -----------')
print('Hola' + ' Mundo')
print('Hola ' * 3)

````

![Ejecución programa desde el shell](https://i.imgur.com/hZMz5BW.png)

El programa se adjunta en el repositorio como 08_arith.py

## Operadores de comparación

| Operador | Nombre            | Ejemplo    |
| :------: | :---------------- | :--------: |
| ==	   | Igual             |	x == y	|
| !=	   | No igual          |	x != y	|
| >	       | Mayor que         |	x > y	|
| <	       | Menor que         |	x < y	|
| >=	   | Mayor o igual que |    x >= y	|
| <=	   | Menor o igual que | 	x <= y  |

````python

'''
Código:   noveno ejemplo
Utilidad: manejo de operadores de comparación

'''

# ejemplo de >
print('----------- > -----------')
print(7 > 3)    # retorna True
print(3 > 7)    # retorna False
print(7 > 7)    # retorna False

# ejemplo de <
print('----------- < -----------')
print(5 < 6)    # retorna True
print(6 < 5)    # retorna False
print(5 < 5)    # retorna False

# ejemplo de >=
print('----------- >= -----------')
print(2 >= 1)    # retorna True
print(2 >= 3)    # retorna False
print(2 >= 2)    # retorna True

age = 15
print(age >= 18) # retorna False

# ejemplo de >=
print('----------- <= -----------')
print(1 <= 2)    # retorna True
print(2 <= 1)    # retorna False
print(2 <= 2)    # retorna True

# ejemplo de >=
print('----------- == -----------')
print(6 == 6)    # retorna True
print(5 == 2)    # retorna False

print("Apple" == 'Apple')  # retorna True
print("Apple" == 'apple')  # retorna False
print("1" == 1)            # retorna False


# ejemplo de >=
print('----------- != -----------')
print(6 != 10)    # retorna True
print(6 != 6)     # retorna False

````

![Ejecución programa desde el shell](https://i.imgur.com/tiXuJWC.png)

El programa se adjunta en el repositorio como 09_comparators.py
