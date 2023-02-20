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

