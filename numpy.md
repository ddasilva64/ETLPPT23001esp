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

````python
matriz = np.array([[1, 2, 3], [4, 5, 6]]) # Declaración de una matriz
print(matriz)
matriz.ndim
[[1 2 3]
 [4 5 6]]
2
````

### ***Tensor (cubo)***

Son series de tiempo o imágenes

![Tensor](https://i.imgur.com/hjZGVy5.png)

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

### ***Reto***

1. Definir un tensor (cubo) de 5D  
2. Sumarle una dimensión en cualquier eje  
3. Borrar las dimensiones que no se usen  

Cuéntanos, ¿Cómo te fue y cómo lo solucionaste?  



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

