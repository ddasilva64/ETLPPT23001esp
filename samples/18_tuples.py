'''
Código:   decimooctavo ejemplo
Utilidad: tuplas

'''

print('-' * 10, 'tuplas', '-' * 10)
numbers = (1, 2, 3, 5)
strings = ('nico', 'zule', 'santi', 'nico')
print(numbers)
print('0 =>', numbers[0])
print('-1 =>', numbers[-1])
print(type(numbers))

print('-' * 10, 'tipo tupla', '-' * 10)
print(strings)
print(type(strings))

# No es posible hacer CRUD sobre una tupla
# numbers.append(10)
print(numbers)
# numbers[1] = 'change'

print(strings)
print(strings.index('zule'))
print(strings.count('nico'))

print('-' * 10, 'convertimos tupla a lista para modificar la tupla', '-' * 10)
my_list = list(strings)
print(my_list)
print(type(my_list))

print('-' * 10, 'modificamos la lista', '-' * 10)
my_list[1] = 'juli'
print(my_list)

print('-' * 10, 'convertimos lista a tupla', '-' * 10)
my_tuple = tuple(my_list)
print(my_tuple)