'''
Código:   decimotercer ejemplo
Utilidad: manejo de condicional
'''

# if
print('-' * 10, 'if', '-' * 10)
if True:
  print('deberá ejecutarse')

if False:
  print('nunca se ejecuta')

# un ejemplo
print('-' * 10, 'un ejemplo', '-' * 10)
pet = input('¿Cuál es tu mascota favorita? ')
if pet == 'perro':
  print('genial tienes buen gusto')
elif pet == 'gato':
  print('espero tengas suerte')
elif pet == 'pez':
  print('eres lo maximo')
else:
  print('no tienes ninguna mascota interesante')

# otro ejemplo
print('-' * 10, 'otro ejemplo', '-' * 10)
stock = int(input('Introduce el stock => '))
if stock >= 100 and stock <= 1000:
  print('el stock es correcto')
else:
  print('el stock es incorrecto')

# validación pares-impares
print('-' * 10, 'validación pares-impares', '-' * 10)
number = int(input('Escriba un numero => '))
result = number % 2
if (result == 0):
  print('Es par')
else:
  print('Es impar')

# un bloque de instrucciones puede contener varias instrucciones. Todas las instrucciones del bloque deben tener el mismo sangrado:
print('-' * 10, 'bloque de instrucciones', '-' * 10)
edad = int(input("¿Cuántos años tiene? "))
if edad < 18:
    print("Es usted menor de edad")
    print("Recuerde que está en la edad de aprender!")
elif edad >=59:
    print("Es usted un viejo, carajo!")
    print("Recuerde que nunca debe parar de aprender!")
else:
    print("Es usted mayor de edad")
    print("Recuerde que debe seguir aprendiendo!")
print("See you later, aligator, dubidu, dubidu...")

# Índice de masa corporal 
print('-' * 10, 'IMC', '-' * 10)
mySerie = "10.000"
myName  = "JCN"
presentation = "Hola soy " + myName + "\nSoy un computador de la serie " + mySerie + "\nLe voy a indicar su IMC mediante un algoritmo.\nIntroduzca sus datos, según se los vaya pidiendo, por favor..."
print(presentation)
nombre = input("Introduzca su nombre, por favor ")
altura = float (input(nombre + ' introduzca su altura (en m), por favor '))
peso   = float (input(nombre + ' introduzca su peso (en Kg), por favor '))
 
imc = round(peso/altura**2)
 
print("Su IMC es de " + str(imc))

if imc<16:
  salida = nombre + ":\nPosiblemente usted padece algún trastorno grave.\nSe aconseja su ingreso inmediato en el hospital."
elif imc<17:
  salida =nombre + ":\nUsted tiene infrapeso, esto no es normal.,\nSe aconseja que se comunique inmediatamente con su médico."
elif imc<18:
  salida = nombre + ":\nUsted tiene un peso muy bajo, seguramente padece algún tipo de desnutrición.\nSe aconseja que se comunique inmediatamente con su médico y con su nutricionista."
elif imc<25:
  salida = nombre + ":\nUsted tiene un peso perfecto, seguramente cuida su nutrición y ejercicio físico.\nUsted tiene un IMC perfecto, enhorabuena."
elif imc<30:
  salida = nombre + ":\nUsted tiene sobrepeso (obesidad de grado I), seguramente debido a hábitos poco saludables de alimentación y falta de ejercio físico.\nSe aconseja que se comunique inmediatamente con su médico y con su nutricionista."
elif imc<35:
  salida = nombre + ":\nUsted tiene obesidad (obesidad de grado II), seguramente debido a hábitos poco saludables de alimentación y falta de ejercio físico, durante un tiempo prolongado.\nSe aconseja que se comunique inmediatamente con su médico y con su nutricionista."
elif imc<40:
  salida = nombre + ":\nUsted tiene obesidad mórbida (obesidad de grado III), su situación es de riesgo muy serio para su salud.\nSe aconseja que se comunique inmediatamente con su médico."
elif imc>=40:
  salida = nombre + "\nUsted tiene obesidad mórbida seria (obesidad de grado IV), padece algún trastorno grave.\nSe aconseja su ingreso inmediato en el hospital."
else:
  salida = nombre + " ha cometido algún error al introducir sus datos de altura o peso."

salida = salida + '\nGracias.'

print (salida)
 

