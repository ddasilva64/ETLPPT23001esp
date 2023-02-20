'''
Código:   decimoquinto ejemplo
Utilidad: indexing y slicing de strings
          (revisar 04_string.py)
'''

text = "Ella sabe Python"

# indexing string
print('-' * 10, 'indexing string', '-' * 10)
print(text[0])
print(text[1])

# print(text[999]) # daría error

# indexing última posición string
print('-' * 10, 'indexing última posición string', '-' * 10)
size = len(text)
print('size => ',size)
print(text[size - 1])
print(text[-1])

# slicing substring desde el principio
print('-' * 10, 'slicing string desde el principio', '-' * 10)
print(text[0:5])

# slicing substring palabra
print('-' * 10, 'slicing string desde el principio', '-' * 10)
print(text[10:16])

# slicing substring comienzo
print('-' * 10, 'slicing string comienzo', '-' * 10)
print(text[:10])

# slicing substring desde una posición hacia atrás (no incluye úlimo)
print('-' * 10, 'slicing string desde una posición hacia atrás (no incluye úlimo)', '-' * 10)
print(text[5:-1])

# slicing substring desde final
print('-' * 10, 'slicing string desde final', '-' * 10)
print(text[5:])

# slicing toda la cadena
print('-' * 10, 'slicing toda la cadena', '-' * 10)
print(text[:])

# slicing subcadena con salto de un carácter
print('-' * 10, 'slicing subcadena con salto de un carácter', '-' * 10)
print(text[10:16:1])

# slicing subcadena con salto de dos carácteres
print('-' * 10, 'slicing subcadena con salto de dos carácteres', '-' * 10)
print(text[10:16:2])

# slicing toda la cadena con salto de dos carácteres
print('-' * 10, 'slicing toda la cadena con salto de dos carácteres', '-' * 10)
print(text[::2])