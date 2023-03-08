# NumPy

# NumPy Array

* La estructura central de NumPy  
* Representa los datos de una manera estructurada  
* Indexado  
* Acceso a un elemento específico o un grupo de elementos

````python

import numpy as np

a = np.array([1, 2, 3])
a
array([1, 2, 3])

````

| Array |
| :---: |
| 1     |
| 2     |
| 3     |

````python

lista = [1, 2 , 3, 4, 5, 6, 7, 8, 9] 
lista
---> [1, 2, 3, 4, 5, 6, 7, 8, 9]

````

Volvemos nuestra lista, un array


````python

arr = np.array(lista)
arr
---> [1, 2, 3, 4, 5, 6, 7, 8, 9]
type(arr)
---> numpy.ndarray

````

Una matriz son varios **vectores** o **listas agrupadas** una encima de la otra, es como una tabla de Excel

````python

matriz = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
matriz = np.array(matriz)
matriz
---> array([[1, 2, 3],
       	   [4, 5, 6],
       	   [7, 8, 9]])

````

El indexado nos permite acceder a los elementos de los arrays y matrices  
Los elementos se ***empiezan a contar desde 0***   

````python

arr[0]
---> 1

````

| Index | 0   | 1   | 2   | 3   | 4   | 5   | 6   | 7   | 8   |
| :---: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| 0     | 1   | 2   | 3   | 4   | 5   | 6   | 7   | 8   | 9   |


Es posible **operar** directamente con los elementos  

````python

arr[0] + arr[5]
---> 7

````

| 0   | +   | 5   |
| :-: | :-: | :-: |
| 1   |     | 6   |

En el caso de las **matrices**, al indexar una posición se regresa el array de dicha posición  

````python

matriz[0]
---> array([1, 2, 3])

````

| Index | 0   | 1   | 2   |
| :---: | :-: | :-: | :-: |
| 0     | 1   | 2   | 3   |
| 1     | 4   | 5   | 6   |
| 2     | 7	  | 8	| 9   |

Para seleccionar un solo elemento de la matriz se especifica la posición del elemento ***separada por comas***  

**Nota**: El primer elemento selecciona las filas, el segundo elemento las columnas  

````python

matriz[0, 2]
---> 3

````

### **Slicing**

Nos permite extraer varios datos, tiene un comienzo y un final  
En este ejemplo, se está extrayendo datos desde la posición 1 hasta la 5  

````python

arr[1:6]
---> array([2, 3, 4, 5, 6])

````

Si no se ingresa el ***valor de inicio***, se toma el inicio como la posición 0  

````python

arr[:6]
---> array([1, 2, 3, 4, 5, 6])

````

En cambio, si no se le da una posición final, se obtienen todos los elementos, hasta el final del array  

````python

arr[2:]
---> array([3, 4, 5, 6, 7, 8, 9])

````

También se puede **trabajar por pasos**  

En este ejemplo, se va de 3 en 3  

Obtiene la posición 0, 0 + 3, 3 + 3 y como no hay posición 6 + 3, no se obtiene nada  

````python

arr[::3]
---> array([1, 4, 7])

````

| Index | 0   | 3   | 7   |
| :---: | :-: | :-: | :-: |
|0      | 1   | 4   | 7   |

Cuando se le asigna un valor negativo, se obtienen los valores, comenzando desde la última posición del array  

````python

arr[-1]
---> 9
arr[-3:]
---> array([7, 8, 9])

````

| 1   | 2   | 3   | 4   | 5   | 6   | 7   | 8   | 9   |  
| :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |

Para el caso de las matrices, sucede algo similar  

Para acceder a los valores de las filas  

````python

matriz[1:]
---> array([[4, 5, 6],
       	   [7, 8, 9]])

````

Para acceder a los valores de filas y columnas  

````python

matriz[1:, 0:2]
---> array([[4, 5],
            [7, 8]])

````

### **Reto**

Crear una matriz de 3 dimensiones y explicar:

* ¿Qué hemos podido hacer?   
* ¿Cómo hacer un slicing de los datos?  

Matrices de tres dimensiones 

En nuestro caso construiremos una matriz de 3x3 dimensiones

Si, a su vez, los elementos de segundo nivel son listas de elementos, nos encontramos ante una matriz de tres dimensiones:

````python

m=np.array([[[1,2,3],[4,5,6],[7,8,9]],[[10,11,12],[13,14,15],[16,17,18]],[[19,20,21],[22,23,24],[25,26,27]]])
m
m[2] # retorna la tercera matriz

--> array([[19, 20, 21],
       [22, 23, 24],
       [25, 26, 27]])

````

Es como poner varias matrices juntas  

````
[[1,2,3],[4,5,6],[7,8,9]] 			← Primera matriz  
[[10,11,12],[13,14,15],[16,17,18]] 	← Segunda matriz  
[[19,20,21],[22,23,24],[25,26,27]] 	← Tercera matriz  

````

Slicing

* Dimensión 1: completa
* Dimensión 2: completa
* Dimensión 3: completa

````python

m[:,:,: ]

--> array([[[ 1,  2,  3],
        [ 4,  5,  6],
        [ 7,  8,  9]],

       [[10, 11, 12],
        [13, 14, 15],
        [16, 17, 18]],

       [[19, 20, 21],
        [22, 23, 24],
        [25, 26, 27]]])

````

* Dimensión 1: completa
* Dimensión 2: 1,2
* Dimensión 3: completa

````python

m[:,:2,:]

--> array([[[ 1,  2,  3],
        [ 4,  5,  6]],

       [[10, 11, 12],
        [13, 14, 15]],

       [[19, 20, 21],
        [22, 23, 24]]])

````

* Dimensión 1: completa
* Dimensión 2: 1,2
* Dimensión 3: 2,3

````python

m[:,:2,2:3 ]

--> array([[[ 3],
        [ 6]],

       [[12],
        [15]],

       [[21],
        [24]]])

````