'''
Código:   undécimo ejemplo
Utilidad: manejo operadores lógicos

'''

# operador AND
print('-' * 10, 'AND', '-' * 10)
print('True and True =>', True and True)
print('True and False =>', True and False)
print('False and True =>', False and True)
print('False and False =>', False and False)

print(10 > 5 and 5 < 10)
print(10 > 5 and 5 > 10)

stock = input('Ingrese el numero de stock => ')
stock = int(stock)

print(stock >= 100 and stock <= 1000)

# operador OR
print('-' * 10, 'OR', '-' * 10)
print('True or True =>', True or True)
print('True or False =>', True or False)
print('False or True =>', False or True)
print('False or False =>', False or False)

role = input('Digita el rol => ')

print(role == 'admin' or role == 'seller')

# operador NOT
print('-' * 10, 'NOT', '-' * 10)
x = 5
print(not(x > 3 and x < 10)) # devuelve False porque not se usa para invertir el resultado