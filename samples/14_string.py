'''
Código:   decimocuarto ejemplo
Utilidad: métodos de strings
'''

text = 'Ella sabe programar en Python'

# método in
print('-' * 10, 'método in', '-' * 10)

print('JavaScript' in text)
print('Python' in text)

if 'JS' in text:
  print('Has elegido bien!!')
else:
  print('También has elegido bien')

# método len
print('-' * 10, 'método len', '-' * 10)
size = len(text)
print(size)

# método upper
print('-' * 10, 'método upper', '-' * 10)
print(text.upper())

# método lower
print('-' * 10, 'método lower', '-' * 10)
print(text.lower())

# método count
print('-' * 10, 'método count', '-' * 10)
print(text.count('a'))

# método swapcase
print('-' * 10, 'método swapcase', '-' * 10)
print(text.swapcase())

# método startswith
print('-' * 10, 'método startswith', '-' * 10)
print(text.startswith('Ella'))

# método endswith
print('-' * 10, 'método endswith', '-' * 10)
print(text.endswith('Rust'))

# método replace
print('-' * 10, 'método replace Python por Go', '-' * 10)
print(text.replace('Python', 'Go'))

text_2 = 'este es un titulo'
print(text_2)

# método capitalize
print('-' * 10, 'método capitalize', '-' * 10)
print(text_2.capitalize())

# método title
print('-' * 10, 'método title', '-' * 10)
print(text_2.title())

# método isdigit
print('-' * 10, 'método isdigit', '-' * 10)
print(text_2.isdigit())
print("398".isdigit())