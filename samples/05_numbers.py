'''
Código:   quinto ejemplo
Utilidad: manejo de números
'''

# declaraciones
lives = 3
age = 12
budget = 100
temperature = 12.12
budgetJan = 100
budgetFeb = 101
budgetMar = 102
budgetApr = 103
budgetMay = 104
budgetJun = 105
budgetJul = 106
budgetAug = 107
budgetSet = 108
budgetOct = 109
budgetNov = 110
budgetDec = 111

# tipo entero
print('----------- tipos de datos -----------')
print(type(lives))
print(type(temperature))

# cambio de valores
print('----------- cambio de valores -----------')
lives = 2
print(lives)
lives = 1
print(lives)

# operaciones aritméticas
print('----------- operaciones aritméticas -----------')
lives = 12 + 15
print(lives)
lives = lives - 1
print(lives)
lives -= 1
print(lives)
lives -= 5
print(lives)
lives += 5
print(lives)

# notación científica
print('----------- notación científica -----------')
number = 4500000000000000000.1
print(number)
number_b = 0.0000000000000001
print(number_b)

# cálculo del budget promedio anual
print('----------- budget promedio anual -----------')
promedio = (budgetJan+budgetFeb+budgetMar+budgetApr+budgetMay+budgetJun+budgetJul+budgetAug+budgetSet+budgetOct+budgetNov+budgetDec)/12
print(promedio)

# cálculo del teorema de Pitágoras (importamos biblioteca para raíz cuadrada)
print('----------- cálculo del teorema de Pitágoras (importamos biblioteca para raíz cuadrada) -----------')
from math import sqrt
c1 = 5
c2 = 3
hy = sqrt(c1**2 + c2**2)
print(hy)
hy = (c1**2 + c2**2)**0.5
print(hy)

# cálculo de la energía de una masa en gramos (E=mc2)
print('----------- cálculo de la energía de una masa en gramos (E=mc2) -----------')
masa = float(input("Introduzca su gato en la consola energética y ponga su peso (en Kg), por favor: "))
Kg   = masa / 1000
c = 3 * 10 ** 8 
E = Kg * c ** 2 
TE = E / 10**12
print("Qué le pasa???, ese era su gato!!! :-(,\nlo ha convertido en ",TE,"TJ (Tera Julios),\ngo to Hell!!!\nVoy a intentar arreglar este bullshit...\nMire la consola...\nWhat a fuck!!!")
gato = input("¿Cómo se llama su GATO? ") 
E = TE * 10**12
Kg = E / c ** 2 * 1000
print("He recuperado a", gato, "que pesa", Kg, "Kg\nPero no lo veuelva a hacer!!!,\nLEA, PONE: NO TOCAR!!!\nThat\'s a joke!!!\nNOTICE: En la realización de este programa no se ha maltratado ningún gato.")