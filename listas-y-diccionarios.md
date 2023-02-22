# Listas y diccionarios

## String recargado

***Ver Métodos de strings en => Tipos de datos en Python***

````python

'''
Código:   decimocuarto ejemplo
Utilidad: métodos de strings
'''

text = 'Ella sabe programar en Python'

# método in
print('-' * 10, 'método in', '-' * 10)

print('JavaScript' in text)
print('Python' in text)

if 'JS' in text:
  print('Has elegido bien!!')
else:
  print('También has elegido bien')

# método len
print('-' * 10, 'método len', '-' * 10)
size = len(text)
print(size)

# método upper
print('-' * 10, 'método upper', '-' * 10)
print(text.upper())

# método lower
print('-' * 10, 'método lower', '-' * 10)
print(text.lower())

# método count
print('-' * 10, 'método count', '-' * 10)
print(text.count('a'))

# método swapcase
print('-' * 10, 'método swapcase', '-' * 10)
print(text.swapcase())

# método startswith
print('-' * 10, 'método startswith', '-' * 10)
print(text.startswith('Ella'))

# método endswith
print('-' * 10, 'método endswith', '-' * 10)
print(text.endswith('Rust'))

# método replace
print('-' * 10, 'método replace Python por Go', '-' * 10)
print(text.replace('Python', 'Go'))

text_2 = 'este es un titulo'
print(text_2)

# método capitalize
print('-' * 10, 'método capitalize', '-' * 10)
print(text_2.capitalize())

# método title
print('-' * 10, 'método title', '-' * 10)
print(text_2.title())

# método isdigit
print('-' * 10, 'método isdigit', '-' * 10)
print(text_2.isdigit())
print("398".isdigit())

````

![Ejecución programa desde el shell](https://i.imgur.com/YZU7Ibs.png)

El programa se adjunta en el repositorio como 14_string.py

## Indexing y slicing

***Ver Métodos slicing e indexing de strings en => Tipos de datos en Python***

````Python

'''
Código:   decimoquinto ejemplo
Utilidad: indexing y slicing de strings
          (revisar 04_string.py)
'''

text = "Ella sabe Python"

# indexing string
print('-' * 10, 'indexing string', '-' * 10)
print(text[0])
print(text[1])

# print(text[999]) # daría error

# indexing última posición string
print('-' * 10, 'indexing última posición string', '-' * 10)
size = len(text)
print('size => ',size)
print(text[size - 1])
print(text[-1])

# slicing substring desde el principio
print('-' * 10, 'slicing string desde el principio', '-' * 10)
print(text[0:5])

# slicing substring palabra
print('-' * 10, 'slicing string desde el principio', '-' * 10)
print(text[10:16])

# slicing substring comienzo
print('-' * 10, 'slicing string comienzo', '-' * 10)
print(text[:10])

# slicing substring desde una posición hacia atrás (no incluye úlimo)
print('-' * 10, 'slicing string desde una posición hacia atrás (no incluye úlimo)', '-' * 10)
print(text[5:-1])

# slicing substring desde final
print('-' * 10, 'slicing string desde final', '-' * 10)
print(text[5:])

# slicing toda la cadena
print('-' * 10, 'slicing toda la cadena', '-' * 10)
print(text[:])

# slicing subcadena con salto de un carácter
print('-' * 10, 'slicing subcadena con salto de un carácter', '-' * 10)
print(text[10:16:1])

# slicing subcadena con salto de dos carácteres
print('-' * 10, 'slicing subcadena con salto de dos carácteres', '-' * 10)
print(text[10:16:2])

# slicing toda la cadena con salto de dos carácteres
print('-' * 10, 'slicing toda la cadena con salto de dos carácteres', '-' * 10)
print(text[::2])

````

![Ejecución programa desde el shell](https://i.imgur.com/Cvx8P2w.png)

El programa se adjunta en el repositorio como 15_indexing.py

## Listas en Python

### **Lista**

Las listas se utilizan para almacenar varios elementos en una sola variable.

Las listas son uno de los 4 tipos de datos incorporados en Python que se utilizan para almacenar colecciones de datos, los otros 3 son Tuple, Set y Dictionary, todos con diferentes calidades y usos.

Las listas se crean usando corchetes:

````Python

thislist = ["apple", "banana", "cherry"]
print(thislist)   # da ['apple', 'banana', 'cherry']

````

### **Elementos de la lista**

Los elementos de la lista están ordenados, se pueden cambiar y permiten valores duplicados.

Los elementos de la lista están indexados, el primer elemento tiene índice [0], el segundo elemento tiene índice [1], etc.

### **Ordenado**

Cuando decimos que las listas están ordenadas, significa que los elementos tienen un orden definido y ese orden no cambiará.

Si agrega nuevos elementos a una lista, los nuevos elementos se colocarán al final de la lista.

**Nota**: Hay algunos métodos de lista que cambiarán el orden, pero en general: el orden de los elementos no cambiará.

### **Modificable**

La lista se puede cambiar, lo que significa que podemos cambiar, agregar y eliminar elementos en una lista después de que se haya creado.

### **Permitir duplicados**

Dado que las listas están indexadas, las listas pueden tener elementos con el mismo valor:

````Python

thislist = ["apple", "banana", "cherry", "apple", "cherry"]
print(thislist)     # da ['apple', 'banana', 'cherry', 'apple', 'cherry']

````

### **Longitud de la lista**

Para determinar cuántos elementos tiene una lista, usamos la función len():

````Python

thislist = ["apple", "banana", "cherry"]
print(len(thislist))  # da 3

````

### **Ítems de lista - Tipos de datos**

Los elementos de la lista pueden ser de cualquier tipo de datos:

````Python

list1 = ["apple", "banana", "cherry"]
list2 = [1, 5, 7, 9, 3]
list3 = [True, False, False]

print(list1)    # da ['apple', 'banana', 'cherry']
print(list2)    # da [1, 5, 7, 9, 3]
print(list3)    # da [True, False, False]

````

Una lista puede contener diferentes tipos de datos:

````Python

list1 = ["abc", 34, True, 40, "male"]

````

### **type()**

Desde la perspectiva de Python, las listas se definen como objetos con el tipo de datos 'lista':

````Python

mylist = ["apple", "banana", "cherry"]
print(type(mylist))     # da <class 'list'>

````

### **El constructor list()**

También es posible usar el constructor list() al crear una nueva lista.

````Python

thislist = list(("apple", "banana", "cherry")) # tener en cuenta los corchetes dobles
print(thislist)   # da ['apple', 'banana', 'cherry']
​
````

### **Colecciones de Python (arrays)**

Hay cuatro tipos de datos de colección en Python:

1. List es una colección ordenada y modificable. Permite miembros duplicados.
2. Tuple es una colección ordenada e inmutable. Permite miembros duplicados.
3. Set es una colección desordenada, inmutable* y no indexada. No hay miembros duplicados.
4. Disctionary es una colección ordenada** y modificable. No hay miembros duplicados.

*Los elementos establecidos no se pueden cambiar, pero se pueden eliminar y/o agregar elementos cuando se desee.

**A partir de la versión 3.7 de Python, se ordenan los diccionarios. En Python 3.6 y versiones anteriores, los diccionarios están desordenados.

Al elegir un tipo de Collection, es útil comprender las propiedades de ese tipo. Elegir el tipo correcto para un conjunto de datos en particular podría significar la retención del significado y podría significar un aumento en la eficiencia o la seguridad.

````Python

'''
Código:   decimosexto ejemplo
Utilidad: listas

'''

# lista numérica
print('-' * 10, 'lista numérica', '-' * 10)
numbers = [1, 2, 3, 4]
print(numbers)
print(type(numbers))
print(numbers[0])
print(numbers[:3])

# lista alfanumérica
print('-' * 10, 'lista alfanumérica', '-' * 10)
tasks = ['make a dishes', 'play videogames']
print(tasks)
print(tasks[0])
tasks[0] = 'watch platzi courses'
print(tasks)

tasks[0] = 'do the dishes'
print(tasks)

# lista de diferente tipo
print('-' * 10, 'lista de diferente tipo', '-' * 10)
types = [1, True, 'hola']
print(types)
print(True in types)
print('hola' in types)

# daría error
text = 'Hola'
# text[0] = 'W'

# listas 
print('-' * 10, 'lista', '-' * 10)
thislist = ["apple", "banana", "cherry"]
print(thislist)   # da ['apple', 'banana', 'cherry']

thislist = ["apple", "banana", "cherry", "apple", "cherry"]
print(thislist)     # da ['apple', 'banana', 'cherry', 'apple', 'cherry']

thislist = ["apple", "banana", "cherry"]
print(len(thislist))  # da 3

list1 = ["apple", "banana", "cherry"]
list2 = [1, 5, 7, 9, 3]
list3 = [True, False, False]

print(list1)    # da ['apple', 'banana', 'cherry']
print(list2)    # da [1, 5, 7, 9, 3]
print(list3)    # da [True, False, False]

list1 = ["abc", 34, True, 40, "male"]

mylist = ["apple", "banana", "cherry"]
print(type(mylist))     # da <class 'list'>

````

![Ejecución programa desde el shell](https://i.imgur.com/Tgivm09.png)

El programa se adjunta en el repositorio como 16_lists.py

## Métodos de listas

````python

'''
Código:   decimoséptimo ejemplo
Utilidad: métodos de listas
          CRUD = Create, Read, Update & Delete

'''

print('-' * 10, 'crear, añadir, modificar', '-' * 10)
numbers = [1, 2 , 3 , 4 , 5]
print(numbers[1])                # mostrar primer elemento
numbers[-1] = 10                 # modificar último elemento
print(numbers)
numbers.append(700)              # añadimos un elemnto
print(numbers)
numbers.insert(0, 'hola')        # insertamos un string
print(numbers)
numbers.insert(3, 'change')      # insertamos otro string
print(numbers)

print('-' * 10, 'unir de dos listas, eliminar, jugar con orden ítems', '-' * 10)
tasks = ['todo 1', 'todo 2', 'todo 3']
new_list = numbers + tasks        # unimos dos listas
print(new_list)
index = new_list.index('todo 2')  # obtenemos el índice de 1 ítem
new_list[index] = 'todo changed'  # modificamos el ítem     
print(new_list)
new_list.remove('todo 1')         # eliminamos un ítem
print(new_list)
new_list.pop()                    # eliminamos último ítem
print(new_list)
new_list.pop(0)                   # eliminamos primer ítem
print(new_list)
new_list.reverse()                # invertimos el orden de los ítems
print(new_list)

print('-' * 10, 'ordenar listas', '-' * 10)
numbers_a = [1, 4, 6, 3]          # sort lista numérica
numbers_a.sort()
print(numbers_a)
strings = ['re', 'ab', 'ed']      # sort lista alfabética
strings.sort()
print(strings)
# new_list.sort()                   # no puede ordenar lista alfanumérica

````

![Ejecución programa desde el shell](https://i.imgur.com/gDdTJBr.png)

El programa se adjunta en el repositorio como 17_crud.py

### Playground: Agrega, modifica y elimina elementos de una lista

![Resultado playground](https://i.imgur.com/9NwdJxL.png)

## Tuplas

### **Tupla##

Las tuplas se utilizan para almacenar varios elementos en una sola variable.

son uno de los 4 tipos de datos integrados en Python que se utilizan para almacenar colecciones de datos, los otros 3 son: Lista, Set y Diccionario, todos con diferentes calidades y usos.

Es una colección ordenada e inmutable y se escriben con corchetes.

````python

thistuple = ("apple", "banana", "cherry")
print(thistuple)

````

### **Elementos de tupla**

Los elementos de tupla están ordenados, no se pueden modificar y permiten valores duplicados. Éstos están indexados, el primer elemento tiene índice [0], el segundo elemento tiene índice [1], etc.

### **Ordenado**

Cuando decimos que las tuplas están ordenadas, significa que los elementos tienen un orden definido y ese orden no cambiará.

### **Inmutable**

Las tuplas no se pueden cambiar, lo que significa que no podemos modificarlas ni agregar o eliminar elementos después de que se hayan creado.

### **Permite duplicados**

Dado que las tuplas están indexadas, pueden tener elementos con el mismo valor.

````python

thistuple = ("apple", "banana", "cherry", "apple", "cherry")
print(thistuple)

````

### **Longitud de la tupla**

Para determinar cuántos elementos tiene una tupla, usamos la función len().

````python

thistuple = ("apple", "banana", "cherry")
print(len(thistuple))

````

### **Crear tupla con un elemento**

Para crear una tupla con un solo elemento, debemos agregar una coma después del elemento, de lo contrario, Python no lo reconocerá como una tupla.

````python

thistuple = ("apple",)
print(type(thistuple))

# no es una Tupla
thistuple = ("apple")
print(type(thistuple))

````

### **Elementos de tupla: tipos de datos**

Los elementos de tupla pueden ser de cualquier tipo de datos.

````python

tuple1 = ("apple", "banana", "cherry")
tuple2 = (1, 5, 7, 9, 3)
tuple3 = (True, False, False)

````

Una tupla puede contener diferentes tipos de datos.

````python

tuple1 = ("abc", 34, True, 40, "male")

````

### **Type()**

Desde la perspectiva de Python, las tuplas se definen como objetos con el tipo de datos 'tupla'.

````python

mytuple = ("apple", "banana", "cherry")
print(type(mytuple))    # retorna <class 'tuple'>

````

### **Constructor tupla()**

También es posible usar el constructor tuple() para hacer una tupla.

````python

thistuple = tuple(("apple", "banana", "cherry")) # tener en cuenta los paréntesis dobles
print(thistuple)

````

### **Colecciones de Python (arrays)**

Hay cuatro tipos de datos de recolecciones en el Python:

* **Lista** es una colección ordenada y modificable. Permite miembros duplicados.
* **Tupla** es una colección ordenada e inmutable. Permite miembros duplicados.
* **Set** es una colección desordenada, inmutable* y no indexada. No hay miembros duplicados.
* **Dictionary** es una colección ordenada** y modificable. No hay miembros duplicados.

*Los elementos establecidos no se pueden cambiar, pero se pueden eliminar y/o agregar elementos cuando se desee.

**A partir de la versión 3.7 de Python, se ordenan los diccionarios. En Python 3.6 y versiones anteriores, los diccionarios están desordenados.

Al elegir un tipo de colección, es útil comprender las propiedades de ese tipo. Elegir el tipo correcto para un conjunto de datos en particular podría significar la retención del significado y un aumento de la eficiencia o la seguridad.

````python

'''
Código:   decimoséptimo ejemplo
Utilidad: tuplas

'''

print('-' * 10, 'tuplas', '-' * 10)
numbers = (1, 2, 3, 5)
strings = ('nico', 'zule', 'santi', 'nico')
print(numbers)
print('0 =>', numbers[0])
print('-1 =>', numbers[-1])
print(type(numbers))

print('-' * 10, 'tipo tupla', '-' * 10)
print(strings)
print(type(strings))

# No es posible hacer CRUD sobre una tupla
# numbers.append(10)
print(numbers)
# numbers[1] = 'change'

print(strings)
print(strings.index('zule'))
print(strings.count('nico'))

print('-' * 10, 'convertimos tupla a lista para modificar la tupla', '-' * 10)
my_list = list(strings)
print(my_list)
print(type(my_list))

print('-' * 10, 'modificamos la lista', '-' * 10)
my_list[1] = 'juli'
print(my_list)

print('-' * 10, 'convertimos lista a tupla', '-' * 10)
my_tuple = tuple(my_list)
print(my_tuple)

````

![Ejecución programa desde el shell](https://i.imgur.com/YuzcMWR.png)

El programa se adjunta en el repositorio como 18_tuples.py

## Proyecto: tuplas

````python

'''
Código:   proyecto
Utilidad: tuplas

'''

import random

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

![Ejecución programa desde la consola](https://i.imgur.com/7NX59H3.png)

El programa se adjunta en el repositorio como main_1.py

## Diccionarios: definición y lectura

### **Diccionario**

Los diccionarios se utilizan para almacenar valores de datos en pares clave:valor.

Un diccionario es una colección ordenada*, modificable y que no admite duplicados.

A partir de la versión 3.7 de Python, se ordenan los diccionarios. En Python 3.6 y versiones anteriores, los diccionarios están desordenados.

se escriben entre corchetes y tienen claves y valores:

````python

thisdict = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
print(thisdict)

````

### **Elementos del diccionario**

Los elementos del diccionario están ordenados, se pueden modificar y no permiten duplicados.

Se presentan en pares clave:valor y se puede hacer referencia a ellos mediante el nombre de la clave.

````python

thisdict = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
print(thisdict["brand"])

````

### **¿Ordenado o Desordenado?**

A partir de la versión 3.7 de Python, se ordenan los diccionarios. En Python 3.6 y versiones anteriores, los diccionarios están desordenados.

Cuando decimos que los diccionarios están ordenados, significa que los elementos tienen un orden definido y ese orden no cambiará.

Desordenado significa que los elementos no tienen un orden definido, no puede hacer referencia a un elemento mediante el uso de un índice.

### **Cambiable**

Los diccionarios se pueden cambiar, lo que significa que podemos cambiar, agregar o eliminar elementos después de que se haya creado el diccionario.

### **No se permiten duplicados**

Los diccionarios no pueden tener dos elementos con la misma clave:

````python

thisdict = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964,
  "year": 2020
}
print(thisdict)

````

### **Longitud del diccionario**

Para determinar cuántos elementos tiene un diccionario, usamos la función len():

````python

print(len(thisdict))

````

### **Elementos del diccionario - Tipos de datos**

Los valores en los elementos del diccionario pueden ser de cualquier tipo de datos:

````python

thisdict = {
  "brand": "Ford",
  "electric": False,
  "year": 1964,
  "colors": ["red", "white", "blue"]
}

````

### **Type()**

Desde la perspectiva de Python, los diccionarios se definen como objetos con el tipo de datos 'dict':

````python

thisdict = {
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
print(type(thisdict))   # retorna <class 'dict'>

````

### **El constructor dict()**

También es posible usar el constructor dict() para hacer un diccionario.

````python

thisdict = dict(name = "John", age = 36, country = "Norway")
print(thisdict)

````

### **Colecciones de Python (matrices)**

Hay cuatro tipos de datos de recopilación en Python:

* **Lista** es una colección ordenada y modificable. Permite miembros duplicados.
* **Tupla** es una colección ordenada e inmutable. Permite miembros duplicados.
* **Set** es una colección desordenada, inmutable* y no indexada. No hay miembros duplicados.
* **Diccionario** es una colección ordenada** y modificable. No hay miembros duplicados.

*Los elementos establecidos no se pueden cambiar, pero se pueden eliminar y/o agregar elementos cuando se desee.

**A partir de la versión 3.7 de Python, se ordenan los diccionarios. En Python 3.6 y versiones anteriores, los diccionarios están desordenados.

````python

'''
Código:   decimonoveno ejemplo
Utilidad: diccionarios

'''

print('-' * 10, 'diccionario', '-' * 10)
my_dict = {}
print(type(my_dict))

my_dict = {
  'avion': "bla bla bla",
  'name': 'Nicolas',
  'last_name': 'Molina Monroy',
  'age': 87
}

print(my_dict)
print(len(my_dict))

print(my_dict['age'])
print(my_dict['last_name'])
print(my_dict.get('age'))

print('avion' in my_dict)
print('otroqueno' in my_dict)

````

![Ejecución programa desde el shell](https://i.imgur.com/69OXNAg.png)

El programa se adjunta en el repositorio como 19_dict.py

## Diccionarios: inserción y actualización

````python

'''
Código:   vigésimo ejemplo
Utilidad: diccionarios
          (inserción y actualización)

'''

print('-' * 10, 'definición diccionario', '-' * 10)
person = {
  'name': 'nico',
  'last_name': 'molina',
  'langs': ['python', 'javascript'],
  'age': 99
}

print(person)

print('-' * 10, 'modificación valores elementos diccionario', '-' * 10)
person['name'] = 'santi'
person['age'] -= 50
person['langs'].append('rust')
print(person)

print('-' * 10, 'eliminación valores elementos diccionario', '-' * 10)
del person['last_name']
person.pop('age')

print(person)

print('-' * 10, 'elementos diccionario', '-' * 10)
print('items')
print(person.items())

print('-' * 10, 'claves diccionario', '-' * 10)
print('keys')
print(person.keys())

print('-' * 10, 'valores diccionario', '-' * 10)
print('values')
print(person.values())

````

![Ejecución programa desde el shell](https://i.imgur.com/Rb99VR4.png)

El programa se adjunta en el repositorio como 20_dict.py

## Playground: Agrega, modifica y elimina elementos de un diccionario

![Resultado playground](https://i.imgur.com/rWa0yJm.png)