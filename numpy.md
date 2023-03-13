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

      numpy.arange([start, ]stop, [step, ]dtype=Ninguno, *, like=Ninguno)

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

      numpy.zeros(shape, dtype=float, order='C', *, like=Ninguno)

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

      numpy.ones(shape, dtype=Ninguno, order='C', *, like=Ninguno)

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

      numpy.linspace(start, stop, num=50, endpoint=True, retstep=False, dtype=Ninguno, axis=0)

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

      numpy.eye(N, M=Ninguno, k=0, dtype=<class 'float'>, order='C', *, like=Ninguno)

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

      random.randint(low, high=Ninguno, size=Ninguno, dtype=int)

Parámetros: 

   * *Bajo*: Entero o tipo matriz de enteros. Números enteros más bajos (con signo) que se extraerán de la distribución (a menos que alto = Ninguno, en cuyo caso este parámetro es uno por encima del número entero más alto)  
   * *Alto*: Entero o similar a una matriz de enteros, opcional. Si se proporciona, uno encima del entero más grande (con signo) que se extraerá de la distribución (ver arriba para el comportamiento si alto = Ninguno). Si es similar a una matriz, debe contener valores enteros  
   * *Tamaño*: Entero o tupla de enteros, opcional. Forma de salida. Si la forma dada es, por ejemplo, (m, n, k), entonces se extraen m * n * k muestras. El valor predeterminado es Ninguno, en cuyo caso se devuelve un solo valor  
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

## Funciones principales de NumPy

Estas son las funciones que se utilizan normalmente, con NumPy, cuando analizamos datos  

* ***.randint()***

````python
import numpy as np

arr    = np.random.randint(1, 20, 10)

print('--- array ---')
print('array :', arr)
print('--- eof ---')

--- array ---
array : [12  3  7 16  2 15  9  6  1  1]
--- eof ---
````

* ***.shape() y reshape()***

````python
import numpy as np

arr    = np.random.randint(1, 20, 10)
matriz = arr.reshape(2,5)

print('--- array ---')
print('array :', arr)
print('shape :', arr.shape)
print('--- matriz ---')
print('matriz:', matriz)
print('shape :', matriz.shape)
print('--- eof ---')

--- array ---
array : [17 12  3 17 19 17 16  6 17  8]
shape : (10,)
--- matriz ---
matriz: [[17 12  3 17 19]
 [17 16  6 17  8]]
shape : (2, 5)
--- eof ---
````

* ***.max()***

Retorna los máximos a lo largo de un eje dado  

      ndarray.max(axis=Ninguno, out=Ninguno, keepdims=False, initial=<no value>, where=True)

| 0   | Columnas |
| :-: | :------: | 
| 1	| Filas    |  

````python
import numpy as np

arr    = np.random.randint(1, 20, 10)
matriz = arr.reshape(2,5)

print('--- array ---')
print('array :', arr)
print('shape :', arr.shape)
print('max   :', arr.max())
print('--- matriz ---')
print('matriz:', matriz)
print('shape :', matriz.shape)
print('max   :', matriz.max())
print('max-0 :', matriz.max(0))
print('max-1 :', matriz.max(1))
print('--- eof ---')

--- array ---
array : [ 3 17 11  5  9  3  4  1  6 17]
shape : (10,)
max   : 17
--- matriz ---
matriz: [[ 3 17 11  5  9]
         [ 3  4  1  6 17]]
shape : (2, 5)
max   : 17
max-0 : [ 3 17 11  6 17]
max-1 : [17 17]
--- eof ---
````

* ***.argmax()***

Retorna los índices de los valores máximos a lo largo de un eje. Muestra con un 1 dónde se encuentra el máximo en las filas o las columnas 

      numpy.argmax(array, axis=Ninguno, out=Ninguno, *, keepdims=<no value>)

````python
import numpy as np

arr    = np.random.randint(1, 20, 10)
matriz = arr.reshape(2,5)

print('--- array ---')
print('array   :', arr)
print('shape   :', arr.shape)
print('max     :', arr.max())
print('argmax  :', arr.argmax())
print('--- matriz ---')
print('matriz  :', matriz)
print('shape   :', matriz.shape)
print('max     :', matriz.max())
print('argmax  :', matriz.argmax())
print('max-0   :', matriz.max(0))
print('argmax-0:', matriz.argmax(0))
print('max-1   :', matriz.max(1))
print('argmax-1:', matriz.argmax(1))
print('--- eof ---')

--- array ---
array   : [ 5 19 12 17 11 11 16  3 19 11]
shape   : (10,)
max     : 19
argmax  : 1
--- matriz ---
matriz  : [[ 5 19 12 17 11]
           [11 16  3 19 11]]
shape   : (2, 5)
max     : 19
argmax  : 1
max-0   : [11 19 12 19 11]    # máximos en las columnas
argmax-0: [1 0 0 1 0]         # columnas con máximos (índices)
max-1   : [19 19]             # máximos en las filas
argmax-1: [1 3]               # filas con máximos (índices)
--- eof ---
````

* ***.min() y .argmin()***

De forma análoga tenemos .min() y .argmin()

````python
import numpy as np

arr    = np.random.randint(1, 20, 10)
matriz = arr.reshape(2,5)

print('--- array ---')
print('array   :', arr)
print('shape   :', arr.shape)
print('min     :', arr.min())
print('argmin  :', arr.argmin())
print('--- matriz ---')
print('matriz  :', matriz)
print('shape   :', matriz.shape)
print('min     :', matriz.min())
print('argmin  :', matriz.argmin())
print('min-0   :', matriz.min(0))
print('argmin-0:', matriz.argmin(0))
print('min-1   :', matriz.min(1))
print('argmin-1:', matriz.argmin(1))
print('--- eof ---')

--- array ---
array   : [18 12 17 10  4 18 19  3  1 14]
shape   : (10,)
min     : 1
argmin  : 8
--- matriz ---
matriz  : [[18 12 17 10  4]
           [18 19  3  1 14]]
shape   : (2, 5)
min     : 1
argmin  : 8
min-0   : [18 12  3  1  4]    # mínimos en las columnas
argmin-0: [0 0 1 1 0]         # columnas con mínimos (índices)
min-1   : [4 1]               # mínimos en las filas
argmin-1: [4 3]               # filas con mínimos (índices)
--- eof ---
````

### ***.ptp()***

Rango de valores (máximo - mínimo) a lo largo de un eje. El nombre de la función proviene del acrónimo de 'pico a pico'.
  
      numpy.ptp(a, axis=Ninguno, out=Ninguno, keepdims=<no value>)

Parámetros: 

   * *Array de entrada*: array_like. Array de entrada
   * *Eje*: Ninguno o entero o tupla de enteros, opcional. Eje a lo largo del cual encontrar los picos. Por defecto, aplana la matriz. El eje puede ser negativo, en cuyo caso cuenta desde el último hasta el primer eje. Si se trata de una tupla de enteros, se realiza una reducción en varios ejes, en lugar de en un solo eje o en todos los ejes como antes    
   * *Array de salida*: array_like. Matriz de salida alternativa, en la que colocar el resultado. Debe tener la misma forma y longitud de búfer que la salida esperada, pero el tipo de los valores de salida se convertirá si es necesario  
   * *Mantener dimensiones (keepdims)*: booleano, opcional. Si se establece en True, los ejes que se reducen y se dejan en el resultado como dimensiones con tamaño uno. Con esta opción, el resultado se transmitirá correctamente contra la matriz de entrada. Si se pasa el valor predeterminado, los *keepdims* no se pasarán al método ````.ptp```` de las subclases de ndarray, sin embargo, se pasará cualquier valor no predeterminado. Si el método de la subclase no implementa *keepdims*, se generarán excepciones  

*Retorno*: ndarray o escalar. El rango de una matriz dada: escalar si la matriz es unidimensional o una nueva matriz que contiene el resultado a lo largo del eje dado     

````python
import numpy as np

arr    = np.random.randint(1, 20, 10)
matriz = arr.reshape(2,5)

print('--- array ---')
print('array   :', arr)
print('shape   :', arr.shape)
print('min     :', arr.min())
print('argmin  :', arr.argmin())
print('max     :', arr.max())
print('argmax  :', arr.argmax())
print('ptp     :', arr.ptp())
print('--- matriz ---')
print('matriz  :', matriz)
print('shape   :', matriz.shape)
print('min     :', matriz.min())
print('argmin  :', matriz.argmin())
print('max     :', matriz.max())
print('argmax  :', matriz.argmax())
print('ptp     :', matriz.ptp())
print('min-0   :', matriz.min(0))         
print('argmin-0:', matriz.argmin(0))      
print('max-0   :', matriz.max(0))         
print('argmax-0:', matriz.argmax(0))      
print('ptp-0   :', matriz.ptp(0))
print('min-1   :', matriz.min(1))
print('argmin-1:', matriz.argmin(1))
print('max-1   :', matriz.max(1))
print('argmax-1:', matriz.argmax(1))
print('ptp-1   :', matriz.ptp(1))
print('--- eof ---')
````
````python
--- array ---
array   : [13  3  2  5 19  9 11 16 19  7]
shape   : (10,)
min     : 2
argmin  : 2
max     : 19
argmax  : 4
ptp     : 17                     # max - min = ptp; 19-2=17
````

![Puntos del array](https://i.imgur.com/sleo3dY.png)  
Puntos del array

````python
--- matriz ---
matriz  : [[13  3  2  5 19]
           [ 9 11 16 19  7]]
shape   : (2, 5)
min     : 2
argmin  : 2
max     : 19
argmax  : 4
ptp     : 17
min-0   : [9 3 2 5 7]            # mínimos en las columnas
argmin-0: [1 0 0 0 1]            # columnas con mínimos (índices)
max-0   : [13 11 16 19 19]       # máximos en las columnas 
argmax-0: [0 1 1 1 0]            # columnas con máximos (índices)
ptp-0   : [ 4  8 14 14 12]       # 13-9=4;11-3=8;16-2=14;19-5=14;19-7=12
min-1   : [2 7]                  # mínimos en las filas
argmin-1: [2 4]                  # filas con mínimos (índices)
max-1   : [19 19]                # máximos en las filas
argmax-1: [4 3]                  # filas con máximos (índices)
ptp-1   : [17 12]                # 19-2=17;19-7=12 
--- eof ---
````
![Puntos de la primera fila de la matriz](https://i.imgur.com/1aXcjb4.png)  
Puntos de la primera fila de la matriz

![Puntos de la segunda fila de la matriz](https://i.imgur.com/JN71Egq.png)  
Puntos de la segunda fila de la matriz

### ***Análisis estadístico***

### ***Ordenación - .sort() -*** 

Retorna una copia ordenada de una matriz  

      ndarray.sort(axis=-1, kind=Ninguno, order=Ninguno)

Parámetros: 

   * *Array de entrada*: array_like. Matriz a ordenar  
   * *Eje*: Entero del eje o Ninguno, opcional. Eje a lo largo del cual ordenar. Si es Ninguno, la matriz se aplana antes de ordenar. El valor predeterminado es -1, que ordena a lo largo del último eje  
   * *Tipo de ordenación*: {‘quicksort’, ‘mergesort’, ‘heapsort’, ‘stable’}, opcional. Algoritmo de clasificación. El valor predeterminado es ‘quicksort’. Tengamos en cuenta que tanto 'estable' como 'mergesort' usan timsort o radix sort bajo las cubiertas y en general, la implementación real variará con el tipo de datos. La opción 'mergesort' se mantiene por compatibilidad con versiones anteriores  
   * *Orden*: Cadena o lista de cadenas, opcional. Cuando a es una matriz con campos definidos, este argumento especifica qué campos comparar primero, segundo, etc. Un solo campo se puede especificar como una cadena y no es necesario especificar todos los campos, pero los campos no especificados se seguirán utilizando, en el orden en que aparecen en el dtype, para desempatar  

*Retorno*: ndarray. Matriz ordenada, del mismo tipo y forma que el *array de entrada*       

````python
import numpy as np

arr    = np.random.randint(1, 20, 10)
matriz = arr.reshape(2,5)

print('--- array ---')
print('array             :', arr) 
print('ordenado          :', np.sort(arr))                   # ordena a lo largo del último eje
print('--- matriz ---')
print('matriz            :', matriz) 
print('ordenada-sin eje -:', np.sort(matriz, axis=None))     # ordena la matriz aplanada
print('ordenada-columnas-:', np.sort(matriz, axis=0))        # ordena a lo largo del eje y
print('ordenada-filas   -:', np.sort(matriz, axis=1))        # ordena a lo largo del eje x
print('--- eof ---')

--- array ---
array             : [ 6  2 18  3 13 14 12 18 18 12]
ordenado          : [ 2  3  6 12 12 13 14 18 18 18]
--- matriz ---
matriz            : [[ 6  2 18  3 13]
                     [14 12 18 18 12]]
ordenada-sin eje -: [ 2  3  6 12 12 13 14 18 18 18]
ordenada-columnas-: [[ 6  2 18  3 12]
                     [14 12 18 18 13]]
ordenada-filas   -: [[ 2  3  6 13 18]
                     [12 12 14 18 18]]
--- eof ---
````
````python
import numpy as np

tipos   = [('nombre', 'S10'), ('altura', float), ('edad', int)]
valores = [('Arturo', 1.82, 41), ('Ramiro', 1.65, 39),
          ('Patricio', 1.74, 38)]

print('--- matriz ---')
arr = np.array(valores, dtype=tipos)                                        # crea una matriz estructurada
print('array                  :', arr) 
print('ordenada-altura       -:', np.sort(arr, order='altura'))             # ordenación por altura   
print('ordenada-edad y altura-:', np.sort(arr, order=['edad', 'altura']))   # ordenación por edad y altura   
print('--- eof ---')

--- matriz ---
array                  : [(b'Arturo', 1.82, 41) (b'Ramiro', 1.65, 39) (b'Patricio', 1.74, 38)]
ordenada-altura       -: [(b'Ramiro', 1.65, 39) (b'Patricio', 1.74, 38) (b'Arturo', 1.82, 41)]
ordenada-edad y altura-: [(b'Patricio', 1.74, 38) (b'Ramiro', 1.65, 39) (b'Arturo', 1.82, 41)]
--- eof ---
````

### ***Percentil - .percentile() -*** 

Calcula el percentil n-ésimo de los datos a lo largo del eje especificado, retorna el(los) percentil(es) n-ésimo(s) de los elementos de la matriz  

      numpy.percentile(a, n, axis=None, out=None, overwrite_input=False, method='linear', keepdims=False, *, interpolation=None)

Parámetros: 

   * *Array de entrada*: array_like. Matriz de entrada u objeto que se puede convertir en una matriz
   * *n*: array_like de floats. Percentil o secuencia de percentiles a computar, que debe estar entre 0 y 100, ambos inclusive  
   * *Eje*: {entero, tupla de enteros, Ninguno}, opcional. Eje o ejes a lo largo de los cuales se calculan los percentiles. El valor predeterminado, es calcular los percentiles a lo largo de una versión aplanada de la matriz  
   * *Salida*: ndarray, opcional. Matriz de salida alternativa en la que colocar el resultado. Debe tener la misma forma y longitud de búfer que la salida esperada, pero el tipo (de la salida) se convertirá si es necesario 
   * *Rescribir entrada*: Booleano, opcional. Si es Verdadero, permite que la matriz de entrada a sea modificada por cálculos intermedios, para ahorrar memoria. En este caso, el contenido del array de entrada  después de que se complete esta función no está definido  
   * *Método*: Cadena, opcional. Este parámetro especifica el método a usar para estimar el percentil. Hay muchos métodos diferentes, algunos exclusivos de NumPy. Las opciones ordenadas por su tipo R son:  
      1. Invertido (discontinuo)
      2. Promedio invertido (discontinuo)
      3. Observación más cercana (discontinuo)
      4. Interpolación invertida  
      5. Hazen  
      6. Weibull  
      7. Lineal (predeterminado)  
         7.1. Más bajo  
         7.2. Más alto  
         7.3. Punto medio  
         7.4. Más cercano   
      8. Mediana imparcial  
      9. Normal imparcial  
   * *Mantener dimensiones (keepdims)*: Booleano, opcional. Si se establece en True, los ejes que se reducen y se dejan en el resultado como dimensiones con tamaño uno. Con esta opción, el resultado se transmitirá correctamente contra la matriz original *array de entrada*  
   * *Interpolación*: Cadena, opcional. Nombre en desuso (*deprecated*) para el *método*  
   
*Retorno*: escalar, ndarray. Si *n* es un percentil único y eje=Ninguno, entonces el resultado es un escalar. Si se dan varios percentiles, el primer eje del resultado corresponde a los percentiles. Los otros ejes son los ejes que quedan después de la reducción de *array de entrada*. Si la entrada contiene números enteros o flotantes más pequeños que float64, el tipo de datos de salida es float64. De lo contrario, el tipo de datos de salida es el mismo que el de entrada. Si se especifica *salida*, se devuelve esa matriz en su lugar  

**Notas**:
   Dado un vector V de longitud l, el percentil n-ésimo de V es el valor n/100 del camino desde el mínimo al máximo en una copia ordenada de V. Los valores y distancias de los dos vecinos más cercanos, así como el *método* determinará el percentil si la clasificación normalizada no coincide exactamente con la ubicación de n. Esta función es igual a la mediana si n=50, igual al mínimo si n=0 y igual al máximo si n=100  

   El *método* (opcional), especifica el modo a usar cuando el percentil deseado se encuentra entre dos índices i y j = i + 1. En ese caso, primero determinamos i + g, un índice virtual que se encuentra entre i y j, donde i es el piso y g es la parte fraccionaria del índice. El resultado final es, entonces, una interpolación de a[i] y a[j] a partir de g. Durante el cálculo de g, i y j se modifican utilizando las constantes de corrección alfa y beta cuyas opciones dependen del *método* utilizado. Finalmente, tengamos en cuenta que, dado que Python usa la indexación basada en 0, el código resta otro 1 del índice internamente  

   La siguiente fórmula determina el índice virtual i + g, la ubicación del percentil en la muestra ordenada:

     i+g=(n/100)*(n-alfa-beta+1)+alfa

   Los diferentes *métodos* funcionan de la siguiente manera:  

   1. Invertido:  
      Este *método* da resultados discontinuos:      
         * si g > 0; entonces toma j  
         * si g = 0; entonces toma i  
   2. Promedio invertido:  
      Este *método* da resultados discontinuos:  
         * si g > 0; entonces toma j  
         * si g = 0; luego promedio entre límites  
   3. Observación más cercana:  
      Este *método* da resultados discontinuos:  
         * si g > 0; entonces toma j  
         * si g = 0 y el índice es impar; entonces toma j  
         * si g = 0 y el índice es par; entonces toma i  
   4. Interpolación invertida:
      Este *método* da resultados continuos usando:  
         * alfa = 0  
         * beta = 1  
   5. Hazen:  
      Este *método* da resultados continuos usando:  
         * alfa = 1/2  
         * beta = 1/2  
   6. Weibull:
      Este *método* da resultados continuos usando:  
         * alfa = 0  
         * beta = 0  
   7. Lineal:  
      Este *método* da resultados continuos usando:  
         * alfa = 1  
         * beta = 1  
   8. Mediana_imparcial:  
      Este *método* es probablemente el mejor método si se desconoce la función de distribución de la muestra (ver referencia). Este método da resultados continuos usando:  
         * alfa = 1/3  
         * beta = 1/3  
   9. Normal imparcial:  
      Este *método* es probablemente el mejor si se sabe que la función de distribución de la muestra es normal. Este método da resultados continuos usando:  
         * alfa = 3/8  
         * beta = 3/8  
   10. Más bajo:  
      *Método* NumPy conservado por compatibilidad con versiones anteriores. Toma i como el punto de interpolación.  
   11. Más alto:  
      *Método* NumPy conservado por compatibilidad con versiones anteriores. Toma j como el punto de interpolación.  
   12. Más cercano:  
      *Método* NumPy conservado por compatibilidad con versiones anteriores. Toma i o j, lo que sea más cercano  
   13. Punto medio:  
      *Método* NumPy conservado por compatibilidad con versiones anteriores. Usa (i + j) / 2  

````python
import numpy as np

print('--- matriz ---')
arr = np.array([[10, 7, 4], [3, 2, 1]])
print(arr)

print('--- percentil 50 ---')
print(np.percentile(arr, 50))

print('--- percentil 50 sobre columnas ---')
print(np.percentile(arr, 50, axis=0))

print('--- percentil 50 sobre filas ---')
print(np.percentile(arr, 50, axis=1))

print('--- percentil 50 sobre filas, manteniendo dimensiones ---')
print(np.percentile(arr, 50, axis=1, keepdims=True))
print('--- eof ---')

--- matriz ---
[[10  7  4]
 [ 3  2  1]]
--- percentil 50 ---
3.5
--- percentil 50 sobre columnas ---
[6.5 4.5 2.5]
--- percentil 50 sobre filas ---
[7. 2.]
--- percentil 50 sobre filas, manteniendo dimensiones ---
[[7.]
 [2.]]
--- eof ---
````
### ***Mediana - .median() -*** 

Calcula la mediana a lo largo del eje especificado. Retorna la mediana de los elementos de la matriz.

      numpy.median(a, axis=None, out=None, overwrite_input=False, keepdims=False)

Parámetros: 

   * *Array de entrada*: array_like. Matriz de entrada u objeto que se puede convertir en una matriz  
   * *Eje*: {entero, secuencia de enteros, Ninguno}, opcional. Eje o ejes a lo largo de los cuales se calculan las medianas. El valor predeterminado es calcular la mediana a lo largo de una versión aplanada de la matriz  
   * *Salida*: ndarray, opcional. Matriz de salida alternativa en la que colocar el resultado. Debe tener la misma forma y longitud de búfer que la salida esperada, pero el tipo (de la salida) se convertirá si es necesario  
   * *Rescribir entrada*: Booleano, opcional. Si es Verdadero, entonces permita el uso de la memoria de la matriz de entrada a para los cálculos. La matriz de entrada será modificada por la llamada a la mediana. Esto ahorrará memoria cuando no necesite conservar el contenido de la matriz de entrada. Trate la entrada como indefinida, pero probablemente se ordenará total o parcialmente. El valor predeterminado es Falso. Si *rescribir entrada* es True y *array de entrada* no es ya un ndarray, se generará un error  
   * *Mantener dimensiones (keepdims)*: Booleano, opcional. Si se establece en True, los ejes que se reducen se dejan en el resultado como dimensiones con tamaño uno. Con esta opción, el resultado se transmitirá correctamente contra el array original

*Retorno*: mediana ndarray. Una nueva matriz que contiene el resultado. Si la entrada contiene números enteros o flotantes más pequeños que float64, el tipo de datos de salida es np.float64. De lo contrario, el tipo de datos de la salida es el mismo que el de la entrada. Si se especifica la *salida*, se devuelve esa matriz en su lugar  

````python
import numpy as np

print('--- matriz ---')
arr = np.array([[10, 7, 4], [3, 2, 1]])
print(arr)

print('mediana      :', np.median(arr))
print('mediana eje y:', np.median(arr, axis=0))
print('mediana eje x:', np.median(arr, axis=1))
print('--- eof ---')

--- matriz ---
[[10  7  4]
 [ 3  2  1]]
mediana      : 3.5
mediana eje y: [6.5 4.5 2.5]
mediana eje x: [7. 2.]
--- eof ---
````
### ***Desviación estándar - .std() -*** 

Calcula la desviación estándar a lo largo del eje especificado. Retorna la desviación estándar, una medida de la dispersión de una distribución, de los elementos de la matriz. La desviación estándar se calcula para la matriz aplanada de forma predeterminada; de lo contrario, se calcula sobre el eje especificado.   

      numpy.std(a, axis=None, dtype=None, out=None, ddof=0, keepdims=<no value>, *, where=<no value>)

Parámetros: 

   * *Array de entrada*: array_like. Calcula la desviación estándar de estos valores. Si se trata de una tupla de enteros, se realiza una desviación estándar sobre múltiples ejes, en lugar de un solo eje o todos los ejes como antes  
   * *Tipo*: dtype, opcional. Tipo a usar en el cálculo de la desviación estándar. Para matrices de tipo entero, el valor predeterminado es float64, para matrices de tipo flotante es el mismo que el tipo de matriz  
   * *Salida*: ndarray, opcional. Matriz de salida alternativa en la que colocar el resultado. Debe tener la misma forma que la salida esperada, pero el tipo (de los valores calculados) se convertirá si es necesario  
   * *Grados Delta de libertad (ddof)*: Entero, opcional. El divisor utilizado en los cálculos es n-ddof, donde n representa el número de elementos. Por defecto, *ddof* es cero  
   * *Mantener dimensiones (keepdims)*: Booleano, opcional. Si se establece en True, los ejes que se reducen se dejan en el resultado como dimensiones con tamaño uno. Con esta opción, el resultado se transmitirá correctamente contra la matriz de entrada. Si se pasa el valor predeterminado, los keepdims no se pasarán al método estándar de las subclases de ndarray, sin embargo, se pasará cualquier valor no predeterminado. Si el método de la subclase no implementa *keepdims*, se generarán excepciones  
   * *Where*: array_like de booleanos, opcional. Elementos a incluir en la desviación estándar  

*Retorno*: Desviación estándar ndarray. Si *salida* es Ninguno, devuelve una nueva matriz que contiene la desviación estándar; de lo contrario, devuelve una referencia a la matriz de salida  

````python
import numpy as np

arr = np.array([[1, 2], [3, 4]])
print('matriz                   :', arr)
print('desviación estándar      :', np.std(arr))
print('desviación estándar eje y:', np.std(arr, axis=0))
print('desviación estándar eje x:', np.std(arr, axis=1))
print('--- eof ---')

matriz                   : [[1 2]
                            [3 4]]
desviación estándar      : 1.118033988749895
desviación estándar eje y: [1. 1.]
desviación estándar eje x: [0.5 0.5]
--- eof ---
````
### ***Varianza - .var() -*** 

Calcula la varianza a lo largo del eje especificado. Retorna la varianza de los elementos de la matriz, una medida de la dispersión de una distribución. La varianza se calcula para la matriz aplanada de forma predeterminada; de lo contrario, sobre el eje especificado

      ndarray.var(axis=None, dtype=None, out=None, ddof=0, keepdims=False, *, where=True)

Parámetros: 

   * *Array de entrada*: array_like. Matriz que contiene números cuya varianza se desea. Si a no es una matriz, se intenta una conversión  
   * *Eje*: Ninguno o entero o tupla de enteros, opcional. Eje o ejes a lo largo de los cuales se calcula la varianza. El valor predeterminado es calcular la varianza de la matriz aplanada. Si se trata de una tupla de enteros, se realiza una variación sobre múltiples ejes, en lugar de un solo eje o todos los ejes como antes  
   * *Tipo*: dtype, opcional. Tipo a usar en el cálculo de la varianza. Para matrices de tipo entero, el valor predeterminado es float64; para matrices de tipos flotantes es lo mismo que el tipo de matriz  
   * *Salida*: ndarray, opcional. Matriz de salida alternativa en la que colocar el resultado. Debe tener la misma forma que la salida esperada, pero el tipo se convierte si es necesario  
   * *Grados Delta de libertad (ddof)*: Entero, opcional. El divisor utilizado en el cálculo es n-ddof, donde n representa el número de elementos. Por defecto ddof es cero  
   * *Mantener dimensiones (keepdims)*: Booleano, opcional. Si se establece en True, los ejes que se reducen se dejan en el resultado como dimensiones con tamaño uno. Con esta opción, el resultado se transmitirá correctamente contra la matriz de entrada. Si se pasa el valor predeterminado, los *keepdims* no se pasarán al método ````.var()```` de las subclases de ndarray, sin embargo, se pasará cualquier valor no predeterminado. Si el método de la subclase no implementa *keepdims*, se generarán excepciones  
   * *Where*: array_like de booleanos, opcional. Elementos a incluir en la varianza  

*Retorno*: Varianza ndarray, consultar el parámetro *tipo* anterior. Si +*alida*=Ninguno, devuelve una nueva matriz que contiene la varianza; de lo contrario, se devuelve una referencia a la matriz de salida

````python
import numpy as np

arr = np.array([[1, 2], [3, 4]])
print('matriz         :', arr)
print('varianza      :', np.var(arr))
print('varianza eje y:', np.var(arr, axis=0))
print('varianza eje x:', np.var(arr, axis=1))
print('--- eof ---')

matriz         : [[1 2]
                  [3 4]]
varianza      : 1.25
varianza eje y: [1. 1.]
varianza eje x: [0.25 0.25]
--- eof ---
````

### ***Promedio - .mean() -*** 

Calcula la media aritmética a lo largo del eje especificado. Retorna el promedio de los elementos de la matriz. El promedio se toma sobre la matriz aplanada de forma predeterminada; de lo contrario, sobre el eje especificado. Los valores intermedios y de retorno de float64 se utilizan para entradas enteras  
      
      numpy.mean(a, axis=None, dtype=None, out=None, keepdims=<no value>, *, where=<no value>)

Parámetros: 

   * *Array de entrada*: array_like. Matriz que contiene números cuya media se desea. Si a no es una matriz, se intenta una conversión  
   * *Eje*: Ninguno o entero o tupla de enteros, opcional. Eje o ejes a lo largo de los cuales se calculan las medias. El valor predeterminado es calcular la media de la matriz aplanada. Si se trata de una tupla de enteros, se realiza una media sobre múltiples ejes, en lugar de un solo eje o todos los ejes como antes  
   * *Tipo*: dtype, opcional. Tipo a usar en el cálculo de la media. Para entradas enteras, el valor predeterminado es float64; para entradas de punto flotante, es lo mismo que el tipo de entrada  
   * *Salida*: ndarray, opcional. Matriz de salida alternativa en la que colocar el resultado. El valor predeterminado es Ninguno; si se proporciona, debe tener la misma forma que la salida esperada, pero el tipo se convertirá si es necesario  
   * *Mantener dimensiones (keepdims)*: Booleano, opcional. Si se establece en True, los ejes que se reducen se dejan en el resultado como dimensiones con tamaño uno. Con esta opción, el resultado se transmitirá correctamente contra la matriz de entrada. Si se pasa el valor predeterminado, los *keepdims* no se pasarán al método medio de las subclases de ndarray, sin embargo, se pasará cualquier valor no predeterminado. Si el método de la subclase no implementa *keepdims*, se generarán excepciones  
   * *Where*: array_like de booleanos, opcional. Elementos a incluir en la media  

*Retorno*: Promedio ndarray, consultar el parámetro *tipo* anterior. Si out=Ninguno, devuelve una nueva matriz que contiene los valores medios; de lo contrario, se devuelve una referencia a la matriz de salida  

````python
import numpy as np

arr = np.array([[1, 2], [3, 4]])
print('matriz        :', arr)
print('promedio      :', np.mean(arr))
print('promedio eje y:', np.mean(arr, axis=0))
print('promedio eje x:', np.mean(arr, axis=1))
print('--- eof ---')

matriz        : [[1 2]
                 [3 4]]
promedio      : 2.5
promedio eje y: [2. 3.]
promedio eje x: [1.5 3.5]
--- eof ---
````

### ***Concatenación - concatenate() -***

Concatena arrays

      numpy.concatenate((a1, a2, ...), axis=0, out=None, dtype=None, casting="same_kind")

````python
import numpy as np

arra = np.array([[1,2], [3,4]])
arrb = np.array([5, 6])
print('matriz-a        :', arra)
print('matriz-b        :', arrab
print('--- matrices concatenadas ---')
np.concatenate((arra, arrb), axis = 0)

matriz-a        : [[1 2]
                   [3 4]]
matriz-b        : [5 6]
--- matrices concatenadas ---
---------------------------------------------------------------------------
ValueError                                Traceback (most recent call last)
<ipython-input-13-59092354a6a9> in <module>
      6 print('matriz-b        :', arrb)
      7 print('--- matrices concatenadas ---')
----> 8 np.concatenate((arra, arrb), axis = 0)

/usr/local/lib/python3.9/dist-packages/numpy/core/overrides.py in concatenate(*args, **kwargs)

ValueError: all the input arrays must have same number of dimensions, but the array at index 0 has 2 dimension(s) and the array at index 1 has 1 dimension(s)
````

El error anterior es debido a que ‘arra’ tiene 2 dimensiones, mientras que ‘arrb’ tiene 1. Debemos poner ‘b’ en 2 dimensiones también  

````python
import numpy as np

arra = np.array([[1,2], [3,4]])
arrb = np.array([5, 6])
print('matriz-a        :', arra)
arrb = np.expand_dims(arrb, axis = 0)
print('matriz-b        :', arrb)
print('--- matrices concatenadas ---')
np.concatenate((arra,arrb), axis = 0)

matriz-a        : [[1 2]
                   [3 4]]
matriz-b        : [[5 6]]
--- matrices concatenadas ---
array([[1, 2],
       [3, 4],
       [5, 6]])
````

De igual manera, podemos agregarlo en el otro eje

````python
import numpy as np

arra = np.array([[1,2], [3,4]])
arrb = np.array([5, 6])
print('matriz-a        :', arra)
arrb = np.expand_dims(arrb, axis = 0)
print('matriz-b        :', arrb)
print('--- matrices concatenadas ---')
np.concatenate((arra,arrb), axis = 0)
np.concatenate((arra,arrb), axis = 1)

matriz-a        : [[1 2]
                   [3 4]]
matriz-b        : [[5 6]]
--- matrices concatenadas ---
---------------------------------------------------------------------------
ValueError                                Traceback (most recent call last)
<ipython-input-17-c74884262a58> in <module>
      8 print('--- matrices concatenadas ---')
      9 np.concatenate((arra,arrb), axis = 0)
---> 10 np.concatenate((arra,arrb), axis = 1)

/usr/local/lib/python3.9/dist-packages/numpy/core/overrides.py in concatenate(*args, **kwargs)

ValueError: all the input array dimensions for the concatenation axis must match exactly, but along dimension 0, the array at index 0 has size 2 and the array at index 1 has size 1
````

Como ‘arrb’ es una fila y no una columna, no se puede concatenar a menos que se aplique la transpuesta.

La transpuesta pone nuestro array en sentido opuesto, si el array original es (1,2), con la transpuesta quedará (2,1)

````python
import numpy as np

arra = np.array([[1,2], [3,4]])
arrb = np.array([5, 6])
print('matriz-a            :', arra)
arrb = np.expand_dims(arrb, axis = 0)
print('matriz-b            :', arrb)
print('--- matrices concatenadas ---')
print('matriz concatenada 1:', np.concatenate((arra,arrb), axis = 0))
print('matriz-b traspuesta:', arrb.T)
print('matriz concatenada 2:', np.concatenate((arra,arrb.T), axis = 1))
print('--- eof ---')

matriz-a            : [[1 2]
                       [3 4]]
matriz-b            : [[5 6]]
--- matrices concatenadas ---
matriz concatenada 1: [[1 2]
                       [3 4]
                       [5 6]]
matriz-b traspuesta:  [[5]
                       [6]]
matriz concatenada 2: [[1 2 5]
                       [3 4 6]]
--- eof ---
````

## Copy

Retorna una copia de matriz del objeto dado, para, entre otras cosas, poder trabajar con ella, con seguridad, de tal forma que al modificar el nuevo array, los cambios no se vean reflejados en array original  

      numpy.copy(a, order='K', subok=False)

Parámetros: 

   * *Array de entrada*: array_like. Matriz de entrada      
   * *Orden*: {'C', 'F', 'A', 'K'}, opcional. Controla el diseño de la memoria de la copia. 'C' significa orden C, 'F' significa orden F, 'A' significa 'F' si *array de entrada* es contigua en Fortran, 'C' en caso contrario. 'K' significa hacer coincidir el diseño de *Array de entrada* lo más cerca posible. Tengamos en cuenta que esta función y ````ndarray.copy```` son muy similares, pero tienen diferentes valores predeterminados en su ordenación    
   * *subok*: Booleano, opcional. Si es Verdadero, las subclases se transferirán; de lo contrario, la matriz devuelta se verá obligada a ser una matriz de clase base (el valor predeterminado es Falso)   

*Retorno*: ndarray. Interpretación de matriz del *array de entrada*  

````python
arr = np.arange(0, 11)
print(arr)
array([ 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10])
````

Tomamos un segmento del array original

````python
print(arr[0:6])
array([0, 1, 2, 3, 4, 5])
segm_de_arr = arr[0:6]
````

Queremos pasar todas nuestras variables a 0

````python
segm_de_arr[:] = 0
print(segm_de_arr)
array([0, 0, 0, 0, 0, 0])
````

Se han modificado los datos del array original, porque seguía haciendo referencia a esa variable  

````python
print(arr)
array([ 0,  0,  0,  0,  0,  0,  6,  7,  8,  9, 10])
````

Con ````.copy()```` creamos una copia para no dañar nuestro array original

````python
arr_copy = arr.copy()
arr_copy[:] = 100
print(arr_copy)
array([100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100])
print(arr)
array([ 0,  0,  0,  0,  0,  0,  6,  7,  8,  9, 10])
````

Esta función nos ayudará a prevenir muchos errores y tener más confianza a la hora de manipular los datos  

## Condiciones

Las condiciones nos permiten hacer consultas más específicas  

````python
arr = np.linspace(1,10,10, dtype = 'int8')
print(arr)
array([ 1,  2,  3,  4,  5,  6,  7,  8,  9, 10], dtype=int8)
````

Retorna un array de booleanos dónde la condición se cumple  

````python
indices_cond = arr > 5
print(indices_cond)
array([False, False, False, False, False,  True,  True,  True,  True, True])
````

Retorna valores, dónde la condiciones True  

````python
print(arr[indices_cond])
array([ 6,  7,  8,  9, 10], dtype=int8)
````

Múltiples condiciones  

````python
print(arr[(arr > 5) & (arr < 9)])
array([6, 7, 8], dtype=int8)
````

Modificar los valores que cumplan la condición  

````python
arr[arr > 5] = 99
print(arr)
array([ 1,  2,  3,  4,  5, 99, 99, 99, 99, 99], dtype=int8)
````
## Operaciones

Existen diferentes operaciones que se pueden hacer en NumPy  

````python
print(lista = [1,2])
[1, 2]
````

Una lista de Python entiende que quieres duplicar los datos. No es lo que buscamos   

````python
print(lista * 2) 
[1, 2, 1, 2]
````

Pero Numpy lo entiende mucho mejor

````python
arr = np.arange(0,10)
arr2 = arr.copy()
print(arr)
array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
````

Ahora multiplicamos por un vector:

````python
print(arr * 2)
array([ 0,  2,  4,  6,  8, 10, 12, 14, 16, 18])
````

Operación suma de vectores:

````python
print(arr + 2) 
array([ 2,  3,  4,  5,  6,  7,  8,  9, 10, 11])
````

División con un vector

Como en este caso la primera posición del array es 0, muestra un error pero, no detiene el proceso  

````python
1 / arr

RuntimeWarning: divide by zero encountered in true_divide
  """Entry point for launching an IPython kernel.
  
array([    inf,   1.  , 0.5 , 0.33333333, 0.25 ,0.2, 0.16666667, 0.14285714, 0.125 , 0.11111111])
````

Elevar a un vector:

````python
print(arr**2)
array([ 0,  1,  4,  9, 16, 25, 36, 49, 64, 81])
````

Sumar dos arrays de igual dimensiones las hace elemento por elemento:  

````python
print(arr + arr2)
array([ 0,  2,  4,  6,  8, 10, 12, 14, 16, 18])
````

Lo mismo aplica para matrices  

````python
matriz = arr.reshape(2,5)
matriz2 = matriz.copy()
print(matriz)
array([[0, 1, 2, 3, 4],
       [5, 6, 7, 8, 9]])
print(matriz - matriz2)
array([[0, 0, 0, 0, 0],
       [0, 0, 0, 0, 0]])
````

Una operación importante es la de punto por punto, aquí dos formas de hacerla:  

````python
print(np.matmul(matriz, matriz2.T))
array([[ 30,  80],
       [ 80, 255]])
print(matriz @ matriz2.T)
array([[ 30,  80],
       [ 80, 255]])
````


