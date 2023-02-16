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