'''
Código:   vigésimosegundo ejemplo
Utilidad: for

'''

print('-' * 10, 'bucle for recorriendo una lista', '-' * 10)
my_list = [23, 45, 67, 89, 43]
for element in my_list:
  print(element)

print('-' * 10, 'bucle for recorriendo una tupla', '-' * 10)
my_tuple = ['nico', 'juli', 'santi']
for element in my_tuple:
  print(element)

print('-' * 10, 'bucle for recorriendo un diccionario', '-' * 10)
product = {
  'name': 'Camisa',
  'price': 100,
  'stock': 89
}
for key in product:
  print(key, '=>', product[key])

for key,value in product.items():
  print(key, '=>', value)

print('-' * 10, 'bucle for recorriendo string', '-' * 10)
for x in "banana":
  print(x)

print('-' * 10, 'bucle for recorriendo una lista de diccionarios \n(muchos servidores devuelven esto)', '-' * 10)
people = [
  {
    'name': 'nico',
    'age': 34
  },
  {
    'name': 'zule',
    'age': 45
  },
  {
    'name': 'santi',
    'age': 4
  }
]

for person in people:
  print('name => ', person['name'])

print('-' * 10, 'bucle for con brak', '-' * 10)
fruits = ["apple", "banana", "cherry"]
for x in fruits:
  if x == "banana":
    break
  print(x)

print('-' * 10, 'bucle for con continue', '-' * 10)
fruits = ["apple", "banana", "cherry"]
for x in fruits:
  if x == "banana":
    continue
  print(x)

print('-' * 10, 'bucle for con range() comenzando por 0', '-' * 10)
for elemento in range(20):
  print(elemento)

print('-' * 10, 'bucle for con range() comenzando por 1', '-' * 10)
for elemento in range(1, 20):
  print(elemento)

print('-' * 10, 'bucle for con range() incrementando de 3 en 3', '-' * 10)
for x in range(2, 30, 3):
  print(x)

print('-' * 10, 'bucle for con else', '-' * 10)
for x in range(6):
  print(x)
else:
  print("Finally finished!")


print('-' * 10, 'bucles for con pass', '-' * 10)
for x in [0, 1, 2]:
  pass