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

## Comparación de números flotantes

````python

'''
Código:   décimo ejemplo
Utilidad: comparación de flotantes

'''

# flotante
print('----------- flotante -----------')
x = 3.3
print(x)

# comparación de flotantes (precisión)
print('----------- comparación de flotantes (precisión) -----------')
y = 1.1 + 2.2     # retorna 3.3000000000000003
print(y)
print(x == y)     # 3.3 es diferente de 3.3000000000000003

# formateo de la precisión de flotantes
print('----------- formateo de la precisión de flotantes -----------')
y_str = format(y, ".2g")   # 2 dígitos en tipo string
print('str =>', y_str)
print(y_str == str(x))

# multiplicación de strings (replicación)
print('----------- multiplicación de strings (replicación) -----------')
print('*' * 10)

# comparación de precisión de flotantes
print('----------- comparación de precisión de flotantes -----------')
print(y, x)
tolerance = 0.00001
print(abs(x - y) < tolerance)


# ajuste de precisión de flotantes con .nf
print('----------- ajuste de precisión de flotantes con .nf -----------')
'''
.4f se denomina especificación de formato y hace que la salida muestre cuatro lugares después del decimal
'''

num = 0.02893574
print ("{:.4f}".format(num))    # da 0.0289

'''
a partir de Python 3.6, también podemos usar f'{}' para obtener el mismo resultado
'''

num = 0.02893574
print (f'{num:.4f}')            # da 0.0289

# ajuste de precisión de flotantes con %.nf
print('----------- ajuste de precisión de flotantes con %.nf -----------')
'''py
También podemos establecer un ancho fijo para un número flotante con el uso del operador %v

El uso de %num permite imprimir el valor deseado sin ninguna función o formato de cadena
'''

num = 0.02893574
print ('%.4f'%num)              # da 0.0289

# ajuste de precisión de flotantes con round()
print('----------- ajuste de precisión de flotantes con round() -----------')
'''
También podemos usar la función round() para fijar el número de dígitos después del punto decimal. Esta función limita el número de dígitos después del punto decimal en el número de entrada. También redondea el dígito en el que el límite se establece en su valor integral superior si el dígito es mayor que el valor 5. El número de dígitos es opcional
'''

num = 2.37682
print(round(num,3))             # da 2.377

````

![Ejecución programa desde el shell](https://i.imgur.com/RIBc4QW.png)

El programa se adjunta en el repositorio como 10_float.py

## Operadores lógicos

| Operador | Descripción | Ejemplo |
| :------: | :---------- | :-----: |
| AND      | Devuelve True si ambas afirmaciones son verdaderas    | x < 5 and  x < 10 |
| OR       | Devuelve True si una de las afirmaciones es verdadera | x < 5 or x < 4	   |
| NOT      | Invierte el resultado, devuelve False si el resultado es verdadero | not(x < 5 and x < 10) |

**Notas**: 
1. OR es equivalente a la suma en el Álgebra de Boole  
    * $0+0=0$  
    * $0+1=1$  
    * $1+0=1$  
    * $1+1=1$  
2. AND es equivalente a la multiplicación en el Álgebra de Boole  
    * $0*0=0$  
    * $0*1=0$  
    * $1*0=0$  
    * $1*1=1$ 
3. NOT(OR)=NOR, OR seguida de NOT   
4. NOT(AND)=NAND, AND seguida de NOT
5. NOT(A OR  B) = NOT(A+B)  = NOT(A) * NOT(B) = NOT(A) AND NOT(B)
6. NOT(A AND B) = NOT(A\*B) = NOT(A) + NOT(B) = NOT(A) OR  NOT(B)

### **Tablas de verdad de los operadores lógicos**

| Afirmación 1 | Afirmación 2 | AND | NOT(AND) | OR  | NOT(OR) |
| :----------: | :----------: | :-: | :------: | :-: | :-----: |
| F            | F            | F   | V        | F   | V       |
| F            | V            | F   | V        | V   | F       |
| V            | F            | F   | V        | V   | F       |
| V            | V            | V   | F        | V   | F       |

Substituyendo V por 1 y F por 0, tenemos la siguiente tabla

| Af. 1 | Af. 2 | *NAND* | NOT1 | NOT2 | *NOT1 OR NOT2* |
| :---: | :---: | :----: | :--: | :--: | :------------: | 
| 0     | 0     | *1*    | 1    | 1    | *1*            |
| 0     | 1     | *1*    | 1    | 0    | *1*            |
| 1     | 0     | *1*    | 0    | 1    | *1*            |
| 1     | 1     | *0*    | 0    | 0    | *0*            |

Como se esperaba *NOT1 OR NOT2 = NAND*

y esta otra

Sustituyendo V por 1 y F por 0, tenemos la siguiente tabla

| Af. 1 | Af. 2 | *NOR* | NOT1 | NOT2 | *NOT1 AND NOT2* |
| :---: | :---: | :---: | :--: | :--: | :-------------: | 
| 0     | 0     | *1*   | 1    | 1    | *1*             |
| 0     | 1     | *0*   | 1    | 0    | *0*             |
| 1     | 0     | *0*   | 0    | 1    | *0*             |
| 1     | 1     | *0*   | 0    | 0    | *0*             |

Como se esperaba *NOT1 AND NOT2 = NOR*

````python

'''
Código:   undécimo ejemplo
Utilidad: manejo operadores lógicos

'''

# operador AND
print('-' * 10, 'AND', '-' * 10)
print('True and True =>', True and True)
print('True and False =>', True and False)
print('False and True =>', False and True)
print('False and False =>', False and False)

print(10 > 5 and 5 < 10)
print(10 > 5 and 5 > 10)

stock = input('Ingrese el numero de stock => ')
stock = int(stock)

print(stock >= 100 and stock <= 1000)

# operador OR
print('-' * 10, 'OR', '-' * 10)
print('True or True =>', True or True)
print('True or False =>', True or False)
print('False or True =>', False or True)
print('False or False =>', False or False)

role = input('Digita el rol => ')

print(role == 'admin' or role == 'seller')

# operador NOT
print('-' * 10, 'NOT', '-' * 10)
x = 5
print(not(x > 3 and x < 10)) # devuelve False porque not se usa para invertir el resultado

````

![Ejecución programa desde el shell](https://i.imgur.com/DehGXFh.png)

El programa se adjunta en el repositorio como 11_logic.py

