# NumPy

NumPy es una librería de Python para computación científica. NumPy significa  Python numérico. Aquí está la descripción oficial de la librería indicada en su página web:

>"NumPy es el paquete fundamental para la computación científica con Python. Contiene entre otras cosas:
>
>* Un poderoso objeto de arreglo n-dimensional  
>* Funciones sofisticadas  
>* Herramientas para integrar código en C/C++ y Fortran  
>* Útiles capacidades de Álgebra Lineal, transformación de Fourier y números aleatorios  
>
>Además de sus obvios usos científicos, NumPy puede ser utilizado como un eficiente contenedor multidimensional de datos genéricos. Pueden ser definidos tipos de datos arbitrarios, lo cual, permite que NumPy se integre, sin problemas y con rapidez, con una amplia variedad de bases de datos  
>
>NumPy está licenciado bajo el formato BSD, lo que permite la reutilización con pocas restricciones"

NumPy es una librería de Python tan importante, que hay otras librerías (incluyendo Pandas), que están construidas enteramente sobre NumPy  
**
### **El principal beneficio de NumPy**

El principal beneficio de NumPy es que permite una generación y manejo de datos extremadamente rápido. NumPy tiene su propia estructura lista de Python, pero que puede almacenar y operar con datos de manera mucho más eficiente  

### **Que aprender sobre NumPy**

Los programadores avanzados de Python pasan mucho más tiempo trabajando con Pandas, que trabajando con NumPy. AUn así, dado que pandas se basa en NumPy, es importante comprender los aspectos más importantes de la biblioteca NumPy  

***Aspectos interesantes sobre la librería de NumPy***:

* Arreglos (creados llamando al método ````.array()````)
* Indexación y asignación
* Métodos y operaciones  

## NumPy Array

* La estructura central de NumPy  
* Representa los datos de una manera estructurada  
* Indexado  
* Acceso a un elemento específico o un grupo de elementos

### ***Principal ventaja de los arrays de NumPy***

La ventaja de Numpy, en el tratamiento de listas, frente al tratamiento tradicional de estas estructuras en Python, es que el procesamiento de los arrays se realiza mucho más rápido (**hasta 50 veces más rápido**), que las listas tradicionales de Python, lo cual la hace ideal para el procesamiento de vectores y matrices de grandes dimensiones  

### ***La clase de objetos array***

Un array es una estructura de datos ***de un mismo tipo*** organizada en forma de tabla o cuadrícula de distintas dimensiones  

Las dimensiones de un array también se conocen como ejes  

![Dimensiones de los arrays de NumPy](https://i.imgur.com/8021uuT.png)
(Ver los ejemplos implementados en ***Creación de arrays***)

### ***Creación de arrays***

Para crear un array se utiliza la siguiente función de NumPy

* ***````np.array(lista)````*** : Crea un array a partir de la lista o tupla y devuelve una referencia a él. El número de dimensiones del array dependerá de las listas o tuplas anidadas en lista:  

    * ***Vector***: Lista de valores que crea un array de una dimensión

        ````python
        import numpy as np

        a1 = np.array([7, 2, 9, 10])                # Array de una dimensión
        a1
        array([ 7,  2,  9, 10])
        ````

        | Vector |
        | :----: |
        | 7      |
        | 2      |
        | 9      |
        | 10     |

    * ***Matriz***: Lista, de listas de valores que crea un array de dos dimensiones  

        ````python
        import numpy as np

        a2 = np.array([[5.2, 3.0, 4.5], [9.1, 0.1, 0.3]])   # Array de dos dimensiones
        a2
        array([[5.2, 3. , 4.5],
               [9.1, 0.1, 0.3]])
        ````

        | Vector  | ítem 1 | ítem 2 | ítem 3 |
        | :-----: | :----: | :----: | :----: |
        | 1       | 5.2    | 3.0    | 4.5    |
        | 2       | 9.1    | 0.1    | 0.3    |

    * ***Cubo***: Lista, de listas, de listas de valores que crea un array de tres dimensiones  

        ````python
        import numpy as np

        # Array de tres dimensiones
        a3 = np.array([[[1, 4, 7], [2, 9, 7], [1, 3, 0], [9, 6, 9]], [[2, 3, 4], [10, 11, 5], [10, 11, 2], [10, 11, 8]]])
        a3
        array([[[ 1,  4,  7],
                [ 2,  9,  7],
                [ 1,  3,  0],
                [ 9,  6,  9]],

               [[ 2,  3,  4],
                [10, 11,  5],
                [10, 11,  2],
                [10, 11,  8]]])
        ````

        | Vector (1) | ítem 1 | ítem 2 | ítem 3 |
        | :--------: | :----: | :----: | :----: |
        | 1          | 1      | 4      | 7      |
        | 2          | 2      | 9      | 7      |
        | 3          | 1      | 3      | 0      |
        | 4          | 9      | 6      | 9      |

        | Vector (2) | ítem 1 | ítem 2 | ítem 3 |
        | :--------: | :----: | :----: | :----: |
        | 1          | 2      | 3      | 4      |
        | 2          | 10     | 11     | 5      |
        | 3          | 10     | 11     | 2      |
        | 4          | 10     | 11     | 8      |


    * Y así sucesivamente. No hay límite en el número de dimensiones del array más allá de la memoria disponible en el sistema  

**Nota**: Una matriz son varios **vectores** o **listas agrupadas** una encima de la otra, es como una tabla de Excel  

![Ejemplo Excel como matriz](https://i.imgur.com/JS5lDwq.png)

### ***Conversión de una lista de Python en un array***

````python
import numpy as np

lista = [1, 2 , 3, 4, 5, 6, 7, 8, 9] 
lista
[1, 2, 3, 4, 5, 6, 7, 8, 9]

arr = np.array(lista)
arr
[1, 2, 3, 4, 5, 6, 7, 8, 9]
type(arr)
numpy.ndarray
````

### ***Indexado***

El indexado nos permite acceder a los elementos de los arrays y matrices. Los elementos se ***empiezan a contar desde 0***   

| Índice | 0   | 1   | 2   | 3   | 4   | 5   | 6   | 7   | 8   |
| :----: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| Valor  | 1   | 2   | 3   | 4   | 5   | 6   | 7   | 8   | 9   |

````python
arr[0]
1
````

Es posible **operar** directamente con los elementos por sus índices   

````python
arr[0] + arr[5]
7
````

En el caso de las **matrices**, al indexar una posición, se obtiene el array de dicha posición  

| Vector  | ítem 1 | ítem 2 | ítem 3 |
| :-----: | :----: | :----: | :----: |
| 1       | 5.2    | 3.0    | 4.5    |
| 2       | 9.1    | 0.1    | 0.3    |

````python
a2[0]
array([5.2, 3. , 4.5])
````
Para seleccionar un solo elemento de la matriz se especifica la posición del elemento ***separada por comas***. El primer elemento selecciona las filas, el segundo elemento las columnas  

````python
a2[0, 2]
4.5
````

### **Slicing**

Nos permite extraer varios datos, tiene un comienzo y un final. En este ejemplo, se está extrayendo datos desde la posición 1 hasta la 3  

````python
a1[1:4]
array([ 2,  9, 10])
````

Si no se ingresa el ***valor de inicio***, se toma el inicio como la posición 0  

````python
a1[:4]
array([ 7,  2,  9, 10])
````

En cambio, si no se le da una posición final, se obtienen todos los elementos, hasta el final del array  

````python
a1[2:]
array([ 9, 10])
````

También se puede **trabajar por pasos**  

En este ejemplo, se va de 2 en 2  

Obtiene la posición 0, 0 + 2 y como no hay posición 2 + 2, no se obtiene nada  

````python
a1[::2]
array([7, 9])
````
Cuando se le asigna un valor negativo, se obtienen los valores, comenzando desde la última posición del array  

````python
a1[-1]
10
a1[-2:]
array([ 9, 10])
````

Para el caso de las matrices, sucede algo similar. Para acceder a los valores de las filas  

````python
a2[1:]
array([[9.1, 0.1, 0.3]])
````

Para acceder a los valores de filas y columnas  

````python
a3[1:,0:,2]
array([[4, 5, 2, 8]])
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
[[1,2,3],[4,5,6],[7,8,9]] 		← Primera matriz  
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

## Tpos de datos del array de NumPy

### **Identificación del tipo de datos del array**

Lo proporciona la propiedad ````.dtype````

````python
arr = np.array([1, 2, 3, 4])
arr.dtype
---> dtype('int64')
````

### **Declaración del tipo de datos del array**

Lo declaramos con la propiedad ````.dtype````

* ***Declaración de tipo punto decimal***

````python
arr = np.array([1, 2, 3, 4], dtype = 'float64')
arr.dtype
---> dtype('float64')
arr
---> array([1., 2., 3., 4.])
````

### **Conversión de un tipo a otro**

Utilizamos el método ````.astype```` 

* ***Conversión de entero a punto decimal***

````python
arr = np.array([1, 2, 3, 4])
arr = arr.astype(np.float64)
arr
---> array([1., 2., 3., 4.])
````

* ***Conversión de entero a booleano***

````python
arr = np.array([0, 1, 2, 3, 4])
arr = arr.astype(np.bool_)
arr
---> array([False,  True,  True,  True,  True])
````

**Nota**: 0 se convierte a False y los números >0 a True  

* ***Conversión de entero a string***

````python
arr = np.array([0, 1, 2, 3, 4])
arr = arr.astype(np.string_)
arr
---> array([b'0', b'1', b'2', b'3', b'4'], dtype='|S21')
````

* ***Conversión de string a entero*** 

````python
arr = np.array(['0', '1', '2', '3', '4'])
arr = arr.astype(np.int8)
arr
---> array([0, 1, 2, 3, 4], dtype=int8)
````

**Nota**: Solo funciona esta conversión, si los elementos del array son números  

````python
arr = np.array(['hola','0', '1', '2', '3', '4'])
arr = arr.astype(np.int8)
arr
---> ValueError: invalid literal for int() with base 10: 'hola'
````

**Nota**: Los arrays de NumPy solo pueden contener un tipo de dato, es decir, todos los elementos del array deben ser del mismo tipo. Esto es lo que le confiere las ventajas de la **optimización de memoria**  

### Tipos de datos primitivos admitidos (estrechamente relacionados con los de C)

| Tipo NumPy            | Descripción                                           |
| :-------------------: | :---------------------------------------------------- |
| numpy.bool_           | Booleanos (1 byte)                                    |
| numpy.signedinteger   | Enteros con signo                                     |
| numpy.byte            | Enteros con signo, compatibles con char de C          | 
| numpy.short           | Tipo entero con signo, compatible con short de C      |
| numpy.intc            | Tipo entero con signo, compatible con int de C        |
| numpy.int64           | Tipo long con signo de 64 bits                        |
| numpy.longlong        | Enteros con signo, compatible con long long de C      |
| numpy.unsignedinteger | Enteros sin signo                                     |
| numpy.ubyte           | Enteros sin signo, compatible con unsigned char de C  |
| numpy.ushort          | Enteros sin signo, compatible con unsigned short de C |
| numpy.uintc           | Enteros sin signo, compatible con unsigned int deC    |
| numpy.uint            | Enteros sin signo, compatible con unsigned long de C  |
| numpy.ulonglong       | Enteros sin signo, compatible con unsigned long long de C |
| numpy.inexact         | Todos los tipos numéricos con una representación (potencialmente) inexacta de los valores en su rango, como números de coma flotante |
| numpy.floating        | Tipos de punto flotante                               |
| numpy.half            | Números de punto flotante, con signo, de precisión media   |
| numpy.single          | Números de punto flotante, con signo, de precisión simple, compatible con float de C |
| numpy.double          | Números de punto flotante, con signo, de doble precisión, compatible con float de Python y double de C |
| numpy.longdouble      | Números de punto flotante de precisión extendida, compatibles con el long double de C |
| numpy.complexfloating | Números complejos que se componen de números de punto flotante |
| numpy.csingle         | Números complejos compuestos por dos números de punto flotante de precisión simple |
| numpy.cdouble         | Números complejos compuestos por dos números de coma flotante de doble precisión, compatibles con el complejo de Python |
| numpy.clongdouble     | Números complejos compuestos por dos números de punto flotante de precisión extendida |
| numpy.datetime64      | Si se crea a partir de un entero de 64 bits, representa un desplazamiento desde 1970-01-01T00:00:00. Si se crea a partir de una cadena, la cadena puede estar en formato de fecha o de fecha y hora ISO 8601 |
| numpy.timedelta64     | Un timedelta almacenado como un entero de 64 bits              |
| numpy.object_         | Cualquier objeto de Python                                     |
| numpy.flexible        | Todos los tipos sin longitud predefinida. El tamaño real de estos tipos depende de la instanciación específica de np.dtype |
| numpy.bytes_          | Una cadena de bytes                                            |
| numpy.str_            | Una cadena Unicode                                             |
| numpy.void            | Crea un nuevo vacío estructurado o no estructurado             |


Los tipos numéricos NumPy son instancias de objetos dtype (tipo de datos), cada uno con características únicas. Una vez que haya importado NumPy usando ````import numpy as np````, los dtypes estarán disponibles como np.bool_, np.float32, etc.

Los tipos avanzados, no enumerados anteriormente, son arreglos estructurados.

Hay 5 tipos numéricos básicos que representan:
* booleanos (bool), 
* enteros (int), 
* enteros sin signo (uint), 
* punto flotante (float) y 
* complejo  

Los tipos de datos se pueden usar como funciones para convertir números de Python en escalares de matriz, secuencias de números de Python en matrices de ese tipo o como argumentos para la palabra clave dtype que aceptan muchas funciones o métodos NumPy  

## Dimensiones

Con las matrices podemos crear varias dimensiones, vamos a nombrarlas

### ***Scalar***

Es un solo dato o valor

| Valor |
| :---: |
| 0     |

![Escalar](https://i.imgur.com/bjTQoDM.png)

````python
scalar = np.array(42) # .ndim Nos muestra las dimensiones que tiene
print(scalar) 
scalar.ndim 

42
0
````

### ***Vector***

Son listas de Python

| Valor 1 | Valor 2 | Valor 3 | Valor 4 | Valor 5 |
| :-----: | :-----: | :-----: | :-----: | :-----: |
| 0       | 1       | 2       | 3       | 4       |

![Vector](https://i.imgur.com/BGRHSfK.png)

````python
vector = np.array([1, 2, 3]) # Declaración de un vector
print(vector) 
vector.ndim 

[1 2 3]
1
````

### ***Matriz***

Son *como* hojas de cálculo

| Color    | País     | Edad | Fruta   |
| :------: | :------: | ---: | :-----: |
| Rojo     | España   | 24   | Pera    |
| Amarillo | Colombia | 30   | Manzana |

![Matriz](https://i.imgur.com/0YrXkQ8.png)

````python
matriz = np.array([[1, 2, 3], [4, 5, 6]]) # Declaración de una matriz
print(matriz)
matriz.ndim
[[1 2 3]
 [4 5 6]]
2
````

### ***Tensor (cubo)***

Pueden ser series temporales o de imágenes, por ejemplo

![Ejemplo de series temporales como tensor 3D](https://i.imgur.com/cM9PqgZ.png)

![Ejemplo de series de imágenes como tensor 4D](https://i.imgur.com/dIyoyLP.png)

![Tensor o cubo](https://i.imgur.com/a82usp5.png)

````python
# Declaración de un tensor
tensor = np.array([[[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]],[[13, 13, 15], [16, 17, 18], [19, 20, 21], [22, 23, 24]]])
print(tensor)
tensor.ndim
[[[ 1  2  3]
  [ 4  5  6]
  [ 7  8  9]
  [10 11 12]]

 [[13 13 15]
  [16 17 18]
  [19 20 21]
  [22 23 24]]]	
3
````

### ***Agregar o eliminar dimensiones***

Se puede definir el número de dimensiones desde la declaración del array

````python
vector = np.array([1, 2, 3], ndmin = 10)
print(vector) 
vector.ndim 

[[[[[[[[[[1 2 3]]]]]]]]]]
10
````

Se pueden expandir dimensiones a los arrays ya existentes con expand_dims(). Axis = 0 hace referencia a las filas, mientras que axis = 1 a las columnas  

````python
expand = np.expand_dims(np.array([1, 2, 3]), axis = 0)
print(expand)
expand.ndim 

[[1 2 3]]
2
````

Remover/comprimir las dimensiones que no están siendo usadas  

````python
print(vector, vector.ndim) 
vector_2 = np.squeeze(vector)
print(vector_2, vector_2.ndim)

[[[[[[[[[[1 2 3]]]]]]]]]] 10
[1 2 3] 1
````

### ***Reto (dos soluciones)***

1. Definir un tensor (cubo) de 5D  
2. Sumarle una dimensión en cualquier eje  
3. Borrar las dimensiones que no se usen  

Cuéntanos, ¿Cómo te fue y cómo lo solucionaste?  

* ***Solución sin definir dimensiones con ndmin***

````python
# definición del tensor (cubo) de 5 dimensiones
d5=np.array([
    [[[[1,2,3],[4,5,6],[7,8,9]]]],
    [[[[10,11,12],[13,14,15],[16,17,18]]]],
    [[[[19,20,21],[22,23,24],[25,26,27]]]],
    [[[[28,29,30],[31,32,33],[34,35,36]]]],
    [[[[37,38,39],[40,41,42],[43,44,45]]]]
    ])
print(d5, d5.ndim)

[[[[[ 1  2  3]
    [ 4  5  6]
    [ 7  8  9]]]]

 [[[[10 11 12]
    [13 14 15]
    [16 17 18]]]]

 [[[[19 20 21]
    [22 23 24]
    [25 26 27]]]]

 [[[[28 29 30]
    [31 32 33]
    [34 35 36]]]]

 [[[[37 38 39]
    [40 41 42]
    [43 44 45]]]]] 5
````

````python
# Sumamos una dimensión a un eje 
d5 = np.expand_dims(d5, axis=4)
print(d5, d5.ndim)

[[[[[[ 1  2  3]]

    [[ 4  5  6]]

    [[ 7  8  9]]]]]

 [[[[[10 11 12]]

    [[13 14 15]]

    [[16 17 18]]]]]

 [[[[[19 20 21]]

    [[22 23 24]]

    [[25 26 27]]]]]

 [[[[[28 29 30]]

    [[31 32 33]]

    [[34 35 36]]]]]

 [[[[[37 38 39]]

    [[40 41 42]]

    [[43 44 45]]]]]] 6
`````

````python
# Borramos las dimensiones que no se usen  
print(d5, d5.ndim)
d5 = np.squeeze(d5)
print(d5, d5.ndim)

[[[ 1  2  3]
  [ 4  5  6]
  [ 7  8  9]]

 [[10 11 12]
  [13 14 15]
  [16 17 18]]

 [[19 20 21]
  [22 23 24]
  [25 26 27]]

 [[28 29 30]
  [31 32 33]
  [34 35 36]]

 [[37 38 39]
  [40 41 42]
  [43 44 45]]] 3
````
* ***Solución definiendo dimensiones con ndmin***

````python
# definición del tensor (cubo) de 3 dimensiones,  incrementadas a 5
d5=np.array([
    [[1,2,3],[4,5,6],[7,8,9]],
    [[10,11,12],[13,14,15],[16,17,18]],
    [[19,20,21],[22,23,24],[25,26,27]],
    [[28,29,30],[31,32,33],[34,35,36]],
    [[37,38,39],[40,41,42],[43,44,45]]
   ],  ndmin = 5)
print(d5, d5.ndim)

[[[[[ 1  2  3]
    [ 4  5  6]
    [ 7  8  9]]

   [[10 11 12]
    [13 14 15]
    [16 17 18]]

   [[19 20 21]
    [22 23 24]
    [25 26 27]]

   [[28 29 30]
    [31 32 33]
    [34 35 36]]

   [[37 38 39]
    [40 41 42]
    [43 44 45]]]]] 5
````

````python
# Sumamos una dimensión a un eje 
d5 = np.expand_dims(d5, axis=4)
print(d5, d5.ndim)

[[[[[[ 1  2  3]]

    [[ 4  5  6]]

    [[ 7  8  9]]]]]

 [[[[[10 11 12]]

    [[13 14 15]]

    [[16 17 18]]]]]

 [[[[[19 20 21]]

    [[22 23 24]]

    [[25 26 27]]]]]

 [[[[[28 29 30]]

    [[31 32 33]]

    [[34 35 36]]]]]

 [[[[[37 38 39]]

    [[40 41 42]]

    [[43 44 45]]]]]] 6
`````

````python
# Borramos las dimensiones que no se usen  
print(d5, d5.ndim)
d5 = np.squeeze(d5)
print(d5, d5.ndim)

[[[ 1  2  3]
  [ 4  5  6]
  [ 7  8  9]]

 [[10 11 12]
  [13 14 15]
  [16 17 18]]

 [[19 20 21]
  [22 23 24]
  [25 26 27]]

 [[28 29 30]
  [31 32 33]
  [34 35 36]]

 [[37 38 39]
  [40 41 42]
  [43 44 45]]] 3
````

## Creación de arrays

### ***Método .arange()***

Permite generar arrays sin definir previamente una lista o una tupla. Devuelve valores espaciados uniformemente dentro de un intervalo dado     

      numpy.arange([start, ]stop, [step, ]dtype=None, *, like=None)

Parámetros: 

   * *Inicio*: Entero o real, opcional: Indica el comienzo del intervalo, que incluye este valor. El valor inicial predeterminado es 0  
   * *Parada*: Entero o real. Indica el fin del intervalo, que no incluye este valor  
   * *Paso*: Entero o real, opcional. Indica el espaciado entre valores    
   * *Tipo*: dtype, opcional. Indica el tipo de la matriz de salida, si no se proporciona dtype, lo deduce de los datos de los otros argumentos de entrada
   * *Like*: array_like, opcional. Indica el objeto de referencia para permitir la creación de matrices que no son matrices NumPy  

*Retorno*: arangendarray. Matriz de valores espaciados uniformemente  

````python
np.arange(0,10) # Inicio y parada
array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
````

````python
np.arange(0,20,2) # Inicio, parada y paso
array([ 0,  2,  4,  6,  8, 10, 12, 14, 16, 18])
````

### ***Método .zeros()***

Devuelve una nueva matriz de forma y tipo dados, llena de ceros

      numpy.zeros(shape, dtype=float, order='C', *, like=None)

Parámetros: 

   * *Shape (forma)*: Entero o tupla de enteros. Forma de la nueva matriz, por ejemplo, (2, 3) o 2   
   * *Tipo*: dtype, opcional. El tipo de datos deseado para la matriz, por ejemplo, numpy.int8. El valor predeterminado es numpy.float64  
   * *Orden*: {'C', 'F'}, opcional, predeterminado: 'C'. Ya sea para almacenar datos multidimensionales en orden de fila principal (estilo C) o de columna principal (estilo Fortran) en la memoria  
   * *Like*: array_like, opcional. Objeto de referencia para permitir la creación de matrices que no son matrices NumPy  

*Retorno*: ndarray. Matriz de ceros con la forma, el tipo y el orden dados    

````python
np.zeros(3)
array([0., 0., 0.])
np.zeros((10,5))
array([[0., 0., 0., 0., 0.],
       [0., 0., 0., 0., 0.],
       [0., 0., 0., 0., 0.],
       [0., 0., 0., 0., 0.],
       [0., 0., 0., 0., 0.],
       [0., 0., 0., 0., 0.],
       [0., 0., 0., 0., 0.],
       [0., 0., 0., 0., 0.],
       [0., 0., 0., 0., 0.],
       [0., 0., 0., 0., 0.]])
````

### ***Método .ones()***

Devuelve una nueva matriz de forma y tipo dados, llena de unos  

      numpy.ones(shape, dtype=None, order='C', *, like=None)

Parámetros: 

   * *Shape (forma)*: Entero o secuencia de enteros. Forma de la nueva matriz, por ejemplo, (2, 3) o 2  
   * *Tipo*: dtype, opcional. El tipo de datos deseado para la matriz, por ejemplo, numpy.int8. El valor predeterminado es numpy.float64   
   * *Orden*: {'C', 'F'}, opcional, predeterminado: C. Ya sea para almacenar datos multidimensionales en orden de fila principal (estilo C) o columna principal (estilo Fortran) en la memoria    
   * *Like*: array_like, opcional. Objeto de referencia para permitir la creación de matrices que no son matrices NumPy  

*Retorno*: ndarray. Matriz de unos con la forma, el tipo y el orden dados  

````python
np.ones(3)  
array([1., 1., 1.])
````

### ***Método .linspace()***

Permite generar una array definiendo un inicio, un final y cuantas divisiones tendrá. Devuelve números espaciados uniformemente en un intervalo específico.

      numpy.linspace(start, stop, num=50, endpoint=True, retstep=False, dtype=None, axis=0)

Parámetros: 

   * *Inicio*: array_like. Indica el valor inicial de la secuencia   
   * *Parada*: array_like. Indica el valor final de la secuencia, a menos que el punto final se establezca en False. En ese caso, la secuencia consta de todas menos la última posición, espaciadas uniformemente, por lo que se excluye la parada. El tamaño del paso cambia cuando el punto final es False  
   * *Número de muestras*: Entero, opcional. Número de muestras a generar. El valor predeterminado es 50. Debe ser no negativo  
   * *Punto final*: Booleano, opcional. Si es True, la parada es la última muestra. De lo contrario, no está incluido. El valor predeterminado es True  
   * *Pasos retornados*: Booleano, opcional. Si es True, devuelve (muestras, paso), donde paso es el espacio entre muestras  
   * *Tipo*: dtype, opcional. Indica el tipo de la matriz de salida. Si no se proporciona dtype, el tipo de datos se infiere desde el inicio y la finalización. El dtype inferido nunca será un número entero; float se elige incluso si los argumentos producirían una matriz de enteros  
   * *Eje*: Entero, opcional. El eje en el resultado para almacenar las muestras. Relevante solo si el *inicio* o la *parada* son similares a una matriz. Por defecto (0), las muestras estarán a lo largo de un nuevo eje insertado al principio. Usaremos -1 para obtener un eje al final    
   * *Retorno*: ndarray. Hay un número de muestras espaciadas uniformemmente, entre el inicio y la parada  
   * *Paso*: Opcional. Solo se devuelve si *número de muestras* es True. Indica el tamaño del espacio entre muestras  

````python
np.linspace(0, 10 , 10) # Inicio, parada y número de muestras
array([ 0., 1.11111111, 2.22222222, 3.33333333, 4.44444444,
        5.55555556, 6.66666667, 7.77777778, 8.88888889, 10.])
````

### ***Método .eye()***

Permite crear una matriz con una **diagonal** de 1 y el resto de 0  

      numpy.eye(N, M=None, k=0, dtype=<class 'float'>, order='C', *, like=None)

Parámetros: 

   * *N*: Entero. Número de filas en la salida    
   * *M*: Entero, opcional. Número de columnas en la salida. Si no se especifica ninguna, el valor predeterminado es N    
   * *K*: Entero, opcional. Es el índice de la diagonal, 0 (el valor predeterminado) se refiere a la diagonal principal, un valor positivo se refiere a una diagonal superior y un valor negativo a una diagonal inferior  
   * *Tipo*: dtype, opcional. Tipo de datos de la matriz devuelta  
   * *Orden*: {'C', 'F'}, opcional. Si la salida debe almacenarse en orden de fila principal (estilo C) o de columna principal (estilo Fortran) en la memoria  
   * *Like*: array_like, opcional. Objeto de referencia para permitir la creación de matrices que no son matrices NumPy  

*Retorno*: indarray de forma (N,M). Una matriz donde todos los elementos son iguales a cero, excepto la k-ésima diagonal, cuyos valores son iguales a uno  

````python
np.eye(4)
array([[1., 0., 0., 0.],
       [0., 1., 0., 0.],
       [0., 0., 1., 0.],
       [0., 0., 0., 1.]])
````

### ***Método .rand()***

Permite generar números aleatorios en una forma dada  

      random.rand(d0, d1, ..., dn)

Parámetros: 

   * *d0, d1, …, dn*: Entero, opcional. Las dimensiones de la matriz devuelta deben ser no negativas. Si no se proporciona ningún argumento, se devuelve un solo flotante de Python      

*Retorno*: ndarray de forma (d0, d1, ..., dn). Valores aleatorios 

````python
np.random.rand()     # sin dimensiones (escalar)
0.37185218178880153
````

````python
np.random.rand(4)    # con una dimensión (vector)
array([0.77923054, 0.90495575, 0.12949965, 0.55974303])
````

````python
np.random.rand(4,4)  # con dos dimensiones (matriz)
array([[0.26920153, 0.24873544, 0.02278515, 0.08250538],
       [0.16755087, 0.59570639, 0.83604996, 0.57717126],
       [0.00161574, 0.27857138, 0.33982786, 0.19693596],
       [0.69474123, 0.01208492, 0.38613157, 0.609117  ]])
````

### ***Método .randint()***

Devuelve números enteros aleatorios desde el punto bajo (inclusivo) al alto (exclusivo)   

      random.randint(low, high=None, size=None, dtype=int)

Parámetros: 

   * *Bajo*: Entero o tipo matriz de enteros. Números enteros más bajos (con signo) que se extraerán de la distribución (a menos que alto = None, en cuyo caso este parámetro es uno por encima del número entero más alto)  
   * *Alto*: Entero o similar a una matriz de enteros, opcional. Si se proporciona, uno encima del entero más grande (con signo) que se extraerá de la distribución (ver arriba para el comportamiento si alto = None). Si es similar a una matriz, debe contener valores enteros  
   * *Tamaño*: Entero o tupla de enteros, opcional. Forma de salida. Si la forma dada es, por ejemplo, (m, n, k), entonces se extraen m * n * k muestras. El valor predeterminado es None, en cuyo caso se devuelve un solo valor  
   * *Tipo*: dtype, opcional. Tipo de resultado deseado. El orden de bytes debe ser nativo. El valor predeterminado es int.    

*Retorno*: Entero o matriz de enteros. Matriz tamaño-forma de enteros aleatorios de la distribución adecuada, o un único int aleatorio si no se proporciona el tamaño  

````python
np.random.randint(1,15)             # sin tamaño (escalar)
7
```` 

````python
np.random.randint(1,15, (3,3))      # con tamaño (matriz de 3x3)
array([[ 4,  2,  9],
           [ 5,  7,  8],
           [14, 14,  4]])
````

## Shape y Reshape

Hay 2 funciones muy importantes de los arreglos (Shape y Reshape). La forma de un arreglo nos va a decir, con que estructura se está trabajando (tamaño, manipular, ingresar).

### ***Shape***

La propiedad ````.shape```` generalmente se usa para obtener la forma actual de una matriz, pero también se puede usar para remodelar la matriz asignándole una tupla de dimensiones de la matriz. Al igual que con ````numpy.reshape````, una de las nuevas dimensiones de la forma puede ser -1, en cuyo caso, su valor se deduce del tamaño de la matriz y las dimensiones restantes. La remodelación de una matriz fallará si se hace con una copia  

      ndarray.shape 

Parámetros: 

   * *Array*: array_like. Array de entrada  

*Retorno*: Forma en forma de tupla de enteros. Los elementos de la tupla de forma dan las longitudes de las dimensiones de matriz correspondientes   

````python
arr = np.random.randint(1,10,(3,2))
arr.shape
(3, 2)
arr
array([[4, 2],
       [4, 8],
       [4, 3]])
````

### ***Reshape***

Transforma una matriz que contiene los mismos elementos con una nueva forma  

      ndarray.reshape(shape, order='C')

Parámetros: 

   * *Array*: array_like. Matriz a reformar
   * *Nueva forma*: Entero o tupla de enteros. La nueva forma debe ser compatible con la forma original. Si es un número entero, el resultado será una matriz 1-D de esa longitud. Una dimensión de forma puede ser -1. En este caso, el valor se deduce de la longitud de la matriz y las dimensiones restantes    
   * *Orden*: {'C', 'F', 'A'}, opcional. Lee los elementos usando este orden de índice y coloca los elementos en la matriz remodelada usando este orden de índice. 'C' significa leer / escribir los elementos usando un orden de índice similar a C, con el índice del último eje cambiando más rápido, de regreso al índice del primer eje cambiando más lento. 'F' significa leer / escribir los elementos usando un orden de índice similar a Fortran, con el primer índice cambiando más rápido y el último índice cambiando más lento. 'A' significa leer / escribir los elementos en un orden de índice similar a Fortran si a es contiguo a Fortran en la memoria, de lo contrario, en un orden similar a C  

*Retorno*: Matriz_reformada ndarray. Este será un nuevo objeto que se verá si es posible; de lo contrario, será una copia   

````python
arr.reshape(1,6)              # de (3,2) a (1,6)
array([[4, 2, 4, 8, 4, 3]])
arr.reshape(2,3)              # de (1,6) a (2,3)
array([[4, 2, 4],
       [8, 4, 3]])
np.reshape(arr,(1,6))         # de (2,3) a (1,6)
array([[4, 2, 4, 8, 4, 3]])
````

````python
np.reshape(arr,(2,3), 'C')    # ordenación like C
array([[4, 2, 4],
       [8, 4, 3]])
````

````python
np.reshape(arr,(2,3), 'F')    # ordenación like Fortran
array([[4, 4, 8],
       [4, 2, 3]])
````

````python
np.reshape(arr,(2,3), 'A')    # ordenación like Fortran, si es posible
array([[4, 2, 4],
       [8, 4, 3]])
````

No puedes cambiar la "forma" a la "forma" original del array, si tienes un (3,3) no lo puedes pasar a (4,2)  

No respeta los 9 elementos del array original  

### ***Reto***

* Crear un array, de cualquier dimensión y cambiar sus dimensiones  
* Intentar cambiar el array, de forma que no respete la estructura original  

````python
arrOrig = np.random.randint(0,100, (6,4))
arrOrig
array([[30, 49, 60, 79],
       [85,  2, 70, 41],
       [59, 65, 59, 46],
       [62, 99, 92, 56],
       [52, 30, 83, 47],
       [53, 31, 49, 15]])
arrOrig.reshape(1,24)
array([[49, 17, 97, 43, 34, 44, 88, 35, 67, 53, 67, 63, 12, 32, 16, 53,
        98, 36, 57, 18, 98, 81, 86, 62]])
arrOrig.reshape(4,6)             # todavía respeta la estructura original
array([[54, 57, 49, 93, 27, 28],
       [ 3, 23, 12, 32, 94, 54],
       [41, 39, 59, 46, 52, 43],
       [94, 74, 66, 69, 75, 30]])
arrOrig.reshape(3,3)             # no respeta la estructura original

---------------------------------------------------------------------------
ValueError                                Traceback (most recent call last)
<ipython-input-29-c1adfccb2a81> in <module>
      3 arrOrig.reshape(1,24)
      4 arrOrig.reshape(4,6)
----> 5 arrOrig.reshape(3,3)

ValueError: cannot reshape array of size 24 into shape (3,3)
````
