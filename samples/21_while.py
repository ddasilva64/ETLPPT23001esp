'''
Código:   vigésimoprimer ejemplo
Utilidad: while

'''

'''

esto sería un bucle infinito

while true:
  print('se ejecutó)

'''

print('-' * 10, 'bucle while', '-' * 10)
counter = 0
while counter < 10:
  counter += 1
  print(counter)

print('-' * 10, 'break', '-' * 10)
counter = 0
while counter < 20:
  counter += 1
  if counter == 15:
    break
  print(counter)

print('-' * 10, 'continue', '-' * 10)
counter = 0
while counter < 20:
  counter += 1
  if counter < 15:
    continue
  print(counter)

print('-' * 10, 'else', '-' * 10)
i = 1
while i < 6:
  print(i)
  i += 1
else:
  print("i ya no es menor que 6")