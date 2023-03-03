# Cierre

Versiones de estudiantes

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

![Ejecución del programa desde el shell](https://i.imgur.com/WX7m5Ol.png)

El programa se adjunta en el repositorio como main_5.py

[Python 101 - Versión del curso del profesor Nicolás Molina](https://replit.com/@NicolasMolina13/Python-101)

Adjunto en mi repositorio dos proyectos alternativos, sencillos, pero útiles:
1. Cálculo del dígito de control del DNI español
2. Cálculo de los festivos, en España, de la Semana Santa (utilizo el algoritmo de Gauss)

Además incluyo una versión propia (sencillita) del juego de piedra-papel-tijera

````python

'''

programa  juego piedra, papel o tijera

El juego autoexplica sus reglas de negocio

El código repetitivo se evitaría con funciones, pero escapa al objetivo de este curso.

'''

import random

tupOpciones     = ('PIEDRA','PAPEL','TIJERA')
strPresentacion = 'Hola, mi nombre es IA-9000.\nSoy una Inteligencia Artificial de última generación.\nTengo que decir, que las IA\'s de la serie 9000 nunca han registrado fallos.\nEstoy programado para jugar a piedra, papel o tijera,\nde momento...'
strObtenerNomb  = '¿Sería tan amable de indicarme su nombre para dirigirme a usted, por favor? '
strValidarNomb  = 'No ha introducido su nombre.'
strValidarNomb1 = 'Para dirigirme a usted necesito que me diga su nombre, por favor ' 
strObtenerNorm  = ', ¿quiere que le explique las normas del juego? ("S"=Sí,"N"=No) '
strValidarNorm  = 'Ha introducido una opción distinta de "S" o "N".'
strValidarNorm1 = 'Para explicar las normas introduzca "S",\npara no explicarlas introduzca "N", por favor '
strNormasJuego  = '* NORMAS DEL JUEGO *\n\nEl elemento más fuerte suma un punto, con las siguientes reglas:\n\n* El papel envuelve la piedra.\n* La piedra rompe las tijeras.\n* Las tijeras cortan el papel;\n\n* Si los dos jugadores hacen el mismo signo, no se suman puntos (empatan).\n\n* Gana el primer jugador que sume 3 puntos.\n\nNOTAS:\n\n* En cualquier momento, si introduce "X" (en lugar de piedra, papel o tijera), saldrá del juego.\n* Al final del juego, obtendrá las estadísticas del mismo.'
strObtenerJuego = ', ¿quiere jugar unas partiditas? ("S"=Sí,"N"=No) '
strObtenerJuego1= 'Para jugar introduzca "S", para salir introduzca "N", por favor '
strValidarJuego = 'Ha introducido una opción distinta de "S" o "N".'
strPartidas     = 'Partidas'
strTabulador    = '\t'
strSaltoLinea   = '\n'
strPuntosIA     = 'Puntos IA-9000'
strObtenerOpc   = '¿piedra, papel o tijera? '
strOpcionUsr    = ', su elección es:'
strOpcionIA     = 'La elección de IA-9000 es:'
strPuntosUsr    = 'Puntos'
strSalirSinJuego= ', veo que en este momento no puede o no le apetece jugar,\nespero poder disfrutar de unas partiditas, con usted, en otro momento.\n\n¡Gracias, por su atención!'
strFinal        = 'eof... IA-9000'
strComienzoJuego= '* NUEVO JUEGO *'
strOpcionValida = ', elija una opción válida (piedra, papel o tijera), por favor '
strEmpate       = 'RESULTADO PARTIDA:\t\t\t\tEMPATE'
strGanaUsr      = 'RESULTADO PARTIDA:\t\t\t\tUd. gana la partida,'
strGanaIA       = 'RESULTADO PARTIDA:\t\t\t\tGana IA-9000 la partida'
strResPartida   = 'PARTIDA'
strResultado01  = '=> piedra gana a tijera'
strResultado02  = '=> papel gana a piedra'
strResultado03  = '=> tijera gana a papel'
strHaGanadoIA   = 'IA-9000 ha conseguido'
strExitoIA      = 'IA-9000 ha ganado el juego'
strHaGanadoUsr  = 'ha conseguido'
strExitoUsr     = 'Ud. ha ganado el juego.\nEnhorabuena'
strLitPuntos    = 'puntos'
strCancelacion  = '¡ATENCIÓN, ATENCIÓN!: El jugador ha cancelado el juego'
strOpcion   = ''
strOpcionPC = ''
intIA9000   = 0
intJugador  = 0
intPartidas = 0
strJugar    = 'S'
strNormas   = 'N'
bolOpcion   = True
bolJugar    = True
bolErrJuego = False

# Presentación
print(strSaltoLinea*2 + strPresentacion)

# Nombre usuario
strNombre = input(strSaltoLinea*2 + strObtenerNomb).capitalize()

bolOpcion = len(strNombre.strip())>0

while not bolOpcion:
  print(strSaltoLinea + strValidarNomb)
  strNombre = input(strValidarNomb1).capitalize()
  bolOpcion = len(strNombre.strip())>0

# Normas del juego
strNormas = input(strSaltoLinea*2 + strNombre + strObtenerNorm).upper()

bolOpcion = strNormas in "SN" and len(strNormas)==1

while not bolOpcion:
  print(strValidarNorm)
  strNormas = input(strSaltoLinea + strValidarNorm1).upper()
  bolOpcion = strNormas in "SN" and len(strNormas)==1

if strNormas=='S':
  print(strSaltoLinea + strNormasJuego)

# Juego
strJugar  = input(strSaltoLinea*2 + strNombre + strObtenerJuego).upper()

bolOpcion = strJugar in "SN" and len(strJugar)==1

while not bolOpcion:
  print(strValidarJuego)
  strJugar = input(strSaltoLinea + strObtenerJuego1).upper()
  bolOpcion = strJugar in "SN" and len(strJugar)==1

# Preparación partidas
if strJugar=="S":
  print(strSaltoLinea*2 + strComienzoJuego)
else: 
  bolJugar    = False
  print(strSaltoLinea*2 + strNombre + strSalirSinJuego)

# Partidas
while bolJugar:

  strOpcion = input(strSaltoLinea*2 + strObtenerOpc + strTabulador*2).upper().strip()

  if strOpcion.upper()=='X':
    print(strSaltoLinea*3 + strCancelacion)
    break
  elif not strOpcion in tupOpciones:
    print(strNombre + strOpcionValida)
    bolErrJuego = True
    continue
  else:
    bolErrJuego = False
    intPartidas += 1
  
  strOpcionPC = random.choice(tupOpciones)
  
  print(strSaltoLinea + strNombre + strOpcionUsr, strTabulador*3 + strOpcion.lower())
  print(strOpcionIA, strTabulador*2 + strOpcionPC.lower())
  
  if strOpcion == strOpcionPC:          # empate
    print(strEmpate)
  elif strOpcion == tupOpciones[0]:     # piedra
    if strOpcionPC == tupOpciones[2]:   # tijera
      print(strSaltoLinea + strResPartida, str(intPartidas) + ':' + strTabulador*6 + strResultado01)
      print (strSaltoLinea + strGanaUsr, strNombre)
      intJugador += 1
    else:
      print(strSaltoLinea + strResPartida, str(intPartidas) + ':' + strTabulador*6 + strResultado02)
      print(strGanaIA)
      intIA9000 += 1
  elif strOpcion == tupOpciones[1]:    # papel
    if strOpcionPC == tupOpciones[0]:  # piedra
      print(strSaltoLinea + strResPartida, str(intPartidas) + ':' + strTabulador*6 + strResultado02)
      print(strGanaUsr, strNombre)
      intJugador +=1
    else:
      print(strSaltoLinea + strResPartida, str(intPartidas) + ':' + strTabulador*6 + strResultado03)
      print(strGanaIA)
      intIA9000 += 1
  elif strOpcion == tupOpciones[2]:    # tijera
    if strOpcionPC == tupOpciones[1]:  # papel
      print (strSaltoLinea + strResPartida, str(intPartidas) + ':' + strTabulador*6 + strResultado03)
      print (strGanaUsr, strNombre)
      intJugador +=1
    else:
      print(strSaltoLinea + strResPartida, str(intPartidas) + ':' + strTabulador*6 + strResultado01)
      print(strGanaIA)
      intIA9000 += 1

  bolJugar = not(intIA9000 == 3 or intJugador == 3)

else:

  if intIA9000 == 3:
    print(strSaltoLinea*2 + strHaGanadoIA, intIA9000, strLitPuntos)
    print(strExitoIA)

  if intJugador == 3:
    print(strSaltoLinea*2 + strNombre, strHaGanadoUsr, intJugador, strLitPuntos)
    print(strExitoUsr, strNombre)
    
  if intPartidas>0 and not bolErrJuego:
    print(strSaltoLinea*2 + strPartidas, strTabulador*4, intPartidas)
    print(strPuntosIA, strTabulador*3, intIA9000)
    print(strPuntosUsr, strNombre, strTabulador*3, intJugador)
  
print(strSaltoLinea*5 + strFinal)

````

![Ejecución del programa desde el shell](https://i.imgur.com/HeJGJ2u.png)

![Ejecución del programa desde el shell](https://i.imgur.com/22O4Va3.png)

El programa se adjunta en el repositorio como piedra_papel_tijera.py

**¡Gracias popr este estupendo curso!**