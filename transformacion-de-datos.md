# Transformación de datos  

## Transformación  

### **_Estructura final_**  

Debemos conseguir que la estructura de datos en la transformación, sea compatible con el target   

### **_Relaciones_**  

Debemos relacionar adecuadamente los datos de distintas fuentes, teniendo en cuenta que queremos conseguir una estructura en estrella o star schema (o derivada), en el modelo de datos final (target). Además, debemos decidir cuáles son las tablas (entidades) en nuestro modelo de datos final (target) y cómo se relacionan (dimensiones y hechos)  

![Star schema](https://i.imgur.com/2GGWCNf.png)  
Model en estrella  

![Snowflake schema](https://i.imgur.com/fBiILtm.png)
Modelo en copo de nieve  

### **_Normalización_**  

Debemos normalizar los datos, teniendo en cuenta el modelo de datos final (target), que queremos conseguir (star schema, snowflake schema). La consistencia será con el modelo deseado hará que, no siempre, reduzcamos a 3FN  

**_Importante_**: El modelo de datos final (target) no es relacional, sino dimensional, por lo tanto **_reducir a 3FN no debe ser nuestro leitmotiv en la transformación de los datos_**  

### **_Duplicados_**  

Los duplicados, los admitiremos o no, dependiendo de la estructura de datos del target. Es decir, el target debe dirigir nuestras acciones, con respecto a los duplicados, en la transformación  

### **_Datos faltantes_**  

En general, como siempre, **_el target debe generar nuestro letmitiv en la transformación_**. Normalmente no nos interesará tener nulos, pero no todos los atributos (columnas) de nuestras entidades (DataFrames), no serán igualmente trascendentes. No será igual tener nulos en las dimensiones que en los hechos y dentro de cada categoría, no será igual en unos atributos que en otros  

### **_Agregaciones_**  

La naturaleza de los datos en el sistema de destino, hará que frecuentemente debamos agrupar los datos por alguna característica y buscar agregaciones (suma, promedio, máximo, etc.)    

## Limpiar código de producto

### **_Exploración inicial de datos_**  

* **_Exploración inicial_**  

|  | Order | Level | Code | Parent | Code\_comm | Parent.1 | Description\_complex | Description |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 0 | 1654555 | 1 | 0 | NaN | NaN | NaN | This classification has been uploaded in RAMON for the specific needs of the "Correspondence tables" section of the server. The sole official versions of this classification are to be found on the... | This classification has been uploaded in RAMON for the specific needs of the "Correspondence tables" section of the server. The sole official versions of this classification are to be found on the... |
| 1 | 1654556 | 1 | 10011000090 | NaN | I | NaN | SECTION I - LIVE ANIMALS; ANIMAL PRODUCTS | LIVE ANIMALS; ANIMAL PRODUCTS |
| 2 | 1654557 | 2 | 10021000090 | 1.001100e+10 | 1 | I | CHAPTER 1 - LIVE ANIMALS | LIVE ANIMALS |
| 3 | 1654558 | 3 | 10100000080 | 1.002100e+10 | 1.01 | 1 | Live horses, asses, mules and hinnies | Live horses, asses, mules and hinnies |
| 4 | 1654559 | 4 | 10121000010 | 1.010000e+10 | NaN | 1.01 | - Horses | NaN |  

* **_Estructura de datos_**  

Estructura de campos del df:  
                
| Nº | Campo     | Descripción         | Observaciones                                           | Obtenido df | Limpieza |
| :- | :-------- | :------------------ | :------------------------------------------------------ |:----------: | :------: |
| 1  | Order     | orden               | incremental                                             |             |          |
| 2  | Level     | nivel               | categoría/subcategorías. El nivel 2 indica la categoría | df_parents  |          |
| 3  | Code      | código              | 6 primeros dígitos coiciden con comm_code en df_trades  |             | Sí       |
| 4  | Parent    | padre de cada code  |                                                         |             |          |
| 5  | Code_comm | código de producto  | Hay nulos con la descripción no muy clara               |             | Sí       |
| 6  | Parent    | padre               |                                                         |             |          |
| 7  | Description_complex | descripción compleja                                                |             |          |
| 8  | Description         | descripción                                                         |             |          |

### **_Eliminación de filas con nulos en Code\_comm_**  

````python
df_codes = df_codes[df_codes['Code_comm'].notnull()]
df_codes.head()
````

|  | Order | Level | Code | Parent | Code\_comm | Parent.1 | Description\_complex | Description |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | 1654556 | 1 | 10011000090 | NaN | I | NaN | SECTION I - LIVE ANIMALS; ANIMAL PRODUCTS | LIVE ANIMALS; ANIMAL PRODUCTS |
| 2 | 1654557 | 2 | 10021000090 | 1.001100e+10 | 1 | I | CHAPTER 1 - LIVE ANIMALS | LIVE ANIMALS |
| 3 | 1654558 | 3 | 10100000080 | 1.002100e+10 | 1.01 | 1 | Live horses, asses, mules and hinnies | Live horses, asses, mules and hinnies |
| 5 | 1654560 | 5 | 10121000080 | 1.012100e+10 | 101.21 | NaN | -- Pure-bred breeding animals | Pure-bred breeding horses |
| 6 | 1654561 | 5 | 10129000080 | 1.012100e+10 | 101.29 | NaN | -- Other | Live horses \(excl. pure-bred for breeding\) |

### **_Limpieza de Code_**  

Función para hacer la limpieza  
**_Debemos limpiar los 6 primeros dígitos_** y **_obtener_** la descripción de **_la categoría_** (nivel=2), **_para poder segmentar_** los datos, posterormente, por este concepto  

Como hemos visto en df_parents (categorías):  
1. Code_comm puede tener 2 dígitos  
2. Si Code_comm tiene 1 dígito, entonces code tiene 11 dígitos, de los que cogeremos 5  
3. Si Code_comm tiene 2 dígitos, entonces code tiene 12 dígitos, de los que cogeremos 6  

Retornaremos una tupla de tipo string, con la que expandiremos df_codes 

````python
def clean_code(text):
    text = str(text)                # convertimos a string
    parent_code = None              # definimos variable vacía
    if len(text) == 11:             # si longitud = 11, entonces
        code = text[:5]             # code = 5 primeras posiciones
        parent_code = text[:1]      # categoría = primera posición
    else:                           # sino (si longitud = 12, entonces) 
        code = text[:6]             # code = 6 primeras posiciones
        parent_code = text[:2]      # categoría = 2 primeras posiciones
    try:
        # si coincide el código de producto en el df de categorías, retornamos el código límpio y la descripción de la categoría
        parent = df_parents[df_parents['Code_comm']==parent_code]['Description'].values[0]
    except:
        # caso contrario retornamos nulos
        parent = None
    return (code,parent)
````

Llamamos a la función anterior y expandimos el df, con la tupla resultado (código límpio de producto y categoría -descripción-)   

````python
df_codes[['clean_code','parent_description']] = df_codes.apply(lambda x : clean_code(x['Code']),axis=1, result_type='expand')
df_codes.head()
````
Aplicamos a cada una de las filas, con la función lambda, la función, cogiendo la columna **_Code_** y expandiendo el df con la tupla de tipo string. Esta tupla la almacenaremos en dos columnas nuevas que llamamos **_clean\_code_** y **_parent\_description_**  

Ahora tenemos el código límpio (clean\_code) y la categoría del producto (parent\_description), en nuestro **_df de productos_**, el cual, finalmente será una **_dimensión de los hechos de transacciones_**  

|  | Order | Level | Code | Parent | Code\_comm | Parent.1 | Description\_complex | Description | clean\_code | parent\_description |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | 1654556 | 1 | 10011000090 | NaN | I | NaN | SECTION I - LIVE ANIMALS; ANIMAL PRODUCTS | LIVE ANIMALS; ANIMAL PRODUCTS | 10011 | LIVE ANIMALS |
| 2 | 1654557 | 2 | 10021000090 | 1.001100e+10 | 1 | I | CHAPTER 1 - LIVE ANIMALS | LIVE ANIMALS | 10021 | LIVE ANIMALS |
| 3 | 1654558 | 3 | 10100000080 | 1.002100e+10 | 1.01 | 1 | Live horses, asses, mules and hinnies | Live horses, asses, mules and hinnies | 10100 | LIVE ANIMALS |
| 5 | 1654560 | 5 | 10121000080 | 1.012100e+10 | 101.21 | NaN | -- Pure-bred breeding animals | Pure-bred breeding horses | 10121 | LIVE ANIMALS |
| 6 | 1654561 | 5 | 10129000080 | 1.012100e+10 | 101.29 | NaN | -- Other | Live horses \(excl. pure-bred for breeding\) | 10129 | LIVE ANIMALS |

### **_Eliminación de columnas que no interesan y de nulos en clean\_code_** 

Ahora nos interesa eliminar las filas en las cuales clean_code sea nulo, porque nos interesa que siempre exista la cagoría del producto. Además, solo nos interesa tener en df_codes, el código límpio, la descripción y la categoría  

````python
df_codes = df_codes[df_codes['clean_code'].notnull()][['clean_code','Description','parent_description']]
df_codes.head()
````
|  | clean\_code | Description | parent\_description |
| :--- | :--- | :--- | :--- |
| 1 | 10011 | LIVE ANIMALS; ANIMAL PRODUCTS | LIVE ANIMALS |
| 2 | 10021 | LIVE ANIMALS | LIVE ANIMALS |
| 3 | 10100 | Live horses, asses, mules and hinnies | LIVE ANIMALS |
| 5 | 10121 | Pure-bred breeding horses | LIVE ANIMALS |
| 6 | 10129 | Live horses \(excl. pure-bred for breeding\) | LIVE ANIMALS |

### **_Clave única_**  

Ahora definimos una clave única, tomando el índice del df y sumándole 1, por si comienza por cero  

````python
df_codes['id_code'] = df_codes.index + 1
````

### **_Tipo de datos de clean\_code_**  

También, transformamos en numérico el código límpio, que acabamos de generar  

````python
df_codes['clean_code'] = df_codes['clean_code'].astype('int64')
df_codes.head()
````
|  | clean\_code | Description | parent\_description | id\_code |
| :--- | :--- | :--- | :--- | :--- |
| 1 | 10011 | LIVE ANIMALS; ANIMAL PRODUCTS | LIVE ANIMALS | 2 |
| 2 | 10021 | LIVE ANIMALS | LIVE ANIMALS | 3 |
| 3 | 10100 | Live horses, asses, mules and hinnies | LIVE ANIMALS | 4 |
| 5 | 10121 | Pure-bred breeding horses | LIVE ANIMALS | 6 |
| 6 | 10129 | Live horses \(excl. pure-bred for breeding\) | LIVE ANIMALS | 7 |

Y listo, tenemos el df de productos límpio  

## Limpiar paises  

### **_Exploración inicial de datos_**  

* **_Exploración inicial_**  

|  | country | images\_file | image\_url | alpha-2 | alpha-3 | country-code | iso\_3166-2 | region | sub-region | intermediate-region | region-code | sub-region-code | intermediate-region-code |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 0 | Afghanistan | Flag\_of\_Afghanistan.svg | https://upload.wikimedia.org/wikipedia/commons/9/9a/Flag\_of\_Afghanistan.svg | AF | AFG | 4.0 | ISO 3166-2:AF | Asia | Southern Asia | None | 142.0 | 34.0 | NaN |
| 1 | Albania | Flag\_of\_Albania.svg | https://upload.wikimedia.org/wikipedia/commons/3/36/Flag\_of\_Albania.svg | AL | ALB | 8.0 | ISO 3166-2:AL | Europe | Southern Europe | None | 150.0 | 39.0 | NaN |
| 2 | Algeria | Flag\_of\_Algeria.svg | https://upload.wikimedia.org/wikipedia/commons/7/77/Flag\_of\_Algeria.svg | DZ | DZA | 12.0 | ISO 3166-2:DZ | Africa | Northern Africa | None | 2.0 | 15.0 | NaN |
| 3 | Andorra | Flag\_of\_Andorra.svg | https://upload.wikimedia.org/wikipedia/commons/1/19/Flag\_of\_Andorra.svg | AD | AND | 20.0 | ISO 3166-2:AD | Europe | Southern Europe | None | 150.0 | 39.0 | NaN |
| 4 | Angola | Flag\_of\_Angola.svg | https://upload.wikimedia.org/wikipedia/commons/9/9d/Flag\_of\_Angola.svg | AO | AGO | 24.0 | ISO 3166-2:AO | Africa | Sub-Saharan Africa | Middle Africa | 2.0 | 202.0 | 17.0 |  

* **_Estructura de datos_**  

Estructura de campos del df:  

| Nº | Campo     | Descripción         | Observaciones                                           | Obtenido df | Limpieza |
| :- | :-------- | :------------------ | :------------------------------------------------------ |:----------: | :------: |
| 1  | country                  | país       | | | |
| 2  | images\_file             | imagen     | | | |
| 3  | image\_url               | url imagen | | | |
| 4  | alpha-2                  | iso2       | | | |
| 5  | alpha-3                  | iso3       | | | |
| 6  | country-code             | código numérico | | | |
| 7  | iso\_3166-2              | iso2 (¿?)  | | | |
| 8  | region                   | región     | | | |
| 9  | sub-region               | sub-región  | | | |
| 10 | intermediate-region      | región intermedia | | | |
| 11 | region-code              | código de región  | | | |
| 12 | sub-region-code          | código sub-región | | | |
| 13 | intermediate-region-code | código región intermedia | | | |

### **_Eliminación de columnas que no interesan_**  

Nos quedaremos con el código iso3 (que ligaremos con df_trades -tabla de hechos-), con el nombre del país, la región y la sub-región  

````python
df_countries = df_countries[['alpha-3','country','region','sub-region']]
df_countries.head()
````

|  | alpha-3 | country | region | sub-region |
| :--- | :--- | :--- | :--- | :--- |
| 0 | AFG | Afghanistan | Asia | Southern Asia |
| 1 | ALB | Albania | Europe | Southern Europe |
| 2 | DZA | Algeria | Africa | Northern Africa |
| 3 | AND | Andorra | Europe | Southern Europe |
| 4 | AGO | Angola | Africa | Sub-Saharan Africa |

### **_Eliminación de nulos en alpha-3_**  

Como el código para unir con el df de transacciones (hechos), es alpha-3 (iso3), entonces nos interesa eliminar las filas con nulos, en esta columna  

````python
df_countries = df_countries[df_countries['alpha-3'].notnull()]
df_countries.head()
````

|  | alpha-3 | country | region | sub-region |
| :--- | :--- | :--- | :--- | :--- |
| 0 | AFG | Afghanistan | Asia | Southern Asia |
| 1 | ALB | Albania | Europe | Southern Europe |
| 2 | DZA | Algeria | Africa | Northern Africa |
| 3 | AND | Andorra | Europe | Southern Europe |
| 4 | AGO | Angola | Africa | Sub-Saharan Africa |

### **_Clave única_**  

Ahora definimos una clave única, tomando el índice del df y sumándole 1, por si comienza por cero  

````python
df_countries['id_country'] = df_countries.index + 1
df_countries.head()
````
|  | alpha-3 | country | region | sub-region | id\_country |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 0 | AFG | Afghanistan | Asia | Southern Asia | 1 |
| 1 | ALB | Albania | Europe | Southern Europe | 2 |
| 2 | DZA | Algeria | Africa | Northern Africa | 3 |
| 3 | AND | Andorra | Europe | Southern Europe | 4 |
| 4 | AGO | Angola | Africa | Sub-Saharan Africa | 5 |

## Añadir código límpio al df de transacciones  

### **_Unión con el df de transacciones_**  

Hacemos un left join con el df de transacciones (hechos), o sea, cogeremos todas las filas de df_trades y solo las que coincidan de df_codes. Además añadiremos, para poder relacionar los dos df, el **_id\_code_** (único), que hemos obtenido, anteriormente  

````python
df_trades_clean = df_trades.merge(df_codes[['clean_code','id_code']],how='left', left_on='comm_code',right_on='clean_code')
df_trades_clean.head()
````

|  | country\_code | year | comm\_code | flow | trade\_usd | kg | quantity | quantity\_name | clean\_code | id\_code |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 0 | SYC | 1998 | 890200 | Import | 1431426.0 | 0.0 | 23000.0 | Number of items | 890200 | 6929 |
| 1 | SYC | 1998 | 890310 | Import | 31406.0 | 0.0 | 2545.0 | Number of items | 890310 | 6931 |
| 2 | SYC | 1998 | 890310 | Export | 950.0 | 0.0 | 300.0 | Number of items | 890310 | 6931 |
| 3 | SYC | 1998 | 890310 | Re-Export | 950.0 | 0.0 | 300.0 | Number of items | 890310 | 6931 |
| 4 | SYC | 1998 | 890391 | Import | 18251.0 | 0.0 | 450.0 | Number of items | 890391 | 6933 |

## Añadir código de país y el iso3 al df de transacciones  

### **_Unión con el df de transacciones_**  

Realizamos la misma operación con el código de país (único) y el iso3. Con el código único, como en el caso anterior, podemos obtener datos de la dimensión de paises  

````python
df_trades_clean = df_trades_clean.merge(df_countries[['alpha-3','id_country']],how='left', left_on='country_code',right_on='alpha-3')
df_trades_clean.head()
````

|  | country\_code | year | comm\_code | flow | trade\_usd | kg | quantity | quantity\_name | clean\_code | id\_code | alpha-3 | id\_country |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 0 | SYC | 1998 | 890200 | Import | 1431426.0 | 0.0 | 23000.0 | Number of items | 890200 | 6929 | SYC | 155 |
| 1 | SYC | 1998 | 890310 | Import | 31406.0 | 0.0 | 2545.0 | Number of items | 890310 | 6931 | SYC | 155 |
| 2 | SYC | 1998 | 890310 | Export | 950.0 | 0.0 | 300.0 | Number of items | 890310 | 6931 | SYC | 155 |
| 3 | SYC | 1998 | 890310 | Re-Export | 950.0 | 0.0 | 300.0 | Number of items | 890310 | 6931 | SYC | 155 |
| 4 | SYC | 1998 | 890391 | Import | 18251.0 | 0.0 | 450.0 | Number of items | 890391 | 6933 | SYC | 155 |

## Tabla de dimensiones límpia  

Para poder tener una tabla límpia de dimensiones, necesitamos que contenga:

- Que estén definidas solo FK (foreign keys) a las tablas de dimensiones
- Que estén definidas las métricas de nuestro sistema

Como todavía tenemos columnas que no son de ninguno de los dos tipos, las convertimos en dimensiones, es decir, en dimensiones  

````python
def create_dimension(data, id_name):
    list_keys = []
    value = 1
    for _ in data:
        list_keys.append(value)
        value = value + 1
    return pd.DataFrame({id_name:list_keys, 'values':data})
````

````python
df_quantity =create_dimension(df_trades_clean['quantity_name'].unique(),'id_quantity')
df_quantity.head()
````
|  | id\_quantity | values |
| :--- | :--- | :--- |
| 0 | 1 | Number of items |
| 1 | 2 | Weight in kilograms |
| 2 | 3 | No Quantity |
| 3 | 4 | Volume in litres |
| 4 | 5 | Number of pairs |

````python
df_flow =create_dimension(df_trades_clean['flow'].unique(),'id_flow')
df_flow.head()
````
|  | id\_flow | values |
| :--- | :--- | :--- |
| 0 | 1 | Import |
| 1 | 2 | Export |
| 2 | 3 | Re-Export |
| 3 | 4 | Re-Import |

````python
df_year =create_dimension(df_trades_clean['year'].unique(),'id_year')
df_year.head()
````
|  | id\_year | values |
| :--- | :--- | :--- |
| 0 | 1 | 1998 |
| 1 | 2 | 1997 |
| 2 | 3 | 1996 |
| 3 | 4 | 1995 |
| 4 | 5 | 1994 |

````python
df_trades_clean = df_trades_clean.merge(df_quantity, how='left',left_on='quantity_name', right_on='values')
df_trades_clean.head()
````
|  | country\_code | year | comm\_code | flow | trade\_usd | kg | quantity | quantity\_name | clean\_code | id\_code | alpha-3 | id\_country | id\_quantity | values |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 0 | SYC | 1998 | 890200 | Import | 1431426.0 | 0.0 | 23000.0 | Number of items | 890200 | 6929 | SYC | 155 | 1 | Number of items |
| 1 | SYC | 1998 | 890310 | Import | 31406.0 | 0.0 | 2545.0 | Number of items | 890310 | 6931 | SYC | 155 | 1 | Number of items |
| 2 | SYC | 1998 | 890310 | Export | 950.0 | 0.0 | 300.0 | Number of items | 890310 | 6931 | SYC | 155 | 1 | Number of items |
| 3 | SYC | 1998 | 890310 | Re-Export | 950.0 | 0.0 | 300.0 | Number of items | 890310 | 6931 | SYC | 155 | 1 | Number of items |
| 4 | SYC | 1998 | 890391 | Import | 18251.0 | 0.0 | 450.0 | Number of items | 890391 | 6933 | SYC | 155 | 1 | Number of items |

````python
df_trades_clean = df_trades_clean.merge(df_flow, how='left',left_on='flow', right_on='values')
df_trades_clean.head()
````
|  | country\_code | year | comm\_code | flow | trade\_usd | kg | quantity | quantity\_name | clean\_code | id\_code | alpha-3 | id\_country | id\_quantity | values\_x | id\_flow | values\_y |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 0 | SYC | 1998 | 890200 | Import | 1431426.0 | 0.0 | 23000.0 | Number of items | 890200 | 6929 | SYC | 155 | 1 | Number of items | 1 | Import |
| 1 | SYC | 1998 | 890310 | Import | 31406.0 | 0.0 | 2545.0 | Number of items | 890310 | 6931 | SYC | 155 | 1 | Number of items | 1 | Import |
| 2 | SYC | 1998 | 890310 | Export | 950.0 | 0.0 | 300.0 | Number of items | 890310 | 6931 | SYC | 155 | 1 | Number of items | 2 | Export |
| 3 | SYC | 1998 | 890310 | Re-Export | 950.0 | 0.0 | 300.0 | Number of items | 890310 | 6931 | SYC | 155 | 1 | Number of items | 3 | Re-Export |
| 4 | SYC | 1998 | 890391 | Import | 18251.0 | 0.0 | 450.0 | Number of items | 890391 | 6933 | SYC | 155 | 1 | Number of items | 1 | Import |

````python
df_trades_clean = df_trades_clean.merge(df_year, how='left',left_on='year', right_on='values')
df_trades_clean.head()
````
|  | country\_code | year | comm\_code | flow | trade\_usd | kg | quantity | quantity\_name | clean\_code | id\_code | alpha-3 | id\_country | id\_quantity | values\_x | id\_flow | values\_y | id\_year | values |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 0 | SYC | 1998 | 890200 | Import | 1431426.0 | 0.0 | 23000.0 | Number of items | 890200 | 6929 | SYC | 155 | 1 | Number of items | 1 | Import | 1 | 1998 |
| 1 | SYC | 1998 | 890310 | Import | 31406.0 | 0.0 | 2545.0 | Number of items | 890310 | 6931 | SYC | 155 | 1 | Number of items | 1 | Import | 1 | 1998 |
| 2 | SYC | 1998 | 890310 | Export | 950.0 | 0.0 | 300.0 | Number of items | 890310 | 6931 | SYC | 155 | 1 | Number of items | 2 | Export | 1 | 1998 |
| 3 | SYC | 1998 | 890310 | Re-Export | 950.0 | 0.0 | 300.0 | Number of items | 890310 | 6931 | SYC | 155 | 1 | Number of items | 3 | Re-Export | 1 | 1998 |
| 4 | SYC | 1998 | 890391 | Import | 18251.0 | 0.0 | 450.0 | Number of items | 890391 | 6933 | SYC | 155 | 1 | Number of items | 1 | Import | 1 | 1998 |

````python
df_trades_clean['id_trades'] = df_trades_clean.index + 1
df_trades_clean.head()
````
|  | country\_code | year | comm\_code | flow | trade\_usd | kg | quantity | quantity\_name | clean\_code | id\_code | alpha-3 | id\_country | id\_quantity | values\_x | id\_flow | values\_y | id\_year | values | id\_trades |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 0 | SYC | 1998 | 890200 | Import | 1431426.0 | 0.0 | 23000.0 | Number of items | 890200 | 6929 | SYC | 155 | 1 | Number of items | 1 | Import | 1 | 1998 | 1 |
| 1 | SYC | 1998 | 890310 | Import | 31406.0 | 0.0 | 2545.0 | Number of items | 890310 | 6931 | SYC | 155 | 1 | Number of items | 1 | Import | 1 | 1998 | 2 |
| 2 | SYC | 1998 | 890310 | Export | 950.0 | 0.0 | 300.0 | Number of items | 890310 | 6931 | SYC | 155 | 1 | Number of items | 2 | Export | 1 | 1998 | 3 |
| 3 | SYC | 1998 | 890310 | Re-Export | 950.0 | 0.0 | 300.0 | Number of items | 890310 | 6931 | SYC | 155 | 1 | Number of items | 3 | Re-Export | 1 | 1998 | 4 |
| 4 | SYC | 1998 | 890391 | Import | 18251.0 | 0.0 | 450.0 | Number of items | 890391 | 6933 | SYC | 155 | 1 | Number of items | 1 | Import | 1 | 1998 | 5 |

````python
df_trades_final = df_trades_clean[['id_trades','trade_usd','kg','quantity','id_code','id_country','id_quantity','id_flow','id_year']].copy()
df_trades_final.head()
````
|  | id\_trades | trade\_usd | kg | quantity | id\_code | id\_country | id\_quantity | id\_flow | id\_year |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 0 | 1 | 1431426.0 | 0.0 | 23000.0 | 6929 | 155 | 1 | 1 | 1 |
| 1 | 2 | 31406.0 | 0.0 | 2545.0 | 6931 | 155 | 1 | 1 | 1 |
| 2 | 3 | 950.0 | 0.0 | 300.0 | 6931 | 155 | 1 | 2 | 1 |
| 3 | 4 | 950.0 | 0.0 | 300.0 | 6931 | 155 | 1 | 3 | 1 |
| 4 | 5 | 18251.0 | 0.0 | 450.0 | 6933 | 155 | 1 | 1 | 1 |

````python
df_countries = df_countries[['id_country','alpha-3','country','region','sub-region']]
df_countries.head()
````
|  | id\_country | alpha-3 | country | region | sub-region |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 0 | 1 | AFG | Afghanistan | Asia | Southern Asia |
| 1 | 2 | ALB | Albania | Europe | Southern Europe |
| 2 | 3 | DZA | Algeria | Africa | Northern Africa |
| 3 | 4 | AND | Andorra | Europe | Southern Europe |
| 4 | 5 | AGO | Angola | Africa | Sub-Saharan Africa |

````python
df_codes = df_codes[['id_code','clean_code','Description','parent_description']]
df_codes.head()
````
|  | id\_code | clean\_code | Description | parent\_description |
| :--- | :--- | :--- | :--- | :--- |
| 1 | 2 | 10011 | LIVE ANIMALS; ANIMAL PRODUCTS | LIVE ANIMALS |
| 2 | 3 | 10021 | LIVE ANIMALS | LIVE ANIMALS |
| 3 | 4 | 10100 | Live horses, asses, mules and hinnies | LIVE ANIMALS |
| 5 | 6 | 10121 | Pure-bred breeding horses | LIVE ANIMALS |
| 6 | 7 | 10129 | Live horses \(excl. pure-bred for breeding\) | LIVE ANIMALS |