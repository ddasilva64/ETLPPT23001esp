'''
Código:   séptimo ejemplo
Utilidad: transformación de tipos
'''

# f es int, g es string
f = 5
g = "hola"

# casting de int y de float a string
print('----------- casting de int y float a strings, para hacer print() -----------')
j = 6
k = 4.456734
print("j = ", str(j),"\nk = ", str(k))

# casting de string a float
print('----------- casting de string a float, para almacenar valores -----------')
c = "15.21"
v = "16.672354"
b = float(c) + float(v)
print(b)

# devuelve  0x10
print('----------- 16 en hex es 0x10 -----------')
print(hex(16))   

# devuelve -0x12a
print('----------- -298 en hex es -0x12a -----------')
print(hex(-298))

# devuelve  0x21f
print('----------- 543 en hex es 0x21f -----------')
print(hex(543))   

# cambios de tipos
print('----------- cambios de tipos -----------')
name = 'Nicolas'
print(type(name))
name = 12
print(type(name))
name = True 
print(type(name))

# print() con datos del mismo o diferente tipo int + string peta, por ejmplo
print('----------- el operador + sabe operar datos del mismo tipo -----------')
print('Nicolas' + ' Molina')
print(10+20)
print('Nicolas' + '12')

# la sustitución en una cadena (plantilla), convierte a string todo y no hay problema
print('----------- sustitución en cadena -----------')
age = 12
print('Mi edad es ' + str(age))
print(type(age))
print(f'Mi edad es {age}')

# cast de un input, que siempre devuelve string
print('----------- cast de un input -----------')
age = input('Escribe tu edad => ')
print(type(age))
age = int(age)     # No podemos hacer el cast, si el valor de age es string, p.e. "Nicolas"
age += 10
print(f'Tu edad en 10 años será {age}')
