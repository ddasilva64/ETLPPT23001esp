'''

programa de @Danielda35

'''

import random

options = ('piedra', 'papel', 'tijera')

computer_wins = 0
user_wins = 0

rounds = 1

while True:

  print('*' * 10)
  print('ROUND', rounds)
  print('*' * 10)

  print('Puntos de la computadora', computer_wins)
  print('Tus puntos', user_wins)

  user_option = input('piedra, papel o tijera => ')
  user_option = user_option.lower()

  rounds += 1
  
  #RULES
  
  if not user_option in options:
    print('Elige una opción válida')
    continue
  
  computer_option = random.choice(options)
  
  print('Tu elección=>', user_option)
  print ('Elección del pc=>', computer_option)
  
  if user_option == computer_option:
    print('Empate')
  elif user_option == 'piedra':
    if computer_option == 'tijera':
      print('piedra gana a tijera')
      print ('gana usuario')
      user_wins += 1
    else:
      print ('papel gana a piedra')
      print ('gana computer')
      computer_wins += 1
  elif user_option == 'papel':
    if computer_option == 'piedra':
      print('papel gana piedra')
      print ('gana usuario')
      user_wins +=1
    else:
      print('tijera gana a papel')
      print('gana computer')
      computer_wins += 1
  elif user_option == 'tijera':
    if computer_option == 'papel':
      print ('tijera gana a papel')
      print('gana usuario')
      user_wins +=1
    else:
      print('piedra gana a tijera')
      print('gana computer')
      computer_wins += 1

  if computer_wins == 3:
    print('La computadora logró', computer_wins, 'puntos')
    print('La computadora ganó la partida')
    break

  if user_wins == 3:
    print('Lograste', user_wins, 'puntos')
    print('Ganaste la partida')
    break
  