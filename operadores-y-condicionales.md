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

### **Tablas de verdad de los operadores lógicos**

| Afirmación 1 | Afirmación 2 | AND | OR   |
| :----------: | :----------: | :-: |  :-: |
| F            | F            | F   |  F   |
| F            | V            | F   |  V   |
| V            | F            | F   |  V   |
| V            | V            | V   |  V   |

Substituyendo V por 1 y F por 0, tenemos la siguiente tabla

| Af. 1 | Af. 2 | *AND*  | *OR* |
| :---: | :---: | :----: | :--: | 
| 0     | 0     | *0*    | *0*  |
| 0     | 1     | *0*    | *1*  | 
| 1     | 0     | *0*    | *1*  | 
| 1     | 1     | *1*    | *1*  |

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

````

![Ejecución programa desde el shell](https://i.imgur.com/8AwzBO1.png)

El programa se adjunta en el repositorio como 11_logic.py

## Operador NOT

## Operadores lógicos

| Operador | Descripción | Ejemplo |
| :------: | :---------- | :-----: |
| NOT      | Invierte el resultado, devuelve False si el resultado es verdadero | not(x < 5 and x < 10) |

**Notas**:
1. NOT(OR)=NOR, OR seguida de NOT   
2. NOT(AND)=NAND, AND seguida de NOT
3. NOT(A OR  B) = NOT(A+B)  = NOT(A) * NOT(B) = NOT(A) AND NOT(B)
4. NOT(A AND B) = NOT(A\*B) = NOT(A) + NOT(B) = NOT(A) OR  NOT(B)

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
Código:   duodécimo ejemplo
Utilidad: manejo operador not

'''
# operador NOT
print('-' * 10, 'NOT', '-' * 10)
print(not True)
print(not False)

# operador NOT AND = NAND
print('-' * 10, 'NAND', '-' * 10)
print('not True and True =>', not (True and True))
print('not True and False =>', not (True and False))
print('not False and True =>', not (False and True))
print('not False and False =>', not (False and False))

stock = input('Ingrese el numero de stock => ')
stock = int(stock)

print(not (stock >= 100 and stock <= 1000))

# operador NOT
print('-' * 10, 'NOT', '-' * 10)
x = 5
print(not(x > 3 and x < 10)) # devuelve False porque not se usa para invertir el resultado


# operador NOT OR = NOR
print('-' * 10, 'NOR', '-' * 10)
print('not True or True =>', not (True or True))
print('not True or False =>', not (True or False))
print('not False or True =>', not (False or True))
print('not False or False =>', not (False or False))

stock = input('Ingrese el numero de stock => ')
stock = int(stock)

print(not (stock >= 100 or stock > 1000))

````

![Ejecución programa desde el shell](https://i.imgur.com/UO73nQE.png)

El programa se adjunta en el repositorio como 12_not.py

## Condicionales

**Nota**: Un bloque de instrucciones debe tener el mismo identado

````python

'''
Código:   decimotercer ejemplo
Utilidad: manejo de condicional
'''

# if
print('-' * 10, 'if', '-' * 10)
if True:
  print('deberá ejecutarse')

if False:
  print('nunca se ejecuta')

# un ejemplo
print('-' * 10, 'un ejemplo', '-' * 10)
pet = input('¿Cuál es tu mascota favorita? ')
if pet == 'perro':
  print('genial tienes buen gusto')
elif pet == 'gato':
  print('espero tengas suerte')
elif pet == 'pez':
  print('eres lo maximo')
else:
  print('no tienes ninguna mascota interesante')

# otro ejemplo
print('-' * 10, 'otro ejemplo', '-' * 10)
stock = int(input('Introduce el stock => '))
if stock >= 100 and stock <= 1000:
  print('el stock es correcto')
else:
  print('el stock es incorrecto')

# validación pares-impares
print('-' * 10, 'validación pares-impares', '-' * 10)
number = int(input('Escriba un numero => '))
result = number % 2
if (result == 0):
  print('Es par')
else:
  print('Es impar')

# un bloque de instrucciones puede contener varias instrucciones. Todas las instrucciones del bloque deben tener el mismo sangrado:
print('-' * 10, 'bloque de instrucciones', '-' * 10)
edad = int(input("¿Cuántos años tiene? "))
if edad < 18:
    print("Es usted menor de edad")
    print("Recuerde que está en la edad de aprender!")
elif edad >=59:
    print("Es usted un viejo, carajo!")
    print("Recuerde que nunca debe parar de aprender!")
else:
    print("Es usted mayor de edad")
    print("Recuerde que debe seguir aprendiendo!")
print("See you later, aligator, dubidu, dubidu...")

# Índice de masa corporal 
print('-' * 10, 'IMC', '-' * 10)
mySerie = "10.000"
myName  = "JCN"
presentation = "Hola soy " + myName + "\nSoy un computador de la serie " + mySerie + "\nLe voy a indicar su IMC mediante un algoritmo.\nIntroduzca sus datos, según se los vaya pidiendo, por favor..."
print(presentation)
nombre = input("Introduzca su nombre, por favor ")
altura = float (input(nombre + ' introduzca su altura (en m), por favor '))
peso   = float (input(nombre + ' introduzca su peso (en Kg), por favor '))
 
imc = round(peso/altura**2)
 
print("Su IMC es de " + str(imc))

if imc<16:
  salida = nombre + ":\nPosiblemente usted padece algún trastorno grave.\nSe aconseja su ingreso inmediato en el hospital."
elif imc<17:
  salida =nombre + ":\nUsted tiene infrapeso, esto no es normal.,\nSe aconseja que se comunique inmediatamente con su médico."
elif imc<18:
  salida = nombre + ":\nUsted tiene un peso muy bajo, seguramente padece algún tipo de desnutrición.\nSe aconseja que se comunique inmediatamente con su médico y con su nutricionista."
elif imc<25:
  salida = nombre + ":\nUsted tiene un peso perfecto, seguramente cuida su nutrición y ejercicio físico.\nUsted tiene un IMC perfecto, enhorabuena."
elif imc<30:
  salida = nombre + ":\nUsted tiene sobrepeso (obesidad de grado I), seguramente debido a hábitos poco saludables de alimentación y falta de ejercio físico.\nSe aconseja que se comunique inmediatamente con su médico y con su nutricionista."
elif imc<35:
  salida = nombre + ":\nUsted tiene obesidad (obesidad de grado II), seguramente debido a hábitos poco saludables de alimentación y falta de ejercio físico, durante un tiempo prolongado.\nSe aconseja que se comunique inmediatamente con su médico y con su nutricionista."
elif imc<40:
  salida = nombre + ":\nUsted tiene obesidad mórbida (obesidad de grado III), su situación es de riesgo muy serio para su salud.\nSe aconseja que se comunique inmediatamente con su médico."
elif imc>=40:
  salida = nombre + "\nUsted tiene obesidad mórbida seria (obesidad de grado IV), padece algún trastorno grave.\nSe aconseja su ingreso inmediato en el hospital."
else:
  salida = nombre + " ha cometido algún error al introducir sus datos de altura o peso."

salida = salida + '\nGracias.'

print (salida)

````

![Ejecución programa desde el shell](https://i.imgur.com/foTjBo2.png)

El programa se adjunta en el repositorio como 13_if.py

## Proyecto: Condicionales

**Nota**: Para salir del while hacemos un break.

````python

'''
Código:   catorceavo ejemplo
Utilidad: main
'''

import random

# bucle while
print('-' * 10, 'bucle while', '-' * 10)
options = ('piedra', 'papel', 'tijera')

computer_wins = 0
user_wins = 0

rounds = 1

while True:

    print('*' * 10)
    print('ROUND', rounds)
    print('*' * 10)

    print('computer_wins', computer_wins)
    print('user_wins', user_wins)

    user_option = input('piedra, papel o tijera => ')
    user_option = user_option.lower()

    rounds += 1

    if not user_option in options:
      print('esa opcion no es valida')
      continue

    computer_option = random.choice(options)

    print('User option =>', user_option)
    print('Computer option =>', computer_option)

    if user_option == computer_option:
        print('Empate!')
    elif user_option == 'piedra':
        if computer_option == 'tijera':
            print('piedra gana a tijera')
            print('user gano!')
            user_wins += 1
        else:
            print('Papel gana a piedra')
            print('computer gano!')
            computer_wins += 1
    elif user_option == 'papel':
        if computer_option == 'piedra':
            print('papel gana a piedra')
            print('user gano')
            user_wins += 1
        else:
            print('tijera gana a papel')
            print('computer gano!')
            computer_wins += 1
    elif user_option == 'tijera':
        if computer_option == 'papel':
            print('tijera gana a papel')
            print('user gano!')
            user_wins += 1
        else:
            print('piedra gana a tijera')
            print('computer gano!')
            computer_wins += 1

    if computer_wins == 2:
      print('El ganador es la computadora')
      break

    if user_wins == 2:
      print('El ganador es el usuario')
      break

````

![Ejecución programa desde el shell](https://i.imgur.com/j0oC9dK.png)

El programa se adjunta en el repositorio como 14_main.py

### Playground: Identifica si un número es par o impar

![Resultado playground](https://i.imgur.com/3E3oKHN.png)