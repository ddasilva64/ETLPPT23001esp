'''

Programa:   Determinación de los dos días festivos de la Semana Santa 
            en España (Viernes Santo y Lunes de Pascua), mediante la 
            utilización del algoritmo de Gauss.

            El sistema que se propone solo es válido entre los años 
            1900 y 2100. Más allá de esa fecha deberá modificar 
            el programa ;-).

'''

def Gauss_Semana_Santa(currYear):

    resA     = currYear%19
    resB     = currYear%4
    resC     = currYear%7

    resD     = int(currYear/100)//1
    resE     = int((13+8*resD)/25)//1
    resM     = int(resD/4)//1
    resN     = (15-resE+resD-resM)%30
    resP     = (4+resD-resM)%7
    resQ     = (19*resA+resN)%30
    resR     = (2*resB+4*resC+6*resQ+resP)%7

    dayMar   = 22 + resQ + resR
    dayApr   = (resQ+resR)-9

    if (resQ+resR)<=9:
        day = dayMar
        mes = 'marzo'
    elif dayMar==25:
        day = 18
        mes = 'abril'
    elif dayMar==26:
        day = 19
        mes = 'abril'
    else:
        day = dayApr
        mes = 'abril'

    fri = str(day-2) + ' de ' + mes
    sun = str(day)   + ' de ' + mes
    mon = str(day+1) + ' de ' + mes

    listFest = [fri, sun, mon]
    return listFest


currYear = int(input('Introduzca el año para el cálculo de los días de la Semana Santa '))

listFestivos = (Gauss_Semana_Santa(currYear))

print('Festivos de la Semana Santa, del año',currYear, '(en España):')
print('---Viernes Santo  :',listFestivos[0])
print('---Lunes de Pascua:',listFestivos[2])