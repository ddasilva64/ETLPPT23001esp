'''
Código:   vigésimotercer ejemplo
Utilidad: for anidados

'''

print('-' * 10, 'bucle for anidado', '-' * 10)
matriz = [
  [1,2,3],
  [4,5,6],
  [7,8,9]
]
print(matriz[0][1])

for row in matriz:
  print(row)
  for column in row:
    print(column)


print('-' * 10, 'otro de bucles for anidados', '-' * 10)
adj = ["red", "big", "tasty"]
fruits = ["apple", "banana", "cherry"]

for x in adj:
  for y in fruits:
    print(x, y)
