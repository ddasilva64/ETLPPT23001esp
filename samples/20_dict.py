'''
Código:   vigésimo ejemplo
Utilidad: diccionarios
          (inserción y actualización)

'''

print('-' * 10, 'definición diccionario', '-' * 10)
person = {
  'name': 'nico',
  'last_name': 'molina',
  'langs': ['python', 'javascript'],
  'age': 99
}

print(person)

print('-' * 10, 'modificación valores elementos diccionario', '-' * 10)
person['name'] = 'santi'
person['age'] -= 50
person['langs'].append('rust')
print(person)

print('-' * 10, 'eliminación valores elementos diccionario', '-' * 10)
del person['last_name']
person.pop('age')

print(person)

print('-' * 10, 'elementos diccionario', '-' * 10)
print('items')
print(person.items())

print('-' * 10, 'claves diccionario', '-' * 10)
print('keys')
print(person.keys())

print('-' * 10, 'valores diccionario', '-' * 10)
print('values')
print(person.values())