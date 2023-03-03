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