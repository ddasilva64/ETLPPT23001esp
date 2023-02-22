'''

Programa: Cálculo del dígito de control del DNI de las 
          personas físicas nacionales (no extranjeros) 
          y mayores de edad, en España.

          En España, para las personas físicas de 
          nacionalidad española y mayores de edad, el
          DNI está formado por 8 números + 1 letra 
          (dígito de control).
          
          El dígito de control se busca en una cadena 
          predeterminada, mediante el resultado del 
          módulo de la cifra formada por los 8 números/23.
          
          Se ha optado, como solución óptima, por un 
          objeto string para la palabra que contendría 
          la lista de letras para obtener el d.c., pero 
          podría ser igual de óptima una tupla.

'''

palabra= 'TRWAGMYFPDXBNJZSQVHLCKE'
letra= ''
digOK  = False


# Introducimos el número del DNI
dni=input("Introduzca el número de su DNI,por favor ")

# Limpieza
dni=dni.replace(' ','')
dni=dni.replace('.','')

# Control de errores de entrada
if not(dni.isdigit()):
    print('ERROR: El número del DNI debe estar formado por 8 dígitos numéricos')
else:
    dni=int(dni)
    if dni>99999999:
        print('ERROR: El número del DNI debe estar formado por un máximo de 8 dígitos')
    else:
        digOK = True

# Si no hay errores de entrada se obtiene directamente el d.c.
if digOK:
    letra= palabra[dni%23]
    nif=str(dni)+'-'+letra
    print('El DNI con dígito de control es:',nif)
else:
    print('ERROR: Error no controlado')
