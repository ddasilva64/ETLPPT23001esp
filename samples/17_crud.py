'''
Código:   decimoséptimo ejemplo
Utilidad: métodos de listas
          CRUD = Create, Read, Update & Delete

'''

print('-' * 10, 'crear, añadir, modificar', '-' * 10)
numbers = [1, 2 , 3 , 4 , 5]
print(numbers[1])                # mostrar primer elemento
numbers[-1] = 10                 # modificar último elemento
print(numbers)
numbers.append(700)              # añadimos un elemnto
print(numbers)
numbers.insert(0, 'hola')        # insertamos un string
print(numbers)
numbers.insert(3, 'change')      # insertamos otro string
print(numbers)

print('-' * 10, 'unir de dos listas, eliminar, jugar con orden ítems', '-' * 10)
tasks = ['todo 1', 'todo 2', 'todo 3']
new_list = numbers + tasks        # unimos dos listas
print(new_list)
index = new_list.index('todo 2')  # obtenemos el índice de 1 ítem
new_list[index] = 'todo changed'  # modificamos el ítem     
print(new_list)
new_list.remove('todo 1')         # eliminamos un ítem
print(new_list)
new_list.pop()                    # eliminamos último ítem
print(new_list)
new_list.pop(0)                   # eliminamos primer ítem
print(new_list)
new_list.reverse()                # invertimos el orden de los ítems
print(new_list)

print('-' * 10, 'ordenar listas', '-' * 10)
numbers_a = [1, 4, 6, 3]          # sort lista numérica
numbers_a.sort()
print(numbers_a)
strings = ['re', 'ab', 'ed']      # sort lista alfabética
strings.sort()
print(strings)
# new_list.sort()                   # no puede ordenar lista alfanumérica