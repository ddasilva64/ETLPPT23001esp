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

