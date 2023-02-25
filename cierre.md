# Cierre

Esta clase es especial. Antes de aplicarlo a nuestro juego, quiero que te tomes un tiempo para acceder y conocer algunos proyectos que han creado otros estudiantes, quienes ya finalizaron el curso.

````python

'''

programa de AlejandraLucer1

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
  
  ````


![Ejecución del programa desde el shell](https://i.imgur.com/N0mvsxK.png)

El programa se adjunta en el repositorio como main_2.py

````python

'''

programa de @FranciscoDiaz22

'''

import random

options= ('piedra','papel','tijera')

com_wins=0
player_wins=0
round=1

print('¡Hola! Juguemos "piedra, papel o tijera"')

while True:
  max_wins=input('¿Hasta el mejor de cuánto deseas jugar? => ')
  
  if not max_wins.isdigit():
    print('*'*10)
    print('¡Elegiste una opción no valida! Vuelve a intentarlo')
    continue
    
  if max_wins.isdigit():
    max_wins=int(max_wins)
    print('*'*10)
    print(f'Jugaremos hasta el mejor de {max_wins}')
    break
      
while True:
  print('*'*10)
  print('ROUND',round)
  print('*'*10)
  print(f'Hasta ahora el balance va: Jugador {player_wins} - Computadora {com_wins}')
  
  player_option = input('Escoje ¿piedra, papel o tijera? => ')
  player_option=player_option.lower()
  
  round+=1
  
  if not player_option in options:
    print('*'*10)
    print('¡Elegiste una opción no valida! Vuelve a intentarlo')
    continue
    
  com_option = random.choice(options)
  
  print('*'*10)
  print(f'El jugador eligió {player_option.capitalize()} y la computadora optó por {com_option.capitalize()}')
  
  if player_option == com_option:
    print ('¡Es un empate!')
    
  elif player_option =='piedra' and com_option	=='tijera':
    print ('¡Gana el jugador!') 
    player_wins+=1
  
  elif player_option =='papel' and com_option	=='piedra':
    print ('¡Gana el jugador!')
    player_wins+=1
  
  elif player_option =='tijera' and com_option	=='papel':
    print ('¡Gana el jugador!')
    player_wins+=1
  
  else:
    print ('¡Gana la computadora!')
    com_wins+=1
  
  if com_wins==max_wins:
    print('*'*10)
    print('El ganador final es: ¡La computadora! ... mejor suerte para la próxima')
    break
  
  if player_wins==max_wins:
    print('*'*10)
    print('El ganador final es: ¡El jugador! ... veo que tienes suerte eh')
    break

````

![Ejecución del programa desde el shell](https://i.imgur.com/W0bgX0W.png)

El programa se adjunta en el repositorio como main_3.py

````python

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

````

![Ejecución del programa desde el shell][Imgur](https://i.imgur.com/FS792Y0.png)

El programa se adjunta en el repositorio como main_4.py

Proyectos que te permitirán reconocer tu propio avance, así como saber qué elementos o visiones no consideraste, siendo el momento indicado para incluirlos y una oportunidad de implementación hacia un proyecto o iniciativa a futuro en tu contexto más cercano.

Recuerda que la experimentación, validación y ajustes te ayudan a entender constantemente tu proceso ¡Deja de lado el miedo a errar, que es parte de la experiencia, y disfruta experimentar en todo momento!

No olvides compartir tu proyecto; los demás también podrán aprender de tu resultado

## Proyecto: aplicando ciclos

````python

'''

programa de Nicolás Molina

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

    print('computer_wins', computer_wins)
    print('user_wins', user_wins)

    user_option = input('piedra, papel o tijera => ')
    user_option = user_option.lower()

    rounds += 1

    if not user_option in options:
      print('esa opcion no es valida')
      continue

    computer_option = random.choice(options)

    print('User option =>', user_option)
    print('Computer option =>', computer_option)

    if user_option == computer_option:
        print('Empate!')
    elif user_option == 'piedra':
        if computer_option == 'tijera':
            print('piedra gana a tijera')
            print('user gano!')
            user_wins += 1
        else:
            print('Papel gana a piedra')
            print('computer gano!')
            computer_wins += 1
    elif user_option == 'papel':
        if computer_option == 'piedra':
            print('papel gana a piedra')
            print('user gano')
            user_wins += 1
        else:
            print('tijera gana a papel')
            print('computer gano!')
            computer_wins += 1
    elif user_option == 'tijera':
        if computer_option == 'papel':
            print('tijera gana a papel')
            print('user gano!')
            user_wins += 1
        else:
            print('piedra gana a tijera')
            print('computer gano!')
            computer_wins += 1

    if computer_wins == 2:
      print('El ganador es la computadora')
      break

    if user_wins == 2:
      print('El ganador es el usuario')
      break

````

![Ejecución del programa desde el shell][Imgur](https://i.imgur.com/WX7m5Ol.png)

El programa se adjunta en el repositorio como main_5.py

[Python 101 - Versión del curso del profesor Nicolás Molina](https://replit.com/@NicolasMolina13/Python-101)

Adjunto en mi repositorio dos proyectos alternativos, sencillos, pero útiles:
1. Cálculo del dígito de control del DNI español
2. Cálculo de los festivos, en España, de la Semana Santa (utilizo el algoritmo de Gauss)
