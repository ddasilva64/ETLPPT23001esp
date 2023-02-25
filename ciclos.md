# Ciclos

## Loops: While

### **Bucles de Python**

Python tiene dos comandos de bucle primitivos:

* **while**
* **for**

### **El ciclo while**

Con el bucle while podemos ejecutar un conjunto de declaraciones siempre que una condición sea verdadera, o sea, mientras sea cierta.

````python

i = 1
while i < 6:
  print(i)
  i += 1

````

**Nota**: Hay que recordar incrementar i, o de lo contrario el ciclo continuará para siempre.

El ciclo while requiere que las variables relevantes estén listas, en este ejemplo necesitamos definir una variable de indexación, i, que establecemos en 1.

### **La declaración de ruptura**

Con la instrucción break podemos detener el bucle incluso si la condición while es verdadera:

````python

i = 1
while i < 6:
  print(i)
  if i == 3:
    break
  i += 1

````

### **La instrucción continue**

Con la instrucción continue podemos detener la iteración actual y continuar con la siguiente:

````python

i = 0
while i < 6:
  i += 1
  if i == 3:
    continue
  print(i)

````

### **La instrucción else**

Con la instrucción else podemos ejecutar un bloque de código una vez cuando la condición ya no sea verdadera:

````python

i = 1
while i < 6:
  print(i)
  i += 1
else:
  print("i is no longer less than 6")

````

````python

'''
Código:   vigésimoprimer ejemplo
Utilidad: while

'''

'''

esto sería un bucle infinito

while true:
  print('se ejecutó)

'''

print('-' * 10, 'bucle while', '-' * 10)
counter = 0
while counter < 10:
  counter += 1
  print(counter)

print('-' * 10, 'break', '-' * 10)
counter = 0
while counter < 20:
  counter += 1
  if counter == 15:
    break
  print(counter)

print('-' * 10, 'continue', '-' * 10)
counter = 0
while counter < 20:
  counter += 1
  if counter < 15:
    continue
  print(counter)

print('-' * 10, 'else', '-' * 10)
i = 1
while i < 6:
  print(i)
  i += 1
else:
  print("i ya no es menor que 6")

````

![Ejecución programa desde el shell](https://i.imgur.com/qyqBMzJ.png)

El programa se adjunta en el repositorio como 21_while.py

## Loops: For

Un bucle for se usa para iterar sobre una secuencia (que es una lista, una tupla, un diccionario, un conjunto o una cadena).

Esto se parece menos a la palabra clave en otros lenguajes de programación, y funciona más como un método iterador como se encuentra en otros lenguajes de programación orientados a objetos.

Con el bucle for podemos ejecutar un conjunto de declaraciones, una vez para cada elemento en una lista, tupla, set, etc.

````python

fruits = ["apple", "banana", "cherry"]
for x in fruits:
  print(x)

````

El bucle for no requiere una variable de indexación que se deba establecer de antemano.

### **Recorriendo una cadena**

Incluso las cadenas son objetos iterables, contienen una secuencia de caracteres:

````python

for x in "banana":
  print(x)
  
````

### **La instrucción break**

Con la declaración break, podemos detener el bucle antes de que haya recorrido todos los elementos:

````python

fruits = ["apple", "banana", "cherry"]
for x in fruits:
  if x == "banana":
    break
  print(x)
      
````

### **La instrucción continue**

Con la instrucción continue podemos detener la iteración actual del bucle y continuar con la siguiente:

````python

fruits = ["apple", "banana", "cherry"]
for x in fruits:
  if x == "banana":
    continue
  print(x)

  ````

### **La función de range()**

Para recorrer un set un número especificado de veces, podemos usar la función de range(),

Devuelve una secuencia de números, que comienza desde 0 por defecto, se incrementa en 1 (por defecto), y termina en un número especificado.

````python

for x in range(6):
  print(x)

  ````

Tengamos en cuenta que el range(6) no son los valores de 0 a 6, sino de 0 a 5.

La función predetermina a 0 como un valor inicial, sin embargo, es posible especificar el valor inicial agregando un parámetro: range(2, 6), significa que recorre valores de 2 a 6 (pero no incluyendo 6):

````python

for x in range(2, 6):
  print(x)

````

La función, de manera predeterminada, aumenta la secuencia por 1, sin embargo, es posible especificar el valor de incremento agregando un tercer parámetro: range(2, 30, 3):

````python

for x in range(2, 30, 3):
  print(x)

````

### **Else en el bucle for**

La palabra clave else en un bucle for, especifica un bloque de código que se ejecutará cuando el bucle esté terminado:

````python

for x in range(6):
  print(x)
else:
  print("Finally finished!")

````

**Nota**: El bloque de Else no se ejecutará si el bucle se detiene mediante una instrucción break.

````python

for x in range(6):
  if x == 3: break
  print(x)
else:
  print("Finally finished!")


````

### **La istrucción pass**

Los bucles for no pueden estar vacíos, pero si por alguna razón tenemos un bucle for sin contenido, colocaremos la instrucción pass para evitar el error.

````python

  for x in [0, 1, 2]:
    pass

````

````python

'''
Código:   vigésimosegundo ejemplo
Utilidad: for

'''

print('-' * 10, 'bucle for recorriendo una lista', '-' * 10)
my_list = [23, 45, 67, 89, 43]
for element in my_list:
  print(element)

print('-' * 10, 'bucle for recorriendo una tupla', '-' * 10)
my_tuple = ['nico', 'juli', 'santi']
for element in my_tuple:
  print(element)

print('-' * 10, 'bucle for recorriendo un diccionario', '-' * 10)
product = {
  'name': 'Camisa',
  'price': 100,
  'stock': 89
}
for key in product:
  print(key, '=>', product[key])

for key,value in product.items():
  print(key, '=>', value)

print('-' * 10, 'bucle for recorriendo string', '-' * 10)
for x in "banana":
  print(x)

print('-' * 10, 'bucle for recorriendo una lista de diccionarios \n(muchos servidores devuelven esto)', '-' * 10)
people = [
  {
    'name': 'nico',
    'age': 34
  },
  {
    'name': 'zule',
    'age': 45
  },
  {
    'name': 'santi',
    'age': 4
  }
]

for person in people:
  print('name => ', person['name'])

print('-' * 10, 'bucle for con brak', '-' * 10)
fruits = ["apple", "banana", "cherry"]
for x in fruits:
  if x == "banana":
    break
  print(x)

print('-' * 10, 'bucle for con continue', '-' * 10)
fruits = ["apple", "banana", "cherry"]
for x in fruits:
  if x == "banana":
    continue
  print(x)

print('-' * 10, 'bucle for con range() comenzando por 0', '-' * 10)
for elemento in range(20):
  print(elemento)

print('-' * 10, 'bucle for con range() comenzando por 1', '-' * 10)
for elemento in range(1, 20):
  print(elemento)

print('-' * 10, 'bucle for con range() incrementando de 3 en 3', '-' * 10)
for x in range(2, 30, 3):
  print(x)

print('-' * 10, 'bucle for con else', '-' * 10)
for x in range(6):
  print(x)
else:
  print("Finally finished!")

print('-' * 10, 'bucles for con pass', '-' * 10)
for x in [0, 1, 2]:
  pass

````

![Ejecución del programa desde el shell](https://i.imgur.com/2rkASgZ.png)

El programa se adjunta en el repositorio como 22_for.py

## Playground: Agrega solo los números positivos de una lista

![Resultado playground](https://i.imgur.com/XFRpmVQ.png)

## Ciclos anidados

### **Bucles anidados**

Un bucle anidado es un bucle dentro de un bucle.

El "bucle interno" se ejecutará una vez para cada iteración del "bucle exterior":

````python

adj = ["red", "big", "tasty"]
fruits = ["apple", "banana", "cherry"]

for x in adj:
  for y in fruits:
    print(x, y)

````

````python

'''
Código:   vigésimotercer ejemplo
Utilidad: for anidados

'''

print('-' * 10, 'bucle for anidado', '-' * 10)
matriz = [
  [1,2,3],
  [4,5,6],
  [7,8,9]
]
print(matriz[0][1])

for row in matriz:
  print(row)
  for column in row:
    print(column)


print('-' * 10, 'otro de bucles for anidados', '-' * 10)
adj = ["red", "big", "tasty"]
fruits = ["apple", "banana", "cherry"]

for x in adj:
  for y in fruits:
    print(x, y)

````

![Ejecución del programa desde el shell](https://i.imgur.com/VNIkDCj.png)

El programa se adjunta en el repositorio como 23_loops.py
