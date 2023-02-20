'''
Código:   decimosexto ejemplo
Utilidad: listas

'''

# lista numérica
print('-' * 10, 'lista numérica', '-' * 10)
numbers = [1, 2, 3, 4]
print(numbers)
print(type(numbers))
print(numbers[0])
print(numbers[:3])

# lista alfanumérica
print('-' * 10, 'lista alfanumérica', '-' * 10)
tasks = ['make a dishes', 'play videogames']
print(tasks)
print(tasks[0])
tasks[0] = 'watch platzi courses'
print(tasks)

tasks[0] = 'do the dishes'
print(tasks)

# lista de diferente tipo
print('-' * 10, 'lista de diferente tipo', '-' * 10)
types = [1, True, 'hola']
print(types)
print(True in types)
print('hola' in types)

# daría error
text = 'Hola'
# text[0] = 'W'

# listas 
print('-' * 10, 'lista', '-' * 10)
thislist = ["apple", "banana", "cherry"]
print(thislist)   # da ['apple', 'banana', 'cherry']

thislist = ["apple", "banana", "cherry", "apple", "cherry"]
print(thislist)     # da ['apple', 'banana', 'cherry', 'apple', 'cherry']

thislist = ["apple", "banana", "cherry"]
print(len(thislist))  # da 3

list1 = ["apple", "banana", "cherry"]
list2 = [1, 5, 7, 9, 3]
list3 = [True, False, False]

print(list1)    # da ['apple', 'banana', 'cherry']
print(list2)    # da [1, 5, 7, 9, 3]
print(list3)    # da [True, False, False]

list1 = ["abc", 34, True, 40, "male"]

mylist = ["apple", "banana", "cherry"]
print(type(mylist))     # da <class 'list'>


