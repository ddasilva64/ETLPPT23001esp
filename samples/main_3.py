'''

programa de AlejandraLucer1

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