# Tipos de datos en Python

## Tipos de datos

* **Tipos primitivos**
    * **Numéricos**
        * **Integer(int)**: números Enteros (sin decimales)
        * **Float(float)**: números de punto flotante (decimales)
        * **Complex(complex)**: números complejos (parte real + parte imaginaria)
    * **Texto**
        * **String(str)**: cadenas de caracteres (texto). Comillas dobles y simples dan el mismo resultado
    * **Boolean(bool)**: boolenaos (Verdadero o Falso)
* **Tipos adicionales**
    * **Secuencia**: list, tuple, range
    * **Mapeo**: dict
    * **Set**: set, frozenset
    * **Binarios**: bytes, bytearray, memoryview
    * **None**: NoneType

Para obtener el tipo de datos de cualquier objeto, utilizamos la función type()

````python
x = 5
print(type(x))
````

En Python, el tipo de datos se establece cuando asigna un valor a una variable

| Ejemplo                                      | Tipo       |
| :------------------------------------------: | :--------: | 
| x = "Hello World"	                           | str        |
| x = 20                                       | int        | 
| x = 20.5                                     | float      | 
| x = 1j                                       | complex    | 
| x = ["apple", "banana", "cherry"]	           | list       | 
| x = ("apple", "banana", "cherry")	           | tuple	    | 
| x = range(6)                                 | range      | 
| x = {"name" : "John", "age" : 36}	           | dict       | 
| x = {"apple", "banana", "cherry"}	           | set        | 
| x = frozenset({"apple", "banana", "cherry"}) | frozenset  | 
| x = True                                     | bool       | 
| x = b"Hello"                                 | bytes      | 
| x = bytearray(5)                             | bytearray  | 
| x = memoryview(bytes(5))                     | memoryview | 
| x = None	                                   | NoneType   |

También podemos especificar el tipo de datos, utilizando las siguientes funciones de construcción

| Ejemplo                                      | Tipo       |
| :------------------------------------------: | :--------: |
| x = str("Hello World")                       | str        |
| x = int(20)                                  | int        | 	
| x = float(20.5)                              | float      | 
| x = complex(1j)                              | complex    | 
| x = list(("apple", "banana", "cherry"))	   | list       | 
| x = tuple(("apple", "banana", "cherry"))	   | tuple	    |
| x = range(6)                                 | range      | 	
| x = dict(name="John", age=36)	               | dict       | 	
| x = set(("apple", "banana", "cherry"))	   | set        | 	
| x = frozenset(("apple", "banana", "cherry")) | frozenset  |
| x = bool(5)                                  | bool       |
| x = bytes(5)                                 | bytes      |
| x = bytearray(5)                             | bytearray  | 	
| x = memoryview(bytes(5))                     | memoryview |

**Nota**: la función input() diempre retorna str, pero se podría convertir a otro tipo, si interesase

````python

'''
Código:   tercer ejemplo
Utilidad: manejo de tipos
'''

# string
my_name = "Nicolás"
my_name = 'Santiago'
print('my_name =>', my_name)
print(type(my_name))

# int
my_age = 12
print('my_age =>', my_age)
print(type(my_age))

# boolean
is_single = False
print('is_single =>', is_single)
print(type(is_single))

# inputs
my_age1 = input('¿Cuál es tu edad? ')
print('my_age1 =>', my_age1)
print(type(my_age1))

# inputs con tipo cambiado
my_age2 = int(input('¿Cuál es tu edad? '))
print('my_age =>', my_age2)
print(type(my_age2))

````

![Ejecución programa desde el shell](https://i.imgur.com/SoREEYT.png)

El programa se adjunta en el repositorio como 03_types.py

## Strings

Podemos asignar una cadena de varias líneas a una variable usando tres comillas (simples o dobles)

````python

a = """Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua."""
print(a)

````

Podemos obtener un rango de caracteres utilizando la sintaxis de slice.

Especificamos el índice inicial y el índice final, separados por dos puntos, para devolver una parte de la cadena deseada. Comienza a contar por 0.

En el ejemplo obtenemos los caracteres de la posición 2 (incluida) a la posición 5 (no incluida) de la cadena "Hello, World!"

|00|01|02|03|04|05|06|07|08|09|10|11|12|
|--|--|--|--|--|--|--|--|--|--|--|--|--|
|H |e |l |l |o |, |  |W |o |r |l |d |! |

````python 

b = "Hello, World!"
print(b[2:5])

````

Retorna: "llo"

También podemos empezar a contar por la posición inicial, omitiendo ésta

````python 

b = "Hello, World!"
print(b[:5])

````

Retorna: "Hello"

O contar hasta la posición final

````python 

b = "Hello, World!"
print(b[2:])

````

Retorna: "llo, World!"

Además, con números negativos, podemos contar hacia atrás

````python 

b = "Hello, World!"
print(b[-5:-2])

````

Retorna: "orl"

La función upper() retorna la cadena en mayúsculas

````python 

a = "Hello, World!"
print(a.upper())

````

Retorna: "HELLO, WORLD!"

La función lower() retorna la cadena en minúsculas

````python 

a = "Hello, World!"
print(a.lower())

````

Retorna: "hello, world!"

La función strip() elimina blancos del principio o del final

````python 

a = " Hello, World! "
print(a.strip()) # returns "Hello, World!"

````

Retorna: "Hello, World!"

la función replace() reemplaza una subcadena por otra

````python 

a = "Hello, World!"
print(a.replace("H", "J"))

````

Retorna: "Jello, World!"

La función split() divide una cadena, a partir de un carácter separador

````python 

a = "Hello, World!"
print(a.split(",")) 

````

Retorna: ['Hello', ' World!']

Para concatenar dos cadenas utilizamos el operador "+"

````python

a = "Hello"
b = "World"
c = a + " " + b
print(c)

````

Retorna: "Hello World"

El método format() retorna una cadena concatenado subcadenas, en un formato (plantilla) que definimos

````python

age = 36
txt = "My name is John, and I am {}"
print(txt.format(age))

````

Retorna: "My name is John, and I am 36"

````python

quantity = 3
itemno = 567
price = 49.95
myorder = "I want {} pieces of item {} for {} dollars."
print(myorder.format(quantity, itemno, price))

````

Retorna: "I want 3 pieces of item 567 for 49.95 dollars."

También podemos indexar los ítems, para asegurarnos que se colocan adecuadamente

````python

quantity = 3
itemno = 567
price = 49.95
myorder = "I want to pay {2} dollars for {0} pieces of item {1}."
print(myorder.format(quantity, itemno, price))

````

Retorna: "I want to pay 49.95 dollars for 3 pieces of item 567."

### Secuencias de escape

Para insertar carácteres, que normalmente no podríamos, en una cadena, utilizamos secuencias de escape

````python

txt = "We are the so-called \"Vikings\" from the north."
print(txt)

````

Retorna: We are the so-called "Vikings" from the north.

| Código | Resultado            |
| :----: | :------------------: |
| \'	 | comillas simples     |
| \"	 | comillas dobles      |
| \\	 | backslash (\)        |
| \n	 | salto de línea       |	
| \r	 | retorno de carro     |
| \t	 | tabulador            |
| \b	 | retroceso (borrando) |
| \f	 | salto de página      |	
| \ooo	 | valor octal          |	
| \xhh	 | valor hexadecimal    |

### Métodos de strings

| Método       | Descripción                                |
| :----------- | :----------------------------------------- |
| capitalize() | Convierte el primer carácter a mayúsculas  |
| casefold()   | Convierte cadena en minúsculas             |
| center()	   | Devuelve una cadena centrada               |
| count()      | Devuelve el número de veces que aparece un valor  especificado en una cadena |
| encode()     | Devuelve una versión codificada de la cadena |
| endswith()   | Devuelve verdadero si la cadena termina con el valor especificado |
| expandtabs() | Establece el tamaño de tabulación de la cadena |
| find()       | Busca en la cadena un valor específico y devuelve la posición donde se encontró |
| format()     | Formatea los valores especificados en una cadena |
| format_map() | Formatea los valores especificados en una cadena |
| index()      | Busca en la cadena un valor específico y devuelve la posición donde se encontró |
| isalnum()    | Devuelve True si todos los caracteres de la cadena son alfanuméricos |
| isalpha()    | Devuelve True si todos los caracteres de la cadena están en el alfabeto |
| isdecimal()  | Devuelve True si todos los caracteres de la cadena son decimales |
| isdigit()    | Devuelve True si todos los caracteres de la cadena son dígitos |
| isidentifier() | Devuelve True si la cadena es un identificador |
| islower()      | Devuelve True si todos los caracteres de la cadena están en minúsculas |
| isnumeric()    | Devuelve True si todos los caracteres de la cadena son numéricos |
| isprintable()  | Devuelve True si todos los caracteres de la cadena son imprimibles |
| isspace()      | Devuelve True si todos los caracteres de la cadena son espacios en blanco |
| istitle()      | Devuelve True si la cadena sigue las reglas de un título |
| isupper()      | Devuelve True si todos los caracteres de la cadena están en mayúsculas |
| join()         | Une los elementos de un iterable al final de la cadena |
| ljust()        | Devuelve una versión justificada a la izquierda de la cadena |
| lower()        | Convierte una cadena en minúsculas |
| lstrip()       | Devuelve una versión recortada a la izquierda de la cadena |
| maketrans()    | Devuelve una tabla de traducción para ser utilizada en las traducciones |
| partition()    | Devuelve una tupla donde la cadena se divide en tres partes |
| replace()      | Devuelve una cadena donde un valor especificado se reemplaza con un valor especificado |
| rfind()        | Busca en la cadena un valor específico y devuelve la última posición donde se encontró |
| rindex()       | Busca en la cadena un valor específico y devuelve la última posición donde se encontró |
| rjust()        | Devuelve una versión justificada a la derecha de la cadena |
| rpartition()   | Devuelve una tupla donde la cadena se divide en tres partes|
| rsplit()       | Divide la cadena en el separador especificado y devuelve una lista |
| rstrip()       | Devuelve una versión recortada a la derecha de la cadena |
| split()        | Divide la cadena en el separador especificado y devuelve una lista |
| splitlines()   | Divide la cadena en los saltos de línea y devuelve una lista |
| startswith()   | Devuelve verdadero si la cadena comienza con el valor especificado |
| strip()        | Devuelve una versión recortada de la cadena |
| swapcase()     | Intercambia mayúsculas y minúsculas y viceversa |
| title()        | Convierte el primer carácter de cada palabra a mayúsculas |
| translate()    | Devuelve una cadena traducida |
| upper()        | Convierte una cadena en mayúsculas |
| zfill()        | Rellena la cadena con un número específico de valores 0 al principio |

````python

'''
Código:   cuarto ejemplo
Utilidad: manejo de strings
'''

# ejemplo de manejo de strings multilínea
print('----------- multilínea -----------')
x = """Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua."""
print(x)

# ejemplo de manejo de subcadenas
print('----------- subcadenas -----------')
x = "Hello, World!"
print(x[2:5])
print(x[:5])
print(x[2:])
print(x[-5:-2])

# ejemplo de manejo de mayúsculas
print('----------- mayúsculas -----------')
print(x.upper())

# ejemplo de manejo de minúsculas
print('----------- minúsculas -----------')
print(x.lower())

# ejemplo de eliminación espacios en blanco del principio o del final
print('----------- eliminar espacios en blanco -----------')
y = " Hello, World! "
print(y.strip()) 

# ejemplo de reemplazar carácteres
print('----------- reemplazar carácteres -----------')
print(x.replace("H", "J"))

# ejemplo de dividir subcadenas
print('----------- dividir subcadenas -----------')
print(x.split(","))

# ejemplo de insertar carácteres especiales
print('----------- carácteres especiales -----------')
z = "We are the so-called \"Vikings\" from the north."
print(z)

z = "I'm Nicolas"
print(z)

z = ' She said "Hello"  '
print(z)

# ejemplo de concatenación subcadenas (con capitalize)
print('----------- concatenar subcadenas (con capitalize) -----------')
name = "nicolas"
name = name.capitalize()
last_name = 'Molina Monroy'
age = 36
quantity = 5
price = 7.56
product = "patatas"
print(name)
print(last_name)

full_name = name + " " + last_name
print(full_name)

# ejemplo de formatos de plantilla

# v1 => concatenación, pero es necesario convertir entero a string
print('----------- formatos de plantilla -----------')
p = "Hola, mi nombre es " + name + " y mis apellidos son " + last_name + ". Mi edad es de " + str(age) + " años"
print('v1 sin {}', p)

# v2 => substitución de los campos con nombre
# v2.1 => sencillo
p = "Hola, mi nombre es {} y mis apellidos son {}. Mi edad es de {} años".format(name, last_name, age)
print('v2.1 con {}', p)
# v2.2 => límpio
p = "Hola, mi nombre es {} y mis apellidos son {}. Mi edad es de {} años"
print('v2.2 con {}', p.format(name, last_name, age))
# v2.3 => otro
p = "Hola, soy {}. Veo que las {} van a {} €. ¿Puede ponerme {} Kg, por favor?"
print('v2.3 con {}', p.format(name, product, price, quantity))

# v3 => substitución de los campos con nombre en la cadena
# v3.1 => sencillo
p = f"Hola, mi nombre es {name} y mi apellido es {last_name}"
print('v3.1 con {field}', p)
# v3.2 => límpio
p = f"Hola, mi nombre es {name} y mis apellidos son {last_name}. Mi edad es de {age} años"
print('v3.2 con {field}', p)
# v3.3 => otro
p = f"Hola, soy {name}. Veo que las {product} van a {price} €. ¿Puede ponerme {quantity} Kg, por favor?"
print('v3.3 con {field}', p)

# v4 => substitución de los campos por índice en la cadena
p = "Hola, soy {0}. Veo que las {1} van a {2} €. ¿Puede ponerme {3} Kg, por favor?"
print('v4 con {index}', p.format(name, product, price, quantity))

````

![Ejecución programa en la consola](https://i.imgur.com/5wgSMXd.png)

El programa se adjunta en el repositorio como 04_string.py

## Numbers

````python

'''
Código:   quinto ejemplo
Utilidad: manejo de números
'''

# declaraciones
lives = 3
age = 12
budget = 100
temperature = 12.12
budgetJan = 100
budgetFeb = 101
budgetMar = 102
budgetApr = 103
budgetMay = 104
budgetJun = 105
budgetJul = 106
budgetAug = 107
budgetSet = 108
budgetOct = 109
budgetNov = 110
budgetDec = 111

# tipo entero
print('----------- tipos de datos -----------')
print(type(lives))
print(type(temperature))

# cambio de valores
print('----------- cambio de valores -----------')
lives = 2
print(lives)
lives = 1
print(lives)

# operaciones aritméticas
print('----------- operaciones aritméticas -----------')
lives = 12 + 15
print(lives)
lives = lives - 1
print(lives)
lives -= 1
print(lives)
lives -= 5
print(lives)
lives += 5
print(lives)

# notación científica
print('----------- notación científica -----------')
number = 4500000000000000000.1
print(number)
number_b = 0.0000000000000001
print(number_b)

# cálculo del budget promedio anual
print('----------- budget promedio anual -----------')
promedio = (budgetJan+budgetFeb+budgetMar+budgetApr+budgetMay+budgetJun+budgetJul+budgetAug+budgetSet+budgetOct+budgetNov+budgetDec)/12
print(promedio)

# cálculo del teorema de Pitágoras (importamos biblioteca para raíz cuadrada)
print('----------- cálculo del teorema de Pitágoras (importamos biblioteca para raíz cuadrada) -----------')
from math import sqrt
c1 = 5
c2 = 3
hy = sqrt(c1**2 + c2**2)
print(hy)
hy = (c1**2 + c2**2)**0.5
print(hy)

# cálculo de la energía de una masa en gramos (E=mc2)
print('----------- cálculo de la energía de una masa en gramos (E=mc2) -----------')
masa = float(input("Introduzca su gato en la consola energética y ponga su peso (en Kg), por favor: "))
Kg   = masa / 1000
c = 3 * 10 ** 8 
E = Kg * c ** 2 
TE = E / 10**12
print("Qué le pasa???, ese era su gato!!! :-(,\nlo ha convertido en ",TE,"TJ (Tera Julios),\ngo to Hell!!!\nVoy a intentar arreglar este bullshit...\nMire la consola...\nWhat a fuck!!!")
gato = input("¿Cómo se llama su GATO? ") 
E = TE * 10**12
Kg = E / c ** 2 * 1000
print("He recuperado a", gato, "que pesa", Kg, "Kg\nPero no lo veuelva a hacer!!!,\nLEA, PONE: NO TOCAR!!!\nThat\'s a joke!!!\nNOTICE: En la realización de este programa no se ha maltratado ningún gato.")

````

![Ejecución programa en la consola](https://i.imgur.com/b5wyYps.png)

El programa se adjunta en el repositorio como 05_numbers.py

## Booleanos

````python

'''
Código:   sexto ejemplo
Utilidad: manejo de booleanos
'''

is_single = True
print(type(is_single))
is_single = False
print(is_single)

print(not True)
print(not False)

is_single = not is_single
print(is_single)

````

![Ejecución programa en la consola](https://i.imgur.com/rkiWesy.png)

El programa se adjunta en el repositorio como 06_booleans.py

## Transformación de tipos

Python siempre determina el tipo automáticamente, al declararse el dato

````python

# f es int, g es string
f = 5
g = "hola"

````

Las funciones, en Python, aceptan un determinado tipo de datos. Por ejemplo, print() solo acepta el tipo string, por lo tanto, si queremos mostrar un dato numérico con print(), deberemos convertirlo, primero, a string (casting)

````python

# casting de int y de float a string
j = 6
k = 4.456734
print("Definimos 2 numeros,")
print("j = " + str(j))
print("k = " + str(k))

````

Si tenemos un string que queremos almacenar como numérico, también haremos un casting

````python

# casting de string a float
c = "15.21"
v = "16.672354"
b = float(c) + float(v)
print(b)

````

### Funciones de conversión entre tipos de datos

| Función | Descripción                 |
| :------ | :-------------------------- |
| int()   | Convierte a int             |
| long()  | Convierte a long            |
| float() | Convierte a float           |
| str()   | Convierte a string. El argumento puede ser float, int o long |
| hex()   | Convierte int a hexadecimal |
| ord()   | Convierte el string que representa un carácter Unicode a un int que representa el código Unicode del carácter (a partir de la v3) |
| chr()   | Convierte un int que representa el código Unicode en una cadena que representa un carácter correspondiente (a partir de la v3)    |

````python

'''
Código:   sexto ejemplo
Utilidad: conversión de tipos
'''

# f es int, g es string
f = 5
g = "hola"

# casting de int y de float a string
print('----------- casting de int y float a strings, para hacer print() -----------')
j = 6
k = 4.456734
print("j = ", str(j),"\nk = ", str(k))

# casting de string a float
print('----------- casting de string a float, para almacenar valores -----------')
c = "15.21"
v = "16.672354"
b = float(c) + float(v)
print(b)

# devuelve  0x10
print('----------- 16 en hex es 0x10 -----------')
print(hex(16))   

# devuelve -0x12a
print('----------- -298 en hex es -0x12a -----------')
print(hex(-298))

# devuelve  0x21f
print('----------- 543 en hex es 0x21f -----------')
print(hex(543))   

# cambios de tipos
print('----------- cambios de tipos -----------')
name = 'Nicolas'
print(type(name))
name = 12
print(type(name))
name = True 
print(type(name))

# print() con datos del mismo o diferente tipo int + string peta, por ejmplo
print('----------- el operador + sabe operar datos del mismo tipo -----------')
print('Nicolas' + ' Molina')
print(10+20)
print('Nicolas' + '12')

# la sustitución en una cadena (plantilla), convierte a string todo y no hay problema
print('----------- sustitución en cadena -----------')
age = 12
print('Mi edad es ' + str(age))
print(type(age))
print(f'Mi edad es {age}')

# cast de un input, que siempre devuelve string
print('----------- cast de un input -----------')
age = input('Escribe tu edad => ')
print(type(age))
age = int(age)     # No podemos hacer el cast, si el valor de age es string, p.e. "Nicolas"
age += 10
print(f'Tu edad en 10 años será {age}')

````

![Ejecución programa en la consola](https://i.imgur.com/hS7NLM6.png)

El programa se adjunta en el repositorio como 07_transformation.py

### Playground: Imprime el formato adecuado

![Resultado playground](https://i.imgur.com/pAUWTAF.png)
