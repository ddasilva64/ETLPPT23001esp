'''

programa de JhonMartinez4

'''

import random

option = ['Piedra', 'Papel', 'Tijera']
computer_selection = random.choice(option)
user_count = 0
computer_count = 0
round_count = 1
computer_win = 'El computador gana la ronda'
user_win = 'El jugador gana la ronda'

print("La 3ra es la vencida")

while round_count < 4:
  print(f'Ronda {round_count}')
  user_selection = (input('Piedra, Papel o Tijera: ')).title()
  if user_selection in option:
      print(f'La computadora seleccionó {computer_selection}')
      print(f'El jugador seleccionó {user_selection}')
  else:
      print('Selecciona una opción valida')
      continue
  user_selection_position = option.index(user_selection)
  computer_selection_position = option.index(computer_selection)
  if user_selection_position == computer_selection_position:
    print(f'Empate en la ronda {round_count}')
  elif user_selection_position == 2 and computer_selection_position == 0:
    print(f'{computer_selection} gana a {user_selection}')
    print(f'{computer_win} {round_count}')
    computer_count += 1
  elif user_selection_position == 0 and computer_selection_position == 2:
    print(f'{user_selection} gana a {computer_selection}')
    print(f'{user_win} {round_count}')
    user_count += 1
  elif user_selection_position < computer_selection_position:
    print(f'{computer_selection} gana a {user_selection}')
    print(f'{computer_win} {round_count}')
    computer_count += 1
  else:
    print(f'{user_selection} gana a {computer_selection}')
    print(f'{user_win} {round_count}')
    user_count += 1
  round_count += 1
  print(f'El jugador lleva {user_count} puntos y el computador {computer_count} puntos')
if user_count == computer_count:
  print("El juego termina en empate")
elif user_count < computer_count:
  print("El computador gana el juego")
else:
  print("El jugador gana el juego")