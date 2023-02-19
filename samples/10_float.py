'''
Código:   décimo ejemplo
Utilidad: comparación de flotantes

'''

# flotante
print('----------- flotante -----------')
x = 3.3
print(x)

# comparación de flotantes (precisión)
print('----------- comparación de flotantes (precisión) -----------')
y = 1.1 + 2.2     # retorna 3.3000000000000003
print(y)
print(x == y)     # 3.3 es diferente de 3.3000000000000003

# formateo de la precisión de flotantes
print('----------- formateo de la precisión de flotantes -----------')
y_str = format(y, ".2g")   # 2 dígitos en tipo string
print('str =>', y_str)
print(y_str == str(x))

# multiplicación de strings (replicación)
print('----------- multiplicación de strings (replicación) -----------')
print('*' * 10)

# comparación de precisión de flotantes
print('----------- comparación de precisión de flotantes -----------')
print(y, x)
tolerance = 0.00001
print(abs(x - y) < tolerance)


# ajuste de precisión de flotantes con .nf
print('----------- ajuste de precisión de flotantes con .nf -----------')
'''
.4f se denomina especificación de formato y hace que la salida muestre cuatro lugares después del decimal
'''

num = 0.02893574
print ("{:.4f}".format(num))    # da 0.0289

'''
a partir de Python 3.6, también podemos usar f'{}' para obtener el mismo resultado
'''

num = 0.02893574
print (f'{num:.4f}')            # da 0.0289

# ajuste de precisión de flotantes con %.nf
print('----------- ajuste de precisión de flotantes con %.nf -----------')
'''py
También podemos establecer un ancho fijo para un número flotante con el uso del operador %v

El uso de %num permite imprimir el valor deseado sin ninguna función o formato de cadena
'''

num = 0.02893574
print ('%.4f'%num)              # da 0.0289

# ajuste de precisión de flotantes con round()
print('----------- ajuste de precisión de flotantes con round() -----------')
'''
También podemos usar la función round() para fijar el número de dígitos después del punto decimal. Esta función limita el número de dígitos después del punto decimal en el número de entrada. También redondea el dígito en el que el límite se establece en su valor integral superior si el dígito es mayor que el valor 5. El número de dígitos es opcional
'''

num = 2.37682
print(round(num,3))             # da 2.377