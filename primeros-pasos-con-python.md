# Primeros pasos con Python

## ¿Por qué aprender Python?

1. **Uno de los lenguajes más queridos por los programadores**: Está entre los primeros puestos de los lenguajes mas queridos por los programadores.
2. **Es muy fácil de aprender y leer**: Tiene una sintaxis limpia y fácil de entender, lo que lo hace ideal para principiantes y para aquellos que quieren aprender a programar. No tiene las dificultades de Java, por ejemplo.
3. **Fácil depuración del código**: Posee características de depuración integradas muy fáciles de utilizar.
4. **Bien pagado y con mucha demanda labora**: Está en el top 20 de los lenguajes de programación mejor pagados, además tiene una demanda laboral muy grande, en el mundo de la tecnología.
5. **Es versátil y de propósito general**: Se utiliza en una variedad de campos, desde la Ciencia de Datos (DS) y el aprendizaje automático (o Machine Learning - ML), hasta la automatización de tareas y el desarrollo web.
6. **Amplia comunidad y gran cantidad de recursos**: Tiene una gran comunidad activa, la cual ha desarrollado una amplia variedad de bibliotecas y herramientas para facilitar el desarrollo de software.
7. **Fácil integración con otras tecnologías**: Es fácil integrarlo con otras tecnologías, como bases de datos, aplicaciones web y sistemas operativos.

### **Conclusión**

Python es un lenguaje de programación popular debido a su facilidad de uso, versatilidad y amplia comunidad. Estas características lo hacen ideal para una variedad de proyectos y para programadores a todos los niveles.

## Herramientas del curso

En el curso se usará la plataforma online Replit, la cual permite escribir código en línea sin tener que instalar nada en nuestro ordenador.

Pasos a seguir:

1. Entrar y registrarse.
2. Hacer clic en el botón "Create".
3. Seleccionar el lenguaje de programación del proyecto (Python).
4. Poner un nombre al proyecto.
5. Hacer clic en "Create Repl" y ya tenemos el entorno de programación creado.

## Herramientas de desarrollo en Python

Algunas herramientas de desarrollo son las siguientes:

* Editores de código como **Visual Studio Code**.
* **Terminal y línea de comandos** en diversos SO.
* **Jupyter Notebooks** (si decidimos hacer DS).
* **Git** para control de versiones.
* Entornos virtuales con **PIP**.
* Entornos integrados de desarrollo (IDE) como **PyCharm, Visual Studio o DataSpell**.

## Primer programa

![Hola mundo en Python](https://i.imgur.com/rPXhr1t.png)

````python
'''
Código:   primer ejemplo
Utilidad: manejo del IDE
'''

print("Hola, esto es el archivo 01")

print("Hola soy Nicolás y tengo 12 años")

# operaciones...

print(12 + 5)
print(10 - 5)
print(2 * 3)
print(8 / 2)

# Esto es un comentario
"""
varias
líneas
otra
"""
'''
varias 
llenas
'''

````

![Ejecución programa en la consola](https://i.imgur.com/1sCj5qt.png)

El programa se adjunta en el repositorio como 01_print.py

### Playgrounds: Te doy la bienvenida a los ejercicios interactivos

````python
# Para ejecutar este código presionar el clic en el botón "Ejecutar"
print("Te doy la bienvenida al Coding Playground")

# Aquí los prints que falten 👇, recuerda leer la guía 👉

print("Mi primer print")

print("30")

````

![Resultado playground](https://i.imgur.com/MPJY0wR.png)

### Variables

````python
'''
Código:   segundo ejemplo
Utilidad: manejo de variables
'''
# el espacio al final sirve para separar la cadena de salida de la de entrada
status = input("Hola, ¿cómo estás? ")
your_name = input("¿Cuál es tu nombre? ")

# concatemanos varias cadenas en la salida
print("Me alegro de que estés", status, your_name)

my_name = "Bond"
print("Yo me llamo", my_name)

my_name = "Computex " + my_name
print(my_name)

my_age = 12
print("Mi edad es", my_age, "añitos")

print("Encantado de conocerte", your_name)
````

![Ejecución programa en la consola](https://i.imgur.com/MDZBo4z.png)

El programa se adjunta en el repositorio como 02_vars.py

Desde el prompt del shell se puede ejecutar un programa en concreto con el comando python

![Ejecución programa desde el shell](https://i.imgur.com/N0wUxAI.png)

### Playgrounds: Modifica el valor de una variable

![Resultado playground](https://i.imgur.com/cVPJ1TI.png)
