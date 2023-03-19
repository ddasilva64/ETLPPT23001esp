# pandas

## Leer archivos CSV y JSON con Pandas

Para poder leer archivos encontrados en internet (Repositorios, [Kaggle](https://www.kaggle.com/))  

Descargamos el Archivo CSV, subimos el archivo a nuestro proyecto, le damos clic derecho sobre él y copiamos la dirección  

![Menú desplegable al hacer clic derecho en nuestro proyecto con Pandas](https://i.imgur.com/vzkw2zR.png)

````python
import pandas as pd
pd.read_csv('/work/DataFrames/bestsellers-with-categories.csv')
````

![Visualización de archivo CSV con Pandas 1](https://i.imgur.com/ErlwX93.png)

* En algunas ocasiones el archivo podría estar separado por " | " y se vería así  

![Visualización de archivo CSV con Pandas, separado por |](https://i.imgur.com/L2qtin3.png)

* Para solucionar esto, usamos el atributo "Sep = ’ , ’ " y ya quedará bien organizado  

````python
pd.read_csv('/work/DataFrames/bestsellers-with-categories.csv', sep=  ' , ')
````

![Visualización de archivo CSV con Pandas 2](https://i.imgur.com/cBURVIs.png)

* Cambiar el encabezado, lo podemos hacer con “Header”, este pondrá de encabezado los valores que tenga en esa posición  

````python
pd.read_csv('/work/DataFrames/bestsellers-with-categories.csv', header = 2)
````

![Visualización de archivo CSV con Pandas 3](https://i.imgur.com/Qksqkyv.png)

* Cambiar el nombre de las columnas con “names”  

````python
pd.read_csv('/work/DataFrames/bestsellers-with-categories.csv',header = 0, names = ['Namesss', 'Authhhhhor', 'User Rating', 'Reviews', 'Price', 'Year', 'Genre'])
````

![Visualización de archivo CSV con Pandas 4](https://i.imgur.com/N8YZbYT.png)

### ***JSON***

Para ***agregar un archivo ‘JSON’***, se hace de igual manera, pero en esta ocasión usamos  

````python
pd.read_json('/work/DataFrames/hpcharactersdataraw.json')
````

Lo único que cambió en nuestro código fue él ````.read_json()````

### ***Reto*** 

Visita Kaggle, descarga y carga algún dataset que te llame la atención. Muéstranos que has podido encontrar  

````python
# World Population Dataset de Kaggle cargado en dataframe de pandas
df= pd.read_csv('/content/world_population.csv', sep=',', header=0)   

print(df.info())  # info del dataframe
df                # visualización del dataframe

<class 'pandas.core.frame.DataFrame'>
RangeIndex: 234 entries, 0 to 233
Data columns (total 17 columns):
 #   Column                       Non-Null Count  Dtype  
---  ------                       --------------  -----  
 0   Rank                         234 non-null    int64  
 1   CCA3                         234 non-null    object 
 2   Country/Territory            234 non-null    object 
 3   Capital                      234 non-null    object 
 4   Continent                    234 non-null    object 
 5   2022 Population              234 non-null    int64  
 6   2020 Population              234 non-null    int64  
 7   2015 Population              234 non-null    int64  
 8   2010 Population              234 non-null    int64  
 9   2000 Population              234 non-null    int64  
 10  1990 Population              234 non-null    int64  
 11  1980 Population              234 non-null    int64  
 12  1970 Population              234 non-null    int64  
 13  Area (km²)                   234 non-null    int64  
 14  Density (per km²)            234 non-null    float64
 15  Growth Rate                  234 non-null    float64
 16  World Population Percentage  234 non-null    float64
dtypes: float64(3), int64(10), object(4)
memory usage: 31.2+ KB
None
Rank	CCA3	Country/Territory	Capital	Continent	2022 Population	2020 Population	2015 Population	2010 Population	2000 Population	1990 Population	1980 Population	1970 Population	Area (km²)	Density (per km²)	Growth Rate	World Population Percentage
0	36	AFG	Afghanistan	Kabul	Asia	41128771	38972230	33753499	28189672	19542982	10694796	12486631	10752971	652230	63.0587	1.0257	0.52
1	138	ALB	Albania	Tirana	Europe	2842321	2866849	2882481	2913399	3182021	3295066	2941651	2324731	28748	98.8702	0.9957	0.04
2	34	DZA	Algeria	Algiers	Africa	44903225	43451666	39543154	35856344	30774621	25518074	18739378	13795915	2381741	18.8531	1.0164	0.56
3	213	ASM	American Samoa	Pago Pago	Oceania	44273	46189	51368	54849	58230	47818	32886	27075	199	222.4774	0.9831	0.00
4	203	AND	Andorra	Andorra la Vella	Europe	79824	77700	71746	71519	66097	53569	35611	19860	468	170.5641	1.0100	0.00
...	...	...	...	...	...	...	...	...	...	...	...	...	...	...	...	...	...
229	226	WLF	Wallis and Futuna	Mata-Utu	Oceania	11572	11655	12182	13142	14723	13454	11315	9377	142	81.4930	0.9953	0.00
230	172	ESH	Western Sahara	El Aaiún	Africa	575986	556048	491824	413296	270375	178529	116775	76371	266000	2.1654	1.0184	0.01
231	46	YEM	Yemen	Sanaa	Asia	33696614	32284046	28516545	24743946	18628700	13375121	9204938	6843607	527968	63.8232	1.0217	0.42
232	63	ZMB	Zambia	Lusaka	Africa	20017675	18927715	16248230	13792086	9891136	7686401	5720438	4281671	752612	26.5976	1.0280	0.25
233	74	ZWE	Zimbabwe	Harare	Africa	16320537	15669666	14154937	12839771	11834676	10113893	7049926	5202918	390757	41.7665	1.0204	0.20
234 rows × 17 columns
````

## Series y DataFrames en Pandas

### ***Pandas***

Pandas es una librería de Python especializada en el manejo y análisis de estructuras de datos. El nombre viene de “Panel data”   

• Velocidad  
• Poco código  
• Múltiples formatos de archivos  
• Alineación inteligente  

### ***Pandas Series***

Es muy parecido a un array de una dimensión (o vector) de NumPy  

• Arreglo unidimensional indexado  
• Búsqueda por índice  
• Slicing  
• Operaciones aritméticas  
• Distintos tipos de datos  

![Pandas Series](https://i.imgur.com/0ZPGO9u.png)

````python
import pandas as pd
````

Definiendo una lista con índices específicos  

````python
psg_players = pd.Series(['Navas','Mbappe','Neymar','Messi'], index=[1,7,10,30])

psg_players 
     1      Navas
     7     Mbappe
     10    Neymar
     30     Messi
     dtype: object 
````

Búsqueda por índices

````python
dict = {1: 'Navas', 7: 'Mbappe', 10: 'Neymar', 30:'Messi'}
pd.Series(dict)
1 Navas
7 Mbappe
10 Neymar
30 Messi
dtype: object

psg_players[7]
'Mbappe'
Búsqueda mediante Slicing

psg_players[0:3]
       0     Navas
       1    Mbappe
       2    Neymar
    dtype: object
````

### ***Pandas DataFrame***

Muy similar a las estructuras matriciales de NumPy   

• Estructura principal  
• Arreglo de dos dimensiones  
• Búsqueda por índice (columnas o filas)  
• Slicing  
• Operaciones aritméticas  
• Distintos tipos de datos  
• Tamaño variable 

![Pandas DataFrame](https://i.imgur.com/w6a2Alx.png)

````python
dict = {'Jugador':['Navas','Mbappe','Neymar','Messi'],
 'Altura':[183.0, 170.0, 170.0, 163.0],
  'Goles':[2, 200, 150, 500]}
df_players = pd.DataFrame(dict, index=[1,7,10,30])
        Jugador Altura Goles
        1 Navas    183    2
        7 Mbappe   170    200
        10 Neymar   170    150
        30 Messi    163    500
````

Búsqueda por índices. Columnas  

````python
df_players.columns Index(['Jugador', 'Altura', 'Goles'], dtype='object')
````

Búsqueda por índice  

````python
df_players.index
RangeIndex(start=0, stop=4, step=1)
````

### ***Reto***

Descarga este DataFrame de Granada FC  
Crea tus propios DataFrames, con los índices que quieras y comparte tus resultados  


````python
import pandas as pd

dict = {
'Jugador':['Luis Suárez','Jorge Molina', 'Antonio Puertas', 'Germán Sánchez', 'Luis Milla', 'Luís Manuel Arantes Maximiano'],
'Posición':['Delantero', 'Delantero', 'Centrocampista', 'Defensa', 'Centrocampista', 'Portero'],
'Número':[9, 23, 10, 6, 5, 1],
'Altura':[185.0, 187.0, 185.0, 187.0, 175.0, 190.0],
'Goles':[7, 7, 5, 2, 2, 0]
}

df_GFC=pd.DataFrame(dict)

df_GCF_players = pd.DataFrame(dict, index=df_GFC['Número'])

df_GCF_players

Jugador	Posición	Número	Altura	Goles
Número					
9	Luis Suárez	Delantero	9	185.0	7
23	Jorge Molina	Delantero	23	187.0	7
10	Antonio Puertas	Centrocampista	10	185.0	5
6	Germán Sánchez	Defensa	6	187.0	2
5	Luis Milla	Centrocampista	5	175.0	2
1	Luís Manuel Arantes Maximiano	Portero	1	190.0	0

````

## Filtrado con loc y iloc

Cuando queremos navegar por un dataFrame estas funciones permiten filtrar datos de manera más específica  

### Propiedad ````.loc[]```` del DataFrame

Accede a un grupo de filas y columnas por etiqueta/s (label/s) o una matriz booleana  

Las entradas permitidas son:

* Una sola etiqueta, p.e. 5 o 'a', (tengamos en cuenta que 5 se interpreta como una etiqueta del índice y nunca como una posición entera a lo largo del índice)  
* Una lista o matriz de etiquetas, p.e. ['a B C']  
* Un objeto slice con etiquetas, p.e. 'a': 'f'  
  * **Nota importante**: Tengamos en cuenta que, contrariamente a los cortes habituales de Python, ***se incluyen tanto el inicio como el final***  
* Una matriz booleana de la misma longitud que el eje en el que se está haciendo slicing, p.e. [Verdadero, Falso, Verdadero]  
* Una serie booleana alineable. El índice de la clave se alineará antes de enmascarar  
* Un índice alineable. El índice de la selección devuelta será la entrada  
* Una función invocable con un argumento (la Serie o DataFrame que llama) y que devuelve una salida válida para la indexación (una de las anteriores)  


````python
import pandas as pd

df_books = pd.read_csv('/content/bestsellers with categories.csv', sep=',', header=0)

df_books.loc[:] # muestra todos los datos del dataframe

Name	Author	User Rating	Reviews	Price	Year	Genre
0	10-Day Green Smoothie Cleanse	JJ Smith	4.7	17350	8	2016	Non Fiction
1	11/22/63: A Novel	Stephen King	4.6	2052	22	2011	Fiction
2	12 Rules for Life: An Antidote to Chaos	Jordan B. Peterson	4.7	18979	15	2018	Non Fiction
3	1984 (Signet Classics)	George Orwell	4.7	21424	6	2017	Fiction
4	5,000 Awesome Facts (About Everything!) (Natio...	National Geographic Kids	4.8	7665	12	2019	Non Fiction
...	...	...	...	...	...	...	...
545	Wrecking Ball (Diary of a Wimpy Kid Book 14)	Jeff Kinney	4.9	9413	8	2019	Fiction
546	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	8	2016	Non Fiction
547	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	8	2017	Non Fiction
548	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	8	2018	Non Fiction
549	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	8	2019	Non Fiction
550 rows × 7 columns
````

* ***Mostrar un rango de filas tomando en cuenta el start y el end***  

````python
df_books.loc[0:4] # muestra los datos de la fila 0 a la fila 4 (ambos inclusive)

	Name	Author	User Rating	Reviews	Price	Year	Genre
0	10-Day Green Smoothie Cleanse	JJ Smith	4.7	17350	8	2016	Non Fiction
1	11/22/63: A Novel	Stephen King	4.6	2052	22	2011	Fiction
2	12 Rules for Life: An Antidote to Chaos	Jordan B. Peterson	4.7	18979	15	2018	Non Fiction
3	1984 (Signet Classics)	George Orwell	4.7	21424	6	2017	Fiction
4	5,000 Awesome Facts (About Everything!) (Natio...	National Geographic Kids	4.8	7665	12	2019	Non Fiction
````

* ***Filtrando por filas y columnas***  

````python
df_books.loc[0:4, ['Name', 'Author']] # filtra los datos de la fila que va de 0 a 4 y de las columnas Name y Author

Name	Author
0	10-Day Green Smoothie Cleanse	JJ Smith
1	11/22/63: A Novel	Stephen King
2	12 Rules for Life: An Antidote to Chaos	Jordan B. Peterson
3	1984 (Signet Classics)	George Orwell
4	5,000 Awesome Facts (About Everything!) (Natio...	National Geographic Kids
````

* ***Podemos modificar los valores de una columna específica del DataFrame***  

````python
df_books.loc[:, ['Reviews']] * -1 # multiplica por -1 todos los valores de la columna Reviews

Reviews
0	-17350
1	-2052
2	-18979
3	-21424
4	-7665
...	...
545	-9413
546	-14331
547	-14331
548	-14331
549	-14331
550 rows × 1 columns
````

* ***Filtrar datos que cumplan una condición determinada***  

````python
df_books.loc[:, ['Author']] == 'JJ Smith' # muestra la columna Author con True en los valores que cumplen la condicion y False para los que no la cumplen

	Author
0	True
1	False
2	False
3	False
4	False
...	...
545	False
546	False
547	False
548	False
549	False
550 rows × 1 columns
````

### Propiedad ````.iloc```` del dataFrame

Indexación puramente basada en la ubicación de enteros (índices numéricos) para la selección por posición

````.iloc[]```` se basa principalmente en la posición de números enteros (de 0 a la longitud 1 del eje), pero también se puede usar con una matriz booleana  

Las entradas permitidas son:
* Un número entero, p.e. 5  
* Una lista o matriz de enteros, p.e. [4, 3, 0]  
* Un objeto de segmento con enteros, p.e. 1:7  
* Una matriz booleana  
* Una función invocable con un argumento (la Serie o DataFrame que llama) y que devuelve una salida válida para la indexación (una de las anteriores). Esto es útil en cadenas de métodos, cuando no tiene una referencia al objeto que llama, pero sería deseable basar su selección en algún valor  
* Una tupla de índices de fila y columna. Los elementos de tupla constan de una de las entradas anteriores, p.e. (0, 1)  

````.iloc```` generará IndexError si un indexador solicitado está fuera de los límites, excepto los indexadores de segmentos que permiten la indexación fuera de los límites (esto se ajusta a la semántica de segmentos python/numpy)  

````python
df_books.iloc[:]  # muestra todos los datos del dataframe

	Name	Author	User Rating	Reviews	Price	Year	Genre
0	10-Day Green Smoothie Cleanse	JJ Smith	4.7	17350	8	2016	Non Fiction
1	11/22/63: A Novel	Stephen King	4.6	2052	22	2011	Fiction
2	12 Rules for Life: An Antidote to Chaos	Jordan B. Peterson	4.7	18979	15	2018	Non Fiction
3	1984 (Signet Classics)	George Orwell	4.7	21424	6	2017	Fiction
4	5,000 Awesome Facts (About Everything!) (Natio...	National Geographic Kids	4.8	7665	12	2019	Non Fiction
...	...	...	...	...	...	...	...
545	Wrecking Ball (Diary of a Wimpy Kid Book 14)	Jeff Kinney	4.9	9413	8	2019	Fiction
546	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	8	2016	Non Fiction
547	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	8	2017	Non Fiction
548	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	8	2018	Non Fiction
549	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	8	2019	Non Fiction
550 rows × 7 columns
````

* ***Filtrar datos según los índices de las filas y las columnas***  

````python
df_books.iloc[:4, 0:2] # muestra los datos de las filas que van de 0 a 3 y las columnas con indices 0 y 1

Name	Author
0	10-Day Green Smoothie Cleanse	JJ Smith
1	11/22/63: A Novel	Stephen King
2	12 Rules for Life: An Antidote to Chaos	Jordan B. Peterson
3	1984 (Signet Classics)	George Orwell
````

* ***Buscar un dato específico***  

````python
df_books.iloc[1,3] # muestra el dato alojado en la fila 1 columna 3

2052
````

## Agregar o eliminar datos con Pandas

En muchas ocasiones necesitamos agregar, eliminar o separar datos y Pandas nos ofrece varias funciones para que este proceso se vuelva mucho más sencillo  

* ***Muestra las primeras 5 líneas del DataFrame***

````python
df_books.head() # muestra las primeras 5 lineas del dataFrame

Name	Author	User Rating	Reviews	Price	Year	Genre
0	10-Day Green Smoothie Cleanse	JJ Smith	4.7	17350	8	2016	Non Fiction
1	11/22/63: A Novel	Stephen King	4.6	2052	22	2011	Fiction
2	12 Rules for Life: An Antidote to Chaos	Jordan B. Peterson	4.7	18979	15	2018	Non Fiction
3	1984 (Signet Classics)	George Orwell	4.7	21424	6	2017	Fiction
4	5,000 Awesome Facts (About Everything!) (Natio...	National Geographic Kids	4.8	7665	12	2019	Non Fiction
````

* ***Eliminar columnas de la salida pero no del DataFrame***

````python
df_books.drop('Genre', axis=1).head() # elimina la columna Genre de la salida pero no del dataFrame con el atributo inplace=True lo elimina del dataFrame. Si lo asignamos a otro dataframe sin inplace, también borra

Name	Author	User Rating	Reviews	Price	Year
0	10-Day Green Smoothie Cleanse	JJ Smith	4.7	17350	8	2016
1	11/22/63: A Novel	Stephen King	4.6	2052	22	2011
2	12 Rules for Life: An Antidote to Chaos	Jordan B. Peterson	4.7	18979	15	2018
3	1984 (Signet Classics)	George Orwell	4.7	21424	6	2017
4	5,000 Awesome Facts (About Everything!) (Natio...	National Geographic Kids	4.8	7665	12	2019
````

* ***Eliminar una columna***

````python
del df_books['Price']   # elimina la columna Price del dataFrame. No es realmente de Pandas, sino de Python, pero funciona
````

* ***Eliminar filas***

````python
df_books.drop(0, axis=0)        #elimina la fila 0 del dataFrame

Name	Author	User Rating	Reviews	Year	Genre
1	11/22/63: A Novel	Stephen King	4.6	2052	2011	Fiction
2	12 Rules for Life: An Antidote to Chaos	Jordan B. Peterson	4.7	18979	2018	Non Fiction
3	1984 (Signet Classics)	George Orwell	4.7	21424	2017	Fiction
4	5,000 Awesome Facts (About Everything!) (Natio...	National Geographic Kids	4.8	7665	2019	Non Fiction
5	A Dance with Dragons (A Song of Ice and Fire)	George R. R. Martin	4.4	12643	2011	Fiction
...	...	...	...	...	...	...
545	Wrecking Ball (Diary of a Wimpy Kid Book 14)	Jeff Kinney	4.9	9413	2019	Fiction
546	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	2016	Non Fiction
547	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	2017	Non Fiction
548	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	2018	Non Fiction
549	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	2019	Non Fiction
549 rows × 6 columns
````

* ***Eliminar un conjunto de filas mediante una lista***

````python
df_books.drop([0,1,2], axis=0)  # elimina ña lista formada por las filas 0, 1 y 2 del dataFrame

Name	Author	User Rating	Reviews	Year	Genre
3	1984 (Signet Classics)	George Orwell	4.7	21424	2017	Fiction
4	5,000 Awesome Facts (About Everything!) (Natio...	National Geographic Kids	4.8	7665	2019	Non Fiction
5	A Dance with Dragons (A Song of Ice and Fire)	George R. R. Martin	4.4	12643	2011	Fiction
6	A Game of Thrones / A Clash of Kings / A Storm...	George R. R. Martin	4.7	19735	2014	Fiction
7	A Gentleman in Moscow: A Novel	Amor Towles	4.7	19699	2017	Fiction
...	...	...	...	...	...	...
545	Wrecking Ball (Diary of a Wimpy Kid Book 14)	Jeff Kinney	4.9	9413	2019	Fiction
546	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	2016	Non Fiction
547	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	2017	Non Fiction
548	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	2018	Non Fiction
549	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	2019	Non Fiction
547 rows × 6 columns
````

* ***Elimina un conjunto de filas mediante un rango***

````python
df_books.drop(range(0,10), axis=0)  # elimina en un rango (las primeras 10 filas del dataFrame)

Name	Author	User Rating	Reviews	Year	Genre
10	A Man Called Ove: A Novel	Fredrik Backman	4.6	23848	2017	Fiction
11	A Patriot's History of the United States: From...	Larry Schweikart	4.6	460	2010	Non Fiction
12	A Stolen Life: A Memoir	Jaycee Dugard	4.6	4149	2011	Non Fiction
13	A Wrinkle in Time (Time Quintet)	Madeleine L'Engle	4.5	5153	2018	Fiction
14	Act Like a Lady, Think Like a Man: What Men Re...	Steve Harvey	4.6	5013	2009	Non Fiction
...	...	...	...	...	...	...
545	Wrecking Ball (Diary of a Wimpy Kid Book 14)	Jeff Kinney	4.9	9413	2019	Fiction
546	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	2016	Non Fiction
547	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	2017	Non Fiction
548	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	2018	Non Fiction
549	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	2019	Non Fiction
540 rows × 6 columns
````

* ***Agregar una nueva columna con valores Nan***

````python
import numpy as np 

df_books['Nueva_columna'] = np.nan      # Crea una nueva columna con el nombre de Nueva_columna de valores Nan (no numéricos)
````
* ***Mostrar el número de filas o columnas que tiene un DataFrame***

````python
df_books.shape[0] # Muestra el numero de filas que posee el dataFrame

550
````

* ***Agregar valores a una nueva columna***

````python
data = np.arange(0, df_books.shape[0]) # lista de 0 a 549
````

* ***Crear una nueva columna y agregar los valores almacenados en el array***

````python
df_books['Rango'] = data        # Crea una nueva columna llamada Rango con los valores del array (lista numérica de los registros)
````

* ***Para añadir filas se utiliza la función append de Python añadiendo como parámetro una lista, diccionario o añadiendo los valores manualmente***

````python
df_books.append(df_books) # Duplica las filas del dataFrame porque se agrega a si mismo

<ipython-input-52-ee08f797a9f1>:43: FutureWarning: The frame.append method is deprecated and will be removed from pandas in a future version. Use pandas.concat instead.
  df_books.append(df_books) # Duplica las filas del dataFrame porque se agrega a si mismo
Name	Author	User Rating	Reviews	Year	Genre	Nueva_columna	Rango
0	10-Day Green Smoothie Cleanse	JJ Smith	4.7	17350	2016	Non Fiction	NaN	0
1	11/22/63: A Novel	Stephen King	4.6	2052	2011	Fiction	NaN	1
2	12 Rules for Life: An Antidote to Chaos	Jordan B. Peterson	4.7	18979	2018	Non Fiction	NaN	2
3	1984 (Signet Classics)	George Orwell	4.7	21424	2017	Fiction	NaN	3
4	5,000 Awesome Facts (About Everything!) (Natio...	National Geographic Kids	4.8	7665	2019	Non Fiction	NaN	4
...	...	...	...	...	...	...	...	...
545	Wrecking Ball (Diary of a Wimpy Kid Book 14)	Jeff Kinney	4.9	9413	2019	Fiction	NaN	545
546	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	2016	Non Fiction	NaN	546
547	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	2017	Non Fiction	NaN	547
548	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	2018	Non Fiction	NaN	548
549	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	2019	Non Fiction	NaN	549
1100 rows × 8 columns
````

## Manejo de datos nulos

Los datos nulos son dolores de cabeza para la DS y se van a encontrar muchos en nuestros DataFrames  

* ***Creamos un DataFrame con algunos valores nulos***  

````python
import pandas as pd
import numpy  as np

dict = {'Col1':[1,2,3,np.nan],
        'Col2':[4, np.nan,6,7],
        'Col3':['a','b','c', None]}

df = pd.DataFrame(dict)

df
````

Resultado: 

|index|Col1|Col2|Col3|
|-----|----|----|----|
| 0   |1\.0|4\.0| a  |
| 1   |2\.0|NaN | b  |
| 2   |3\.0|6\.0| c  |
| 3   |NaN |7\.0|    |

* ***Identificar valores nulos en un DataFrame***  

````python
df.isnull()
````

Resultado:  

|index| Col1  | Col2  | Col3  |
|-----|-------|-------|-------|
| 0   | false | false | false |
| 1   | false | true  | false |
| 2   | false | false | false |
| 3   | true  | false | true  |

* ***Identificar valores nulos con un valor numérico***  

````python
df.isnull()*1
````
Resultado:  

|index|Col1|Col2|Col3|
|-----|----|----|----|
| 0   | 0  | 0  | 0  |
| 1   | 0  | 1  | 0  |
| 2   | 0  | 0  | 0  |
| 3   | 1  | 0  | 1  |

* ***Sustituir los valores nulos por una cadena***  

````python
df.fillna('Missing')
````

Resultado:  

|index| Col1    | Col2    | Col3    |
|-----|---------|---------|---------|
| 0   | 1       | 4       | a       |
| 1   | 2       | Missing | b       |
| 2   | 3       | 6       | c       |
| 3   | Missing | 7       | Missing |

* ***Sustituir valores nulos por una medida estadística realizada con los valores de las columnas***  

````python
df.fillna(df.mean())
````

Resultado:  

|index|Col1| Col2               |Col3|
|-----|----|--------------------|----|
| 0   |1\.0| 4\.0               | a  |
| 1   |2\.0| 5\.666666666666667 | b  |
| 2   |3\.0| 6\.0               | c  |
| 3   |2\.0| 7\.0               |    |

* ***Sustituir valores nulos por valores de interpolación***  

````python
df.interpolate()
````

Resultado:  

|index|Col1|Col2|Col3|
|-----|----|----|----|
| 0   |1\.0|4\.0| a  |
| 1   |2\.0|5\.0| b  |
| 2   |3\.0|6\.0| c  |
| 3   |3\.0|7\.0|    |

* ***Eliminar valores nulos***  

````python
df.dropna()
````

Resultado:  

|index|Col1|Col2|Col3|
|-----|----|----|----|
| 0   |1\.0|4\.0| a  |
| 2   |3\.0|6\.0| c  |

## Filtrado por condiciones

Funciona por lógica booleana y retorna los valores que sean True, para el filtrado. Es muy útil porque, en ocasiones queremos filtrar o separar datos  

* ***Llamamos los datos de un archivo csv para manejarlos***  

````python
import pandas as pd
import numpy  as np

df_books = pd.read_csv('/content/bestsellers with categories.csv', sep=',', header=0)

df_books.head(2) # muestra los primeros dos registros del dataFrame 
````

Resultado:  

|index| Name                           | Author       | User Rating |Reviews| Price | Year | Genre       |
|-----|--------------------------------|--------------|-------------|-------|-------|------|-------------|
| 0   | 10-Day Green Smoothie Cleanse  | JJ Smith     | 4\.7        | 17350 | 8     | 2016 | Non Fiction |
| 1   | 11/22/63: A Novel              | Stephen King | 4\.6        |  2052 | 22    | 2011 | Fiction     |

* ***Mostrar datos que sean mayores a cierto valor***  

````python
mayor2016 = df_books['Year'] > 2016
mayor2016 # muestra el dataFrame con valores booleanos. True para libros publicados desde el 2017

# Resultado:  

0      False
1      False
2       True
3       True
4       True
       ...  
545     True
546    False
547     True
548     True
549     True
Name: Year, Length: 550, dtype: bool
````

* ***Filtrar datos en nuestro DataFrame que sean mayores a cierto valor***  

````python
df_books[mayor2016] # filtra los datos que cumplen con la condicion

# Resultado:  

	Name	Author	User Rating	Reviews	Price	Year	Genre
2	12 Rules for Life: An Antidote to Chaos	Jordan B. Peterson	4.7	18979	15	2018	Non Fiction
3	1984 (Signet Classics)	George Orwell	4.7	21424	6	2017	Fiction
4	5,000 Awesome Facts (About Everything!) (Natio...	National Geographic Kids	4.8	7665	12	2019	Non Fiction
7	A Gentleman in Moscow: A Novel	Amor Towles	4.7	19699	15	2017	Fiction
8	A Higher Loyalty: Truth, Lies, and Leadership	James Comey	4.7	5983	3	2018	Non Fiction
...	...	...	...	...	...	...	...
544	Wonder	R. J. Palacio	4.8	21625	9	2017	Fiction
545	Wrecking Ball (Diary of a Wimpy Kid Book 14)	Jeff Kinney	4.9	9413	8	2019	Fiction
547	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	8	2017	Non Fiction
548	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	8	2018	Non Fiction
549	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	8	2019	Non Fiction
150 rows × 7 columns
````

* ***También se puede colocar la condición directamente como parámetro***  

````python
df_books[df_books['Year'] > 2016] # filtra los datos que cumplen con la condicion

# Resultado:  

Name	Author	User Rating	Reviews	Price	Year	Genre
2	12 Rules for Life: An Antidote to Chaos	Jordan B. Peterson	4.7	18979	15	2018	Non Fiction
3	1984 (Signet Classics)	George Orwell	4.7	21424	6	2017	Fiction
4	5,000 Awesome Facts (About Everything!) (Natio...	National Geographic Kids	4.8	7665	12	2019	Non Fiction
7	A Gentleman in Moscow: A Novel	Amor Towles	4.7	19699	15	2017	Fiction
8	A Higher Loyalty: Truth, Lies, and Leadership	James Comey	4.7	5983	3	2018	Non Fiction
...	...	...	...	...	...	...	...
544	Wonder	R. J. Palacio	4.8	21625	9	2017	Fiction
545	Wrecking Ball (Diary of a Wimpy Kid Book 14)	Jeff Kinney	4.9	9413	8	2019	Fiction
547	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	8	2017	Non Fiction
548	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	8	2018	Non Fiction
549	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	8	2019	Non Fiction
150 rows × 7 columns
````

* ***Mostrar los datos que sean igual a cierto valor***  

````python
genreFiction = df_books['Genre'] == 'Fiction'
genreFiction # muestra el dataFrame con valores booleanos. True para libros de tipo Fiction

# Resultado:

0      False
1       True
2      False
3       True
4      False
       ...  
545     True
546    False
547    False
548    False
549    False
Name: Genre, Length: 550, dtype: bool
````

* ***Filtrado con varias condiciones***  

````python
df_books[genreFiction & mayor2016] # Filtra los libros que sean de tipo Fiction y que hayan sido publicado desde 2017

# Resultado:

	Name	Author	User Rating	Reviews	Price	Year	Genre
3	1984 (Signet Classics)	George Orwell	4.7	21424	6	2017	Fiction
7	A Gentleman in Moscow: A Novel	Amor Towles	4.7	19699	15	2017	Fiction
10	A Man Called Ove: A Novel	Fredrik Backman	4.6	23848	8	2017	Fiction
13	A Wrinkle in Time (Time Quintet)	Madeleine L'Engle	4.5	5153	5	2018	Fiction
40	Brown Bear, Brown Bear, What Do You See?	Bill Martin Jr.	4.9	14344	5	2017	Fiction
...	...	...	...	...	...	...	...
509	To Kill a Mockingbird	Harper Lee	4.8	26234	7	2019	Fiction
529	What Should Danny Do? (The Power to Choose Ser...	Adir Levy	4.8	8170	13	2019	Fiction
534	Where the Crawdads Sing	Delia Owens	4.8	87841	15	2019	Fiction
544	Wonder	R. J. Palacio	4.8	21625	9	2017	Fiction
545	Wrecking Ball (Diary of a Wimpy Kid Book 14)	Jeff Kinney	4.9	9413	8	2019	Fiction
````

* ***Filtrado con negación***  

````python
df_books[~mayor2016] # Filtra los libros publicados antes o igual al 2016

# Resultado:

	Name	Author	User Rating	Reviews	Price	Year	Genre
0	10-Day Green Smoothie Cleanse	JJ Smith	4.7	17350	8	2016	Non Fiction
1	11/22/63: A Novel	Stephen King	4.6	2052	22	2011	Fiction
5	A Dance with Dragons (A Song of Ice and Fire)	George R. R. Martin	4.4	12643	11	2011	Fiction
6	A Game of Thrones / A Clash of Kings / A Storm...	George R. R. Martin	4.7	19735	30	2014	Fiction
9	A Man Called Ove: A Novel	Fredrik Backman	4.6	23848	8	2016	Fiction
...	...	...	...	...	...	...	...
540	Wonder	R. J. Palacio	4.8	21625	9	2013	Fiction
541	Wonder	R. J. Palacio	4.8	21625	9	2014	Fiction
542	Wonder	R. J. Palacio	4.8	21625	9	2015	Fiction
543	Wonder	R. J. Palacio	4.8	21625	9	2016	Fiction
546	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	8	2016	Non Fiction
400 rows × 7 columns
````

**Notas**: 

* El símbolo que va encima de la ñ en español se llama virgulilla   
* Si nuestro teclado es diferente al español o no nos sale la virgulilla presionando las teclas **\<ALT Gr> + 4**, podemos utilizar las siguientes combinaciones de teclas.
* En **Windows** (si no es teclado español) se hace con la combinación de las teclas **\<Alt> + 126**
* En **Linux** (si no es teclado español) se hace con la combinación de las teclas **\<Alt> + ñ**, si es teclado español igual que en windows
* En **Mac** (si es teclado español) se hace con la combinación de las teclas **\<Alt> + ñ**, sino se debe colocar manualmente el símbolo, a través de la paleta de caracteres  

## Funciones principales de Pandas

Hay ciertas funciones que son muy importantes y que siempre usaremos a la hora de hacer análisis de datos, para mayor sencillez y comprensión del DataFrame  

* ***Mostrar las primeras dos líneas de registro***  

````python
df_books.head(2) # muestra los primeros dos registros del dataFrame
````

Resultado:  

|index|Name|Author|User Rating|Reviews|Price|Year|Genre|
|---|---|---|---|---|---|---|---|
|0|10-Day Green Smoothie Cleanse|JJ Smith|4\.7|17350|8|2016|Non Fiction|
|1|11/22/63: A Novel|Stephen King|4\.6|2052|22|2011|Fiction|

* ***Mostrar los diferentes datos que contiene el DataFrame***  

````python
df_books.info()

# Resultado: 

<class 'pandas.core.frame.DataFrame'>
RangeIndex: 550 entries, 0 to 549
Data columns (total 7 columns):
 #   Column       Non-Null Count  Dtype  
---  ------       --------------  -----  
 0   Name         550 non-null    object 
 1   Author       550 non-null    object 
 2   User Rating  550 non-null    float64
 3   Reviews      550 non-null    int64  
 4   Price        550 non-null    int64  
 5   Year         550 non-null    int64  
 6   Genre        550 non-null    object 
dtypes: float64(1), int64(3), object(3)
memory usage: 30.2+ KB
````

* ***Obtener diferentes datos estadísticos de las columnas numéricas***  

````python
df_books.describe()
````

Resultado:  

|index|User Rating|Reviews|Price|Year|
|---|---|---|---|---|
|count|550\.0|550\.0|550\.0|550\.0|
|mean|4\.618363636363637|11953\.281818181818|13\.1|2014\.0|
|std|0\.2269803650251963|11731\.132017431892|10\.84226197842236|3\.165156384169307|
|min|3\.3|37\.0|0\.0|2009\.0|
|25%|4\.5|4058\.0|7\.0|2011\.0|
|50%|4\.7|8580\.0|11\.0|2014\.0|
|75%|4\.8|17253\.25|16\.0|2017\.0|
|max|4\.9|87841\.0|105\.0|2019\.0|


* ***Mostrar los últimos 5 registros del DataFrame***  

````python
df_books.tail() # muestra los ultimos 5 registros
````

Resultado:  

|index|Name|Author|User Rating|Reviews|Price|Year|Genre|
|---|---|---|---|---|---|---|---|
|545|Wrecking Ball \(Diary of a Wimpy Kid Book 14\)|Jeff Kinney|4\.9|9413|8|2019|Fiction|
|546|You Are a Badass: How to Stop Doubting Your Greatness and Start Living an Awesome Life|Jen Sincero|4\.7|14331|8|2016|Non Fiction|
|547|You Are a Badass: How to Stop Doubting Your Greatness and Start Living an Awesome Life|Jen Sincero|4\.7|14331|8|2017|Non Fiction|
|548|You Are a Badass: How to Stop Doubting Your Greatness and Start Living an Awesome Life|Jen Sincero|4\.7|14331|8|2018|Non Fiction|
|549|You Are a Badass: How to Stop Doubting Your Greatness and Start Living an Awesome Life|Jen Sincero|4\.7|14331|8|2019|Non Fiction|

* ***Obtener el uso de la memoria de cada columna***  

````python
df_books.memory_usage(deep=True)

# Resultado:

Index            128
Name           59737
Author         39078
User Rating     4400
Reviews         4400
Price           4400
Year            4400
Genre          36440
dtype: int64
````

* ***Obtener cuantos datos tenemos de algo en específico***  

````python
df_books['Author'].value_counts() # Muestra cuantos datos hay de cada autor

# Resultado:

Jeff Kinney                           12
Gary Chapman                          11
Rick Riordan                          11
Suzanne Collins                       11
American Psychological Association    10
                                      ..
Keith Richards                         1
Chris Cleave                           1
Alice Schertle                         1
Celeste Ng                             1
Adam Gasiewski                         1
Name: Author, Length: 248, dtype: int64
````

* ***Eliminar registros duplicados***  

````python
df_books.drop_duplicates()

#Resultado:


Name	Author	User Rating	Reviews	Price	Year	Genre
0	10-Day Green Smoothie Cleanse	JJ Smith	4.7	17350	8	2016	Non Fiction
1	11/22/63: A Novel	Stephen King	4.6	2052	22	2011	Fiction
2	12 Rules for Life: An Antidote to Chaos	Jordan B. Peterson	4.7	18979	15	2018	Non Fiction
3	1984 (Signet Classics)	George Orwell	4.7	21424	6	2017	Fiction
4	5,000 Awesome Facts (About Everything!) (Natio...	National Geographic Kids	4.8	7665	12	2019	Non Fiction
...	...	...	...	...	...	...	...
545	Wrecking Ball (Diary of a Wimpy Kid Book 14)	Jeff Kinney	4.9	9413	8	2019	Fiction
546	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	8	2016	Non Fiction
547	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	8	2017	Non Fiction
548	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	8	2018	Non Fiction
549	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	8	2019	Non Fiction
550 rows × 7 columns
````

* ***Ordenar los registros según valores de la columna (orden ascendente)***  

````python
df_books.sort_values('Year') # ordena los valores de menor a mayor segun el año

# Resultado:


Name	Author	User Rating	Reviews	Price	Year	Genre
177	I, Alex Cross	James Patterson	4.6	1320	7	2009	Fiction
131	Glenn Beck's Common Sense: The Case Against an...	Glenn Beck	4.6	1365	11	2009	Non Fiction
417	The Last Lecture	Randy Pausch	4.7	4028	9	2009	Non Fiction
241	New Moon (The Twilight Saga)	Stephenie Meyer	4.6	5680	10	2009	Fiction
72	Diary of a Wimpy Kid: The Last Straw (Book 3)	Jeff Kinney	4.8	3837	15	2009	Fiction
...	...	...	...	...	...	...	...
150	Guts	Raina Telgemeier	4.8	5476	7	2019	Non Fiction
466	The Subtle Art of Not Giving a F*ck: A Counter...	Mark Manson	4.6	26490	15	2019	Non Fiction
462	The Silent Patient	Alex Michaelides	4.5	27536	14	2019	Fiction
130	Girl, Wash Your Face: Stop Believing the Lies ...	Rachel Hollis	4.6	22288	12	2019	Non Fiction
549	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	8	2019	Non Fiction
550 rows × 7 columns
````

* ***Ordenar los registros según valores de la columna (orden descendente)***  

````python
df_books.sort_values('Year', ascending=False) # ordena los valores de mayor a menor segun el año

Resultado:

Name	Author	User Rating	Reviews	Price	Year	Genre
549	You Are a Badass: How to Stop Doubting Your Gr...	Jen Sincero	4.7	14331	8	2019	Non Fiction
294	School Zone - Big Preschool Workbook - Ages 4 ...	School Zone	4.8	23047	6	2019	Non Fiction
489	The Wonderful Things You Will Be	Emily Winfield Martin	4.9	8842	10	2019	Fiction
263	P is for Potty! (Sesame Street) (Lift-the-Flap)	Naomi Kleinberg	4.7	10820	5	2019	Non Fiction
130	Girl, Wash Your Face: Stop Believing the Lies ...	Rachel Hollis	4.6	22288	12	2019	Non Fiction
...	...	...	...	...	...	...	...
418	The Last Olympian (Percy Jackson and the Olymp...	Rick Riordan	4.8	4628	7	2009	Fiction
38	Breaking Dawn (The Twilight Saga, Book 4)	Stephenie Meyer	4.6	9769	13	2009	Fiction
92	Eat This, Not That! Thousands of Simple Food S...	David Zinczenko	4.3	956	14	2009	Non Fiction
139	Good to Great: Why Some Companies Make the Lea...	Jim Collins	4.5	3457	14	2009	Non Fiction
299	Sookie Stackhouse	Charlaine Harris	4.7	973	25	2009	Fiction
550 rows × 7 columns
````

* ***Reto***  

En este artículo de [Pandas](https://pandas.pydata.org/docs/user_guide/10min.html) podrás encontrar las funciones más usadas  
Carga un DataSet de tu preferencia e implementa estas funciones y cuéntanos cuál te ha parecido más interesante  

* ***Data source:*** world_population.csv (Kaggle)

````python
import numpy as np
import pandas as pd

df = pd.read_csv('/content/world_population.csv', sep=',', header=0)

print('--- info ---')
print(df.info())

--- info ---
<class 'pandas.core.frame.DataFrame'>
RangeIndex: 234 entries, 0 to 233
Data columns (total 17 columns):
 #   Column                       Non-Null Count  Dtype  
---  ------                       --------------  -----  
 0   Rank                         234 non-null    int64  
 1   CCA3                         234 non-null    object 
 2   Country/Territory            234 non-null    object 
 3   Capital                      234 non-null    object 
 4   Continent                    234 non-null    object 
 5   2022 Population              234 non-null    int64  
 6   2020 Population              234 non-null    int64  
 7   2015 Population              234 non-null    int64  
 8   2010 Population              234 non-null    int64  
 9   2000 Population              234 non-null    int64  
 10  1990 Population              234 non-null    int64  
 11  1980 Population              234 non-null    int64  
 12  1970 Population              234 non-null    int64  
 13  Area (km²)                   234 non-null    int64  
 14  Density (per km²)            234 non-null    float64
 15  Growth Rate                  234 non-null    float64
 16  World Population Percentage  234 non-null    float64
dtypes: float64(3), int64(10), object(4)
memory usage: 31.2+ KB
None

print('--- describe ---')
print(df.describe())

--- describe ---
             Rank  2022 Population  2020 Population  2015 Population  \
count  234.000000     2.340000e+02     2.340000e+02     2.340000e+02   
mean   117.500000     3.407441e+07     3.350107e+07     3.172996e+07   
std     67.694165     1.367664e+08     1.355899e+08     1.304050e+08   
min      1.000000     5.100000e+02     5.200000e+02     5.640000e+02   
25%     59.250000     4.197385e+05     4.152845e+05     4.046760e+05   
50%    117.500000     5.559944e+06     5.493074e+06     5.307400e+06   
75%    175.750000     2.247650e+07     2.144798e+07     1.973085e+07   
max    234.000000     1.425887e+09     1.424930e+09     1.393715e+09   

       2010 Population  2000 Population  1990 Population  1980 Population  \
count     2.340000e+02     2.340000e+02     2.340000e+02     2.340000e+02   
mean      2.984524e+07     2.626947e+07     2.271022e+07     1.898462e+07   
std       1.242185e+08     1.116982e+08     9.783217e+07     8.178519e+07   
min       5.960000e+02     6.510000e+02     7.000000e+02     7.330000e+02   
25%       3.931490e+05     3.272420e+05     2.641158e+05     2.296142e+05   
50%       4.942770e+06     4.292907e+06     3.825410e+06     3.141146e+06   
75%       1.915957e+07     1.576230e+07     1.186923e+07     9.826054e+06   
max       1.348191e+09     1.264099e+09     1.153704e+09     9.823725e+08   

       1970 Population    Area (km²)  Density (per km²)  Growth Rate  \
count     2.340000e+02  2.340000e+02         234.000000   234.000000   
mean      1.578691e+07  5.814494e+05         452.127044     1.009577   
std       6.779509e+07  1.761841e+06        2066.121904     0.013385   
min       7.520000e+02  1.000000e+00           0.026100     0.912000   
25%       1.559970e+05  2.650000e+03          38.417875     1.001775   
50%       2.604830e+06  8.119950e+04          95.346750     1.007900   
75%       8.817329e+06  4.304258e+05         238.933250     1.016950   
max       8.225344e+08  1.709824e+07       23172.266700     1.069100   

       World Population Percentage  
count                   234.000000  
mean                      0.427051  
std                       1.714977  
min                       0.000000  
25%                       0.010000  
50%                       0.070000  
75%                       0.280000  
max                      17.880000  
````

* ***Ordenación del df por Densidad de población por $Km^2$, en orden descendente y mostrar los 10 primeros (top ten)***

````python
print('--- top ten máxima densidad de población ---')
df_dens_pop=df.sort_values('Density (per km²)', ascending=False) 
df_dens_pop.head(10)
````

Resultado:  

|index|Rank|CCA3|Country/Territory|Capital|Continent|2022 Population|2020 Population|2015 Population|2010 Population|2000 Population|1990 Population|1980 Population|1970 Population|Area \(km²\)|Density \(per km²\)|Growth Rate|World Population Percentage|
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|119|167|MAC|Macau|Concelho de Macau|Asia|695168|676283|615239|557297|431896|350227|245332|247284|30|23172\.2667|1\.0125|0\.01|
|134|217|MCO|Monaco|Monaco|Europe|36469|36922|36760|33178|32465|30329|27076|24270|2|18234\.5|0\.9941|0\.0|
|187|113|SGP|Singapore|Singapore|Asia|5975689|5909869|5650018|5163590|4053602|3022209|2400729|2061831|710|8416\.4634|1\.0058|0\.07|
|89|104|HKG|Hong Kong|Hong Kong|Asia|7488865|7500958|7399838|7132438|6731195|5838574|4978544|3955072|1104|6783\.3922|0\.9992|0\.09|
|76|219|GIB|Gibraltar|Gibraltar|Europe|32649|32709|32520|31262|27741|27317|28734|26685|6|5441\.5|0\.9994|0\.0|
|15|154|BHR|Bahrain|Manama|Asia|1472233|1477469|1362142|1213645|711442|517418|362595|222555|765|1924\.4876|1\.0061|0\.02|
|123|174|MDV|Maldives|Malé|Asia|523787|514438|435582|361575|282507|224957|164887|123243|300|1745\.9567|1\.0045|0\.01|
|125|173|MLT|Malta|Valletta|Europe|533286|515357|456579|418755|399212|365392|333587|315414|316|1687\.6139|1\.0124|0\.01|
|188|214|SXM|Sint Maarten|Philipsburg|North America|44175|43621|40205|33034|30489|27845|12243|6260|34|1299\.2647|1\.003|0\.0|
|22|206|BMU|Bermuda|Hamilton|North America|64184|64031|63144|63447|61371|57470|53565|52019|54|1188\.5926|1\.0|0\.0|

Cielos!!!. Todos estos territorios tienen limitado su crecimiento geográfico y una alta renta per cápita (para saberlo, realmente, tendría que cruzar datos con otro datasource de renta per cápita por paises en un período semejante). Pero es sorprendente, NO HAY NI UN PAÍS o TERRITORIO SUBDESARROLADO!!!  

**Rentas per cápita (en 2021)**  

| País         | Renta per cápita e 2021 (USD) |
| :----------- | ----------------------------: |
| Macao        |  43.873,59 |
| Mónaco       | ‌234.315,46 |
| Singapur     |  72.794,00 |
| Hong Kong    |  49.800,54 |
| Gibraltar    |  64.000,00 |
| Bahrein      |  26.562,97 |
| Maldivas     |  10.366,29 |
| Malta        |  33.486,67 |
| Sint Maarten |  28.988,26 ‌|
| Bermudas     | 114.090,30 |
| ....         | ... |
| EEUU         |  70.248,60 |
| UE           |  38.411,10 |
| Alemania     |  51.203,60 |
| ***Mundo***    |  ***12.236,60*** |
| Colombia     |   6.104,10 |
| España       |  30.103,50 |

> Los datos son del Banco Mundial, exceptuando Gibraltar (encontrado en otra fuente).

Solo está por debajo de la rpc (renta per cápita) mundial Maldivas

* ***Añadir la renta per cápita al df anterior (top ten densidad población)***

````python
df_top10 = df_dens_pop.head(10)
rpc = [43873.59, 234315.46, 72794.00, 49800.54, 64000.00, 26562.97, 10366.29, 33486.67, 28988.26, 114090.30]

df_top10 ['rpc'] = rpc

df_top10
````

Resultado:  

|index|Rank|CCA3|Country/Territory|Capital|Continent|2022 Population|2020 Population|2015 Population|2010 Population|2000 Population|1990 Population|1980 Population|1970 Population|Area \(km²\)|Density \(per km²\)|Growth Rate|World Population Percentage|rpc|
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|119|167|MAC|Macau|Concelho de Macau|Asia|695168|676283|615239|557297|431896|350227|245332|247284|30|23172\.2667|1\.0125|0\.01|43873\.59|
|134|217|MCO|Monaco|Monaco|Europe|36469|36922|36760|33178|32465|30329|27076|24270|2|18234\.5|0\.9941|0\.0|234315\.46|
|187|113|SGP|Singapore|Singapore|Asia|5975689|5909869|5650018|5163590|4053602|3022209|2400729|2061831|710|8416\.4634|1\.0058|0\.07|72794\.0|
|89|104|HKG|Hong Kong|Hong Kong|Asia|7488865|7500958|7399838|7132438|6731195|5838574|4978544|3955072|1104|6783\.3922|0\.9992|0\.09|49800\.54|
|76|219|GIB|Gibraltar|Gibraltar|Europe|32649|32709|32520|31262|27741|27317|28734|26685|6|5441\.5|0\.9994|0\.0|64000\.0|
|15|154|BHR|Bahrain|Manama|Asia|1472233|1477469|1362142|1213645|711442|517418|362595|222555|765|1924\.4876|1\.0061|0\.02|26562\.97|
|123|174|MDV|Maldives|Malé|Asia|523787|514438|435582|361575|282507|224957|164887|123243|300|1745\.9567|1\.0045|0\.01|10366\.29|
|125|173|MLT|Malta|Valletta|Europe|533286|515357|456579|418755|399212|365392|333587|315414|316|1687\.6139|1\.0124|0\.01|33486\.67|
|188|214|SXM|Sint Maarten|Philipsburg|North America|44175|43621|40205|33034|30489|27845|12243|6260|34|1299\.2647|1\.003|0\.0|28988\.26|
|22|206|BMU|Bermuda|Hamilton|North America|64184|64031|63144|63447|61371|57470|53565|52019|54|1188\.5926|1\.0|0\.0|114090\.3|

Para poder comparar creamos un nuevo df:  

````python

paises = ['EEUU', 'UE', 'Alemania', 'Mundo', 'Colombia', 'España']
rpcs  = [70248.60, 38411.10, 51203.60, 12236.60, 6104.10, 30103.50]

dfc = pd.DataFrame()

dfc['Pais'] = paises
dfc['RPC'] = rpcs

dfc
````

Resultado:
|index|Pais|RPC|
|---|---|---|
|0|EEUU|70248\.6|
|1|UE|38411\.1|
|2|Alemania|51203\.6|
|3|Mundo|12236\.6|
|4|Colombia|6104\.1|
|5|España|30103\.5|

````python
print('--- top ten mayores que los países de comparación ---')
for i in range(len(df_top10)):
    for j in range(len(dfc)):
      if (dfc.iloc[j]['RPC'] < df_top10.iloc[i]['rpc'])*1==1:
          print(df_top10.iloc[i]['Country/Territory'], df_top10.iloc[i]['rpc'], ' > ',
                dfc.iloc[j]['Pais'], dfc.iloc[j]['RPC'])`

--- top ten mayores que los países de comparación ---
Macau 43873.59  >  UE 38411.1
Macau 43873.59  >  Mundo 12236.6
Macau 43873.59  >  Colombia 6104.1
Macau 43873.59  >  España 30103.5
Monaco 234315.46  >  EEUU 70248.6
Monaco 234315.46  >  UE 38411.1
Monaco 234315.46  >  Alemania 51203.6
Monaco 234315.46  >  Mundo 12236.6
Monaco 234315.46  >  Colombia 6104.1
Monaco 234315.46  >  España 30103.5
Singapore 72794.0  >  EEUU 70248.6
Singapore 72794.0  >  UE 38411.1
Singapore 72794.0  >  Alemania 51203.6
Singapore 72794.0  >  Mundo 12236.6
Singapore 72794.0  >  Colombia 6104.1
Singapore 72794.0  >  España 30103.5
Hong Kong 49800.54  >  UE 38411.1
Hong Kong 49800.54  >  Mundo 12236.6
Hong Kong 49800.54  >  Colombia 6104.1
Hong Kong 49800.54  >  España 30103.5
Gibraltar 64000.0  >  UE 38411.1
Gibraltar 64000.0  >  Alemania 51203.6
Gibraltar 64000.0  >  Mundo 12236.6
Gibraltar 64000.0  >  Colombia 6104.1
Gibraltar 64000.0  >  España 30103.5
Bahrain 26562.97  >  Mundo 12236.6
Bahrain 26562.97  >  Colombia 6104.1
Maldives 10366.29  >  Colombia 6104.1
Malta 33486.67  >  Mundo 12236.6
Malta 33486.67  >  Colombia 6104.1
Malta 33486.67  >  España 30103.5
Sint Maarten 28988.26  >  Mundo 12236.6
Sint Maarten 28988.26  >  Colombia 6104.1
Bermuda 114090.3  >  EEUU 70248.6
Bermuda 114090.3  >  UE 38411.1
Bermuda 114090.3  >  Alemania 51203.6
Bermuda 114090.3  >  Mundo 12236.6
Bermuda 114090.3  >  Colombia 6104.1
Bermuda 114090.3  >  España 30103.5
````

Ups…
Está claro que no podemos asociar la mayor densidad de población, con una menor renta per cápita … 😉

Lo más interesante de explorar datos es, a veces, que los resultados son insospechados, a priori  

## ````.groupby()````

Permite agrupar datos en función de los demás datos. Es decir, hacer el análisis del DataFrame en función de una de las columnas  

       DataFrame.groupby(by=None, axis=0, level=None, as_index=True, sort=True, group_keys=_NoDefault.no_default, squeeze=_NoDefault.no_default, observed=False, dropna=True)

Parámetros: 

   * *By*: Mapping, función, label, o lista de labels. Se utiliza para determinar los grupos para groupby. Si by es una función, se invoca en cada valor del índice del objeto. Si se pasa un diccionario o Serie, los VALORES de Serie o diccionario se utilizarán para determinar los grupos (los valores de Serie se alinean primero). Si se pasa una lista o ndarray de longitud igual al eje seleccionado, los valores se utilizan tal cual para determinar los grupos. Se puede pasar una etiqueta o lista de etiquetas al grupo por las columnas en sí mismas. Una tupla se interpreta como una clave (única)  
   * *Eje*: {0 o 'índice', 1 o 'columnas'}, predeterminado 0. Dividir en filas (0) o columnas (1). Para las Series, este parámetro no se utiliza y su valor predeterminado es 0  
   * *Nivel*: Entero, nombre de nivel o secuencia de tales, por defecto Ninguno. Si el eje es un MultiÍndice (jerárquico), agrupa por un nivel o niveles en particular    
   * *as_index*: Booleano, predeterminado Verdadero.Para la salida agregada, devuelve el objeto con etiquetas de grupo como índice. Solo relevante para la entrada de DataFrame. as_index=False es una salida agrupada de "estilo SQL"  
   * *Ordenación*: Booleano, por defecto True. Ordenar claves de grupo. Obtenga un mejor rendimiento desactivando esto. Tenga en cuenta que esto no influye en el orden de las observaciones dentro de cada grupo. Groupby conserva el orden de las filas dentro de cada grupo  
   * *Observaciones*:Booleano observado, predeterminado Falso. Esto solo aplica si alguno de los meros son Categóricos. Si es verdadero: solo muestra los valores observados para los agrupadores categóricos. Si es falso: muestra todos los valores de los agrupadores categóricos  
   * *dropna*: Booleano, por defecto True. Si es Verdadero, y si las claves de grupo contienen valores NA, se eliminarán los valores NA junto con la fila/columna. Si es False, los valores NA también se tratarán como la clave en los grupos  

*Retorno*: DataFrameGroupBy. Retorna un objeto groupby que contiene información sobre los grupos

![groupby](https://i.imgur.com/AALzWgJ.png)

* ***Agrupar por Author y mostrar la cuenta de los datos, de las demás columnas***  

````python
import pandas as pd  # Importar librerías

# Cargar DataFrame
df_books = pd.read_csv('/content/bestsellers with categories.csv',sep=',',header=0)
df_books.head(2)
````

Resultado:  

|index|Name|Author|User Rating|Reviews|Price|Year|Genre|
|---|---|---|---|---|---|---|---|
|0|10-Day Green Smoothie Cleanse|JJ Smith|4\.7|17350|8|2016|Non Fiction|
|1|11/22/63: A Novel|Stephen King|4\.6|2052|22|2011|Fiction|

````python
df_books.groupby('Author').count()

# Resultado:

	Name	User Rating	Reviews	Price	Year	Genre
Author						
Abraham Verghese	2	2	2	2	2	2
Adam Gasiewski	1	1	1	1	1	1
Adam Mansbach	1	1	1	1	1	1
Adir Levy	1	1	1	1	1	1
Admiral William H. McRaven	1	1	1	1	1	1
...	...	...	...	...	...	...
Walter Isaacson	3	3	3	3	3	3
William Davis	2	2	2	2	2	2
William P. Young	2	2	2	2	2	2
Wizards RPG Team	3	3	3	3	3	3
Zhi Gang Sha	2	2	2	2	2	2
````

* ***Agrupar por Author y mostrar la suma de los datos, de las demás columnas***  

````python
# groupby()
df_books.groupby('Author').sum()

# Resultado:

	User Rating	Reviews	Price	Year
Author				
Abraham Verghese	9.2	9732	22	4021
Adam Gasiewski	4.4	3113	6	2017
Adam Mansbach	4.8	9568	9	2011
Adir Levy	4.8	8170	13	2019
Admiral William H. McRaven	4.7	10199	11	2017
...	...	...	...	...
Walter Isaacson	13.7	18668	61	6040
William Davis	8.8	14994	12	4025
William P. Young	9.2	39440	16	4026
Wizards RPG Team	14.4	50970	81	6054
Zhi Gang Sha	9.2	257	23	4022
248 rows × 4 columns
````

* ***Agrupar por Author y mostrar min y max de los datos, de las demás columnas*** 

````python
df_books.groupby('Author').agg(['min','max'])

	Name	User Rating	Reviews	Price	Year	Genre
min	max	min	max	min	max	min	max	min	max	min	max
Author												
Abraham Verghese	Cutting for Stone	Cutting for Stone	4.6	4.6	4866	4866	11	11	2010	2011	Fiction	Fiction
Adam Gasiewski	Milk and Vine: Inspirational Quotes From Class...	Milk and Vine: Inspirational Quotes From Class...	4.4	4.4	3113	3113	6	6	2017	2017	Non Fiction	Non Fiction
Adam Mansbach	Go the F**k to Sleep	Go the F**k to Sleep	4.8	4.8	9568	9568	9	9	2011	2011	Fiction	Fiction
Adir Levy	What Should Danny Do? (The Power to Choose Ser...	What Should Danny Do? (The Power to Choose Ser...	4.8	4.8	8170	8170	13	13	2019	2019	Fiction	Fiction
Admiral William H. McRaven	Make Your Bed: Little Things That Can Change Y...	Make Your Bed: Little Things That Can Change Y...	4.7	4.7	10199	10199	11	11	2017	2017	Non Fiction	Non Fiction
...	...	...	...	...	...	...	...	...	...	...	...	...
Walter Isaacson	Leonardo da Vinci	Steve Jobs	4.5	4.6	3014	7827	20	21	2011	2017	Non Fiction	Non Fiction
William Davis	Wheat Belly: Lose the Wheat, Lose the Weight, ...	Wheat Belly: Lose the Wheat, Lose the Weight, ...	4.4	4.4	7497	7497	6	6	2012	2013	Non Fiction	Non Fiction
William P. Young	The Shack: Where Tragedy Confronts Eternity	The Shack: Where Tragedy Confronts Eternity	4.6	4.6	19720	19720	8	8	2009	2017	Fiction	Fiction
Wizards RPG Team	Player's Handbook (Dungeons & Dragons)	Player's Handbook (Dungeons & Dragons)	4.8	4.8	16990	16990	27	27	2017	2019	Fiction	Fiction
Zhi Gang Sha	Divine Soul Mind Body Healing and Transmission...	Soul Healing Miracles: Ancient and New Sacred ...	4.6	4.6	37	220	6	17	2009	2013	Non Fiction	Non Fiction
248 rows × 12 columns
````

* ***Agrupar por Author y mostrar la media de los datos de las demás columnas***  

````python
df_books.groupby('Author').median()

# Resultado:

	User Rating	Reviews	Price	Year
Author				
Abraham Verghese	4.6	4866.0	11.0	2010.5
Adam Gasiewski	4.4	3113.0	6.0	2017.0
Adam Mansbach	4.8	9568.0	9.0	2011.0
Adir Levy	4.8	8170.0	13.0	2019.0
Admiral William H. McRaven	4.7	10199.0	11.0	2017.0
...	...	...	...	...
Walter Isaacson	4.6	7827.0	20.0	2012.0
William Davis	4.4	7497.0	6.0	2012.5
William P. Young	4.6	19720.0	8.0	2013.0
Wizards RPG Team	4.8	16990.0	27.0	2018.0
Zhi Gang Sha	4.6	128.5	11.5	2011.0
248 rows × 4 columns
````

* ***La columna Author, en los casos anteriores, pasa a ser el índice***  

Podemos usar loc y acceder a un dato específico del DataFrame. Agrupar por autor y mostrar la suma de los valores de las demás columnas para William Davis  

````python
df_books.groupby('Author').sum().loc['William Davis']

# Resultado:

User Rating        8.8
Reviews        14994.0
Price             12.0
Year            4025.0
Name: William Davis, dtype: float64
````

* ***Agrupar por author y mostrar la suma de los valores de las demás columnas. Colocar los índices que el DataFrame trae por defecto***  

````python
df_books.groupby('Author').sum().reset_index()

# Resultado:

Author	User Rating	Reviews	Price	Year
0	Abraham Verghese	9.2	9732	22	4021
1	Adam Gasiewski	4.4	3113	6	2017
2	Adam Mansbach	4.8	9568	9	2011
3	Adir Levy	4.8	8170	13	2019
4	Admiral William H. McRaven	4.7	10199	11	2017
...	...	...	...	...	...
243	Walter Isaacson	13.7	18668	61	6040
244	William Davis	8.8	14994	12	4025
245	William P. Young	9.2	39440	16	4026
246	Wizards RPG Team	14.4	50970	81	6054
247	Zhi Gang Sha	9.2	257	23	4022
248 rows × 5 columns
````

* ***La función agg() permite aplicar varias funciones al DataFrame una vez agrupado según una columna específica. Agrupar por Author y mostrar el mínimo y máximo de las demás columnas***  

````python
df_books.groupby('Author').agg(['min','max']) # muestra cada columna dividida en dos: min y max. Estas contienen los valores maximo y minimo de la columna para cada Author

# Resultado:

	Name	User Rating	Reviews	Price	Year	Genre
min	max	min	max	min	max	min	max	min	max	min	max
Author												
Abraham Verghese	Cutting for Stone	Cutting for Stone	4.6	4.6	4866	4866	11	11	2010	2011	Fiction	Fiction
Adam Gasiewski	Milk and Vine: Inspirational Quotes From Class...	Milk and Vine: Inspirational Quotes From Class...	4.4	4.4	3113	3113	6	6	2017	2017	Non Fiction	Non Fiction
Adam Mansbach	Go the F**k to Sleep	Go the F**k to Sleep	4.8	4.8	9568	9568	9	9	2011	2011	Fiction	Fiction
Adir Levy	What Should Danny Do? (The Power to Choose Ser...	What Should Danny Do? (The Power to Choose Ser...	4.8	4.8	8170	8170	13	13	2019	2019	Fiction	Fiction
Admiral William H. McRaven	Make Your Bed: Little Things That Can Change Y...	Make Your Bed: Little Things That Can Change Y...	4.7	4.7	10199	10199	11	11	2017	2017	Non Fiction	Non Fiction
...	...	...	...	...	...	...	...	...	...	...	...	...
Walter Isaacson	Leonardo da Vinci	Steve Jobs	4.5	4.6	3014	7827	20	21	2011	2017	Non Fiction	Non Fiction
William Davis	Wheat Belly: Lose the Wheat, Lose the Weight, ...	Wheat Belly: Lose the Wheat, Lose the Weight, ...	4.4	4.4	7497	7497	6	6	2012	2013	Non Fiction	Non Fiction
William P. Young	The Shack: Where Tragedy Confronts Eternity	The Shack: Where Tragedy Confronts Eternity	4.6	4.6	19720	19720	8	8	2009	2017	Fiction	Fiction
Wizards RPG Team	Player's Handbook (Dungeons & Dragons)	Player's Handbook (Dungeons & Dragons)	4.8	4.8	16990	16990	27	27	2017	2019	Fiction	Fiction
Zhi Gang Sha	Divine Soul Mind Body Healing and Transmission...	Soul Healing Miracles: Ancient and New Sacred ...	4.6	4.6	37	220	6	17	2009	2013	Non Fiction	Non Fiction
248 rows × 12 columns
````

* ***Agrupar por Author, obtener el mínimo y máximo de la columna ‘Reviews’ y sumar los valores de la columna ‘User Rating’***  

````python
df_books.groupby('Author').agg({'Reviews':['min','max'], 'User Rating':'sum'})

# Resultado: 


Reviews	User Rating
min	max	sum
Author			
Abraham Verghese	4866	4866	9.2
Adam Gasiewski	3113	3113	4.4
Adam Mansbach	9568	9568	4.8
Adir Levy	8170	8170	4.8
Admiral William H. McRaven	10199	10199	4.7
...	...	...	...
Walter Isaacson	3014	7827	13.7
William Davis	7497	7497	8.8
William P. Young	19720	19720	9.2
Wizards RPG Team	16990	16990	14.4
Zhi Gang Sha	37	220	9.2
248 rows × 3 columns
````

* ***Agrupar por ‘Author - Year’ y contar los valores de las demás columnas***  

````python
df_books.groupby(['Author','Year']).count()

# Resultado: 

Name	User Rating	Reviews	Price	Genre
Author	Year					
Abraham Verghese	2010	1	1	1	1	1
2011	1	1	1	1	1
Adam Gasiewski	2017	1	1	1	1	1
Adam Mansbach	2011	1	1	1	1	1
Adir Levy	2019	1	1	1	1	1
...	...	...	...	...	...	...
Wizards RPG Team	2017	1	1	1	1	1
2018	1	1	1	1	1
2019	1	1	1	1	1
Zhi Gang Sha	2009	1	1	1	1	1
2013	1	1	1	1	1
493 rows × 5 columns
````

* ***Reto***  

Lee este [artículo sobre el método](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.groupby.html) [groupby](https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.groupby.html) y cuéntanos que otras funciones de agregación podemos usar 

Continuaré con mi storytelling...

````python
import numpy as np
import pandas as pd

df = pd.read_csv('/content/world_population.csv', sep=',', header=0)

# Obtenemos el top ten de máxima densidad de población
df_dens_pop=df.sort_values('Density (per km²)', ascending=False) 
df_top10 = df_dens_pop.head(10)

# Buscamos los datos del Banco Mundial, de la renta per cápita de los top ten y los guardamos 
rpc = [43873.59, 234315.46, 72794.00, 49800.54, 64000.00, 26562.97, 10366.29, 33486.67, 28988.26, 114090.30]
df_top10 ['rpc'] = rpc

# Buscamos rpc de otros países, para poder comparar y los guardamos, a parte
paises = ['EEUU', 'UE', 'Alemania', 'Mundo', 'Colombia', 'España']
rpcs  = [70248.60, 38411.10, 51203.60, 12236.60, 6104.10, 30103.50]

dfc = pd.DataFrame()

dfc['Pais'] = paises
dfc['RPC'] = rpcs

# Comparamos con los top ten
'''
for i in range(len(df_top10)):
    for j in range(len(dfc)):
      if (dfc.iloc[j]['RPC'] < df_top10.iloc[i]['rpc'])*1==1:
          print(df_top10.iloc[i]['Country/Territory'], df_top10.iloc[i]['rpc'], ' > ',
                dfc.iloc[j]['Pais'], dfc.iloc[j]['RPC'])
'''
          
# Guardamos dos columnas con rpc de EEUU y de la UE, para poder operar en el futuro
rpc_EEUU = [70248.60, 70248.60, 70248.60, 70248.60, 70248.60, 70248.60, 70248.60, 70248.60, 70248.60, 70248.60]
df_top10 ['rpc EEUU'] = rpc_EEUU
rpc_UE = [38411.10, 38411.10, 38411.10, 38411.10, 38411.10, 38411.10, 38411.10, 38411.10, 38411.10, 38411.10]
df_top10 ['rpc UE'] = rpc_UE

df_top10

#Construimos un nuevo df agrupando (Continente, rpc>repc EEU, rpc> rpc UE, tasa de crecimiento > 1 y densidad de población)

df_top10[["Continent", "Rank"]].groupby("Continent").count()
````
* ***Resultado***:

|Continent|Rank|
|---|---|
|Asia|5|
|Europe|3|
|North America|2|

Ups, los paises europeos son menos que los asiáticos, pero tienen un rpc mayor. Y también que los de Norte América

````python
df_top10[["Continent", "rpc"]].groupby("Continent").agg(['count', 'sum', 'min','max', 'mean', 'median'])

# Creamos un df con la agregación creada

df_top10_agr = df_top10[["Continent", "rpc"]].groupby("Continent").agg(['count', 'sum', 'min','max', 'mean', 'median'])

# Obtenemos las columnas de las rpc de los EEUU para añadirlas al nuevo df

rpcEEUU=df_top10[["Continent", "rpc EEUU"]].groupby("Continent").agg(['mean'])
df_top10_agr['rpc EEUU'] = rpcEEUU
df_top10_agr

# Ahora hacemos lo mismo con la rpc de la UE

rpcUE=df_top10[["Continent", "rpc UE"]].groupby("Continent").agg(['mean'])
df_top10_agr['rpc UE'] = rpcUE
df_top10_agr

# Creamos un df con la comparación de estas columnas y lo agregamos como una columna a nuestro df agregado

dfc_rpc_Continente_EEUU = pd.DataFrame()

Continent = [df_top10_agr.index[0], df_top10_agr.index[1], df_top10_agr.index[2]]
rpcs_vs_EEUU  = [df_top10_agr.iloc[0,4]>df_top10_agr.iloc[0,6], df_top10_agr.iloc[1,4]>df_top10_agr.iloc[1,6], df_top10_agr.iloc[2,4]>df_top10_agr.iloc[2,6]]

dfc_rpc_Continente_EEUU['Continent'] = Continent
dfc_rpc_Continente_EEUU['media RPC vs EEUU'] = rpcs_vs_EEUU

dfc_rpc_Continente_EEUU

df_top10_agr ['media RPC vs EEUU'] = rpcs_vs_EEUU
df_top10_agr

# Hacemos lo mismo con la UE

dfc_rpc_Continente_UE = pd.DataFrame()

Continent = [df_top10_agr.index[0], df_top10_agr.index[1], df_top10_agr.index[2]]
rpcs_vs_UE  = [df_top10_agr.iloc[0,4]>df_top10_agr.iloc[0,7], df_top10_agr.iloc[1,4]>df_top10_agr.iloc[1,7], df_top10_agr.iloc[2,4]>df_top10_agr.iloc[2,7]]

dfc_rpc_Continente_UE['Continent'] = Continent
dfc_rpc_Continente_UE['media RPC vs UE'] = rpcs_vs_UE

dfc_rpc_Continente_UE

df_top10_agr ['media RPC vs UE'] = rpcs_vs_UE
df_top10_agr

# Repetimos lo que hemos hecho para la tasa de crecimiento de la población (consideraremos tasa positiva > 1)

df_GR_vs_1 = pd.DataFrame()

media_GR=[df_top10[["Continent", "Growth Rate"]].groupby("Continent").agg(['mean']).iloc[0,0], df_top10[["Continent", "Growth Rate"]].groupby("Continent").agg(['mean']).iloc[1,0], df_top10[["Continent", "Growth Rate"]].groupby("Continent").agg(['mean']).iloc[2,0]]
media_GR_vs_1 = [media_GR[0]>1,media_GR[1]>1,media_GR[2]>1]

df_top10_agr ['media GR'] = media_GR
df_top10_agr ['media GR vs 1'] = media_GR_vs_1

df_top10_agr
````

* ***Resultado***:

|Continent|rpc count|rpc sum|rpc min|rpc max|rpc mean|rpc median|rpc EEUU|rpc UE|media RPC vs EEUU|media RPC vs UE|media GR|media GR vs 1|
|---|---|---|---|---|---|---|---|---|---|---|---|---|
|Asia|5|203397\.39|10366\.29|72794\.0|40679\.478|43873\.59|70248\.6|38411\.1|false|true|1\.00562|true|
|Europe|3|331802\.13|33486\.67|234315\.46|110600\.71|64000\.0|70248\.6|38411\.1|true|true|1\.0019666666666667|true|
|North America|2|143078\.56|28988\.26|114090\.3|71539\.28|71539\.28|70248\.6|38411\.1|true|true|1\.0015|true|

* ***Conclusión***: La rpc es más alta en Europa, pero la tasa de crecimiento y el número de lugares más densamente poblados, está en Asia. **Aparentemente el futuro está en Asia**.

## Combinando DataFrames

Existen diferentes formas de fusionar dos DataFrames. Esto se hace a través de la lógica de combinación como se muestra a continuación:
![Merge-join](https://i.imgur.com/yAx5mEO.png)  

* ***Left join***: Da prioridad al DataFrame de la izquierda. Obtiene todo el DataFrame de la izquierda y las filas en común del DataFrame de la derecha  
* ***Right join***: Da prioridad al DataFrame de la derecha. Obtiene todo el DataFrame de la derecha y las filas en común del DataFrame de la izquierda  
* ***Inner join***: Obtiene solamente las filas que son comunes a ambos DataFrames  
* ***Outer join***: Obtiene las filas tanto del DataFrame de la izquierda como el de la derecha, incluyendo las que comparten ambos DataFrames  

![Combinando DataFrames](https://i.imgur.com/hWZ1Sgr.png)

## Merge y Concat

Cómo podemos usar la lógica, anteriormente vista en código, usando los parámetros de Pandas  

![Merge y Concat](https://i.imgur.com/DejXiE4.png)

![Concat eje 0](https://i.imgur.com/v7TW0OI.png)

![Concat eje 1](https://i.imgur.com/HzJPbJX.png)

````python
import pandas as pd
import numpy  as np
````

### ***````.concat````***

Concatenar objetos pandas a lo largo de un eje particular. Permite establecer lógica opcional a lo largo de los otros ejes. También puede agregar una capa de indexación jerárquica en el eje de concatenación, lo que puede ser útil si las etiquetas son las mismas (o se superponen), en el número de eje pasado.

       pandas.concat(objs, *, axis=0, join='outer', ignore_index=False, keys=None, levels=None, names=None, verify_integrity=False, sort=False, copy=True)

Parámetros: 

   * *Objs*: Secuencia o mapa de objetos Series o DataFrame. Si se pasa una asignación, las claves ordenadas se utilizarán como argumento de claves, a menos que se pase, en cuyo caso se seleccionarán los valores. Cualquier objeto Ninguno se eliminará de forma silenciosa a menos que todos sean Ninguno, en cuyo caso se generará un ValueError  
   * *Eje*: {0 o 'índice', 1 o 'columnas'}, predeterminado 0. El eje a lo largo del cual concatenar  
   * *Unión*: {'interior', 'exterior'}, por defecto 'exterior'. Cómo manejar índices en otros ejes    
   * *ignore_index*: Booleano, predeterminado Falso. Si es True, no use los valores de índice a lo largo del eje de concatenación. El eje resultante se etiquetará como 0, …, n-1. Esto es útil si está concatenando objetos donde el eje de concatenación no tiene información de indexación significativa. Tenga en cuenta que los valores de índice en los otros ejes aún se respetan en la unión  
   * *Claves*: Secuencia, por defecto Ninguno. Si se pasan varios niveles, debe contener tuplas. Construye un índice jerárquico usando las claves pasadas como el nivel más externo  
   * *Niveles*: lista de niveles de secuencias, por defecto Ninguno. Niveles específicos (valores únicos) a usar para construir un MultiIndex. De lo contrario, se deducirán de las claves  
   * *Nombres*: Lista de nombres, predeterminado Ninguno. Nombres para los niveles en el índice jerárquico resultante  
   * *Verificar integridad*: Booleano, predeterminado Falso. Comprueba si el nuevo eje concatenado contiene duplicados. Esto puede ser muy costoso en relación con la concatenación de datos real  
   * *Ordenación*: Booleano, por defecto Falso. Ordena el eje de no concatenación si aún no está alineado cuando la unión es 'externa'. Esto no tiene efecto cuando join='inner', que ya conserva el orden del eje de no concatenación  
   * *Copia*: Booleano, por defecto True. Si es Falso, no copia datos innecesariamente  

*Retorno*: Objeto, tipo de objs. Al concatenar todas las Series a lo largo del índice (eje=0), se devuelve una Serie. Cuando objs contiene al menos un DataFrame, se devuelve un DataFrame. Al concatenar a lo largo de las columnas (eje = 1), se devuelve un DataFrame

* ***En esta ocasión vamos a crear un DataFrame nuevo***  

````python
df1 = pd.DataFrame({'A':['A0', 'A1', 'A2','A3'],
        'B':['B0', 'B1', 'B2','B3'],
	'C':['C0', 'C1', 'C2','C3'],
	'D':['D0', 'D1', 'D2','D3']})


df2 = pd.DataFrame({'A':['A4', 'A5', 'A6','A7'],
	'B':['B4', 'B5', 'B6','B7'],
	'C':['C4', 'C5', 'C6','C7'],
	'D':['D4', 'D5', 'D6','D7']})
````

* ***Resultado df1***:

|index|A|B|C|D|
|---|---|---|---|---|
|0|A0|B0|C0|D0|
|1|A1|B1|C1|D1|
|2|A2|B2|C2|D2|
|3|A3|B3|C3|D3|

* ***Resultado df2***:

|index|A|B|C|D|
|---|---|---|---|---|
|0|A4|B4|C4|D4|
|1|A5|B5|C5|D5|
|2|A6|B6|C6|D6|
|3|A7|B7|C7|D7|

* ***Concatenar los DataFrames***  

````python
pd.concat([df1,df2])
````

* ***Resultado ````.concat````***:

|index|A|B|C|D|
|---|---|---|---|---|
|0|A0|B0|C0|D0|
|1|A1|B1|C1|D1|
|2|A2|B2|C2|D2|
|3|A3|B3|C3|D3|
|0|A4|B4|C4|D4|
|1|A5|B5|C5|D5|
|2|A6|B6|C6|D6|
|3|A7|B7|C7|D7|

* ***Con definición de claves***

````python
pd.concat([df1, df2], keys=['df1', 'df2'],
          names=['dataframes name', 'Row ID'])
````

* ***Resultado ````.concat````***:

|dataframes name|Row ID|A|B|C|D|
|---|---|---|---|---|---|
|df1|0|A0|B0|C0|D0|
|df1|1|A1|B1|C1|D1|
|df1|2|A2|B2|C2|D2|
|df1|3|A3|B3|C3|D3|
|df2|0|A4|B4|C4|D4|
|df2|1|A5|B5|C5|D5|
|df2|2|A6|B6|C6|D6|
|df2|3|A7|B7|C7|D7|

* ***Corregir los índices***  

````python
pd.concat([df1,df2], ignore_index= True)
````

* ***Resultado ````.concat````***:

|index|A|B|C|D|
|---|---|---|---|---|
|0|A0|B0|C0|D0|
|1|A1|B1|C1|D1|
|2|A2|B2|C2|D2|
|3|A3|B3|C3|D3|
|4|A4|B4|C4|D4|
|5|A5|B5|C5|D5|
|6|A6|B6|C6|D6|
|7|A7|B7|C7|D7|


* ***Por eje X***  

````python
pd.concat([df1,df2], axis = 1)
````

* ***Resultado ````.concat````***:

|index|A|B|C|D|A|B|C|D|
|---|---|---|---|---|---|---|---|---|
|0|A0|B0|C0|D0|A4|B4|C4|D4|
|1|A1|B1|C1|D1|A5|B5|C5|D5|
|2|A2|B2|C2|D2|A6|B6|C6|D6|
|3|A3|B3|C3|D3|A7|B7|C7|D7|

* ***Combinar dos DataFrames con columnas idénticas***

````python

df1 = pd.DataFrame([['a', 1], ['b', 2]],
                   columns=['letra', 'número'])

df2 = pd.DataFrame([['c', 3], ['d', 4]],
                   columns=['letra', 'número'])

pd.concat([df1, df2])
````

* ***Resultado ````.concat````***:

|index|letra|número|
|---|---|---|
|0|a|1|
|1|b|2|
|0|c|3|
|1|d|4|

* ***Combinar DataFrames con columnas superpuestas (no iguales) y que devuelve todo (las columnas fuera de la intersección se rellenarán con valores NaN)***  

````python
df3 = pd.DataFrame([['c', 3, 'gato'], ['d', 4, 'perro']],
                   columns=['letra', 'número', 'animal'])

pd.concat([df1, df3], sort=False)
````

* ***Resultado ````.concat````***:

|index|letra|número|animal|
|---|---|---|---|
|0|a|1|NaN|
|1|b|2|NaN|
|0|c|3|gato|
|1|d|4|perro|

* ***Combinar DataFrames con columnas superpuestas y devuelve solo aquellos que se comparten, pasando el argumento de palabra clave de ````.join```` , ````.inner````***  

````python
pd.concat([df1, df3], join="inner")
````

* ***Resultado ````.concat````***:

|index|letra|número|
|---|---|---|
|0|a|1|
|1|b|2|
|0|c|3|
|1|d|4|

* ***Combinar DataFrames horizontalmente a lo largo del eje x***  

````python
df4 = pd.DataFrame([['pájaro', 'Polly'], ['mono', 'Jorge']],
                   columns=['animal', 'nombre'])

pd.concat([df1, df4], axis=1)
````

* ***Resultado ````.concat````***:

|index|letra|número|animal|nombre|
|---|---|---|---|---|
|0|a|1|pájaro|Polly|
|1|b|2|mono|Jorge|

* **** ***Evitar que el resultado incluya valores de índice duplicados con la opción ````.verificar_integridad````***

````python
df5 = pd.DataFrame([1], index=['a'])

df6 = pd.DataFrame([2], index=['a'])

pd.concat([df5, df6], verify_integrity=True)
````

* ***Resultado ````.concat````***:

````python
<ipython-input-15-30bc53c86727> in <module>
      3 df6 = pd.DataFrame([2], index=['a'])
      4 
----> 5 pd.concat([df5, df6], verify_integrity=True)

7 frames
/usr/local/lib/python3.9/dist-packages/pandas/core/reshape/concat.py in _maybe_check_integrity(self, concat_index)
    680             if not concat_index.is_unique:
    681                 overlap = concat_index[concat_index.duplicated()].unique()
--> 682                 raise ValueError(f"Indexes have overlapping values: {overlap}")
    683 
    684 

ValueError: Indexes have overlapping values: Index(['a'], dtype='object')
````

* ***Agregare una sola fila al final de un objeto DataFrame***

````python
df7 = pd.DataFrame({'a': 1, 'b': 2}, index=[0])

nueva_fila = pd.Series({'a': 3, 'b': 4})

pd.concat([df7, nueva_fila.to_frame().T], ignore_index=True)

````

* ***Resultado ````.concat````***:

|index|a|b|
|---|---|---|
|0|1|2|
|1|3|4|

### ***Merge***

Combina objetos DataFrame o Serie con nombre, con una combinación al estilo de las BD. Un objeto Serie con nombre se trata como un marco de datos con una sola columna con nombre.

La unión se realiza por columnas o índices. Si se unen columnas sobre columnas, se ignorarán los índices de los DataFrames. De lo contrario, si se unen índices sobre índices, o índices sobre columnas o columnas, se pasará el índice. Al realizar una combinación cruzada, no se permiten especificaciones de columna para combinar.

       DataFrame.merge(right, how='inner', on=None, left_on=None, right_on=None, left_index=False, right_index=False, sort=False, suffixes=('_x', '_y'), copy=True, indicator=False, validate=None)

Parámetros: 

   * *Derecha (right)*: DataFrame o Serie con nombre. Objeto con el que fusionarse  
   * *Cómo (how)*: {'izquierda', 'derecha', 'externa', 'interna', 'cruzada'}, por defecto 'interior'. Tipo de fusión a realizar
       * *Izquierda (left)*: Usa solo claves del df izquierdo, similar a una combinación externa por la izquierda, de SQL. Conserva el orden de las claves  
       * *Derecha (right)*: Usa solo claves del df derecho, similar a una combinación externa por la derecha, de SQL. Conserva el orden de las claves  
       * *Externa (outer)*: Usa la unión de claves de ambos df's, similar a una combinación externa completa, de SQL. Ordena claves lexicográficamente  
       * *Interna (inner)*: Usa la intersección de claves de ambos df's, similar a una combinación interna, de SQL. Conserva el orden de las claves izquierdas  
       * *Cruzada (cross)*: Hace el producto cartesiano de ambos df's, conserva el orden de las claves izquierdas  
   * *En (on)*: Etiqueta o lista. Nombres a nivel de columna o índice para hacer la unión. Estos deben encontrarse en ambos df's. Si están en Ninguno y no se fusionan en los índices, entonces, por defecto, cogen la intersección de las columnas en ambos df`s   
   * *left_on*: Etiqueta o lista, o tipo array. Nombres a nivel de columna o índice para unirse en el df izquierdo. También puede ser un array o una lista de arrays de la longitud del df izquierdo. Estos arrays se tratan como si fueran columnas  
   * *right_on*: Etiqueta o lista, o tipo array. Nombres a nivel de columna o índice para unirse en el df derecho. También puede ser un array o una lista de arrays de la longitud del df correcto. Estos arrays se tratan como si fueran columnas  
   * *left_index*: Booleano, por defecto Falso. Usa el índice del df izquierdo como la(s) clave(s) de la unión. Si es un índice múltiple, la cantidad de claves en el otro df (ya sea el índice o el número de columnas) debe coincidir con la cantidad de niveles  
   * *right_index*: Booleano, por defecto Falso. Usa el índice del df derecho como clave de unión. Mismas notas que left_index  
   * *Ordenación*: Booleano, por defecto Falso. Ordena las claves de combinación lexicográficamente en el df resultante. Si es Falso, el orden de las claves de unión depende del tipo de unión (palabra clave *how*)  
   * *Sufijos*: Tipo lista, por defecto es (“_x”, “_y”). Una secuencia de longitud 2 donde cada elemento es opcionalmente una cadena que indica el sufijo para agregar a los nombres de columna superpuestos a la izquierda y a la derecha respectivamente. Pasa un valor de Ninguno en lugar de una cadena para indicar que el nombre de la columna de la izquierda o la derecha debe dejarse tal cual, sin sufijo. Al menos uno de los valores no debe ser Ninguno  
   * *Copia*: Booleano, por defecto True. Si es Falso, evita la copia si es posible  
   * *Indicador*: Booleano o cadena, predeterminado Falso. Si es True, agrega una columna al df de salida llamada "_merge" con información sobre el origen de cada fila. La columna puede recibir un nombre diferente proporcionando un argumento de tipo string. La columna tendrá un tipo categórico con el valor de "left_only" para las observaciones cuya clave de fusión solo aparece en el df izquierdo, "right_only" para las observaciones cuya clave de fusión solo aparece en el df derecho y "ambas" si la clave de fusión de la observación se encuentra en ambos df's    
   * *Validar*: Cadena, opcional. Si se especifica, comprueba si la fusión es del tipo especificado  
       * *“one_to_one” o “1:1”*: Verifica si las claves de combinación son únicas en los conjuntos de datos izquierdo y derecho  
       * *“one_to_many” o “1:m”*: Verifica si las claves de combinación son únicas en el conjunto de datos izquierdo  
       * *“many_to_one” o “m:1”*: Verifica si las claves de combinación son únicas en el conjunto de datos correcto  
       * *“many_to_many” o “m:m”*: Permitido, pero no genera resultados en los tests  

*Retorno*: DataFrame. Un df de los dos objetos fusionados  

* ***Creamos DataFrames***  

````python
izq = pd.DataFrame({'key' : ['k0', 'k1', 'k2','k3'],
 'A' : ['A0', 'A1', 'A2','A3'],
'B': ['B0', 'B1', 'B2','B3']})

der = pd.DataFrame({'key' : ['k0', 'k1', 'k2','k3'],
 'C' : ['C0', 'C1', 'C2','C3'],
'D': ['D0', 'D1', 'D2','D3']})
````

* ***Resultado izq***:

|index|key|A|B|
|---|---|---|---|
|0|k0|A0|B0|
|1|k1|A1|B1|
|2|k2|A2|B2|
|3|k3|A3|B3|

* ***Resultado der***:

|index|key|C|D|
|---|---|---|---|
|0|k0|C0|D0|
|1|k1|C1|D1|
|2|k2|C2|D2|
|3|k3|C3|D3|

* ***Unir el DataFrame de izquierda a derecha***  

````python
izq.merge(der)
````

* ***Resultado ````.merge````***:

|index|key|A|B|C|D|
|---|---|---|---|---|---|
|0|k0|A0|B0|C0|D0|
|1|k1|A1|B1|C1|D1|
|2|k2|A2|B2|C2|D2|
|3|k3|A3|B3|C3|D3|

* ***Definición de otros dos df***  

````python
izq = pd.DataFrame({'key' : ['k0', 'k1', 'k2','k3'],
 'A' : ['A0', 'A1', 'A2','A3'],
'B': ['B0', 'B1', 'B2','B3']})

der = pd.DataFrame({'key_2' : ['k0', 'k1', 'k2','k3'],
 'C' : ['C0', 'C1', 'C2','C3'],
'D': ['D0', 'D1', 'D2','D3']})
````

* ***Resultado izq***:

|index|key|A|B|
|---|---|---|---|
|0|k0|A0|B0|
|1|k1|A1|B1|
|2|k2|A2|B2|
|3|k3|A3|B3|

* ***Resultado der***:

|index|key\_2|C|D|
|---|---|---|---|
|0|k0|C0|D0|
|1|k1|C1|D1|
|2|k2|C2|D2|
|3|k3|C3|D3|

* ***Unión por la izquierda y teniendo en cuenta las claves:***  

````python
izq.merge(der, left_on = 'key', right_on='key_2')
````

|index|key|A|B|key\_2|C|D|
|---|---|---|---|---|---|---|
|0|k0|A0|B0|k0|C0|D0|
|1|k1|A1|B1|k1|C1|D1|
|2|k2|A2|B2|k2|C2|D2|
|3|k3|A3|B3|k3|C3|D3|

* ***Definición de df`s***  

````python
izq = pd.DataFrame({'key' : ['k0', 'k1', 'k2','k3'],
 'A' : ['A0', 'A1', 'A2','A3'],
'B': ['B0', 'B1', 'B2','B3']})

der = pd.DataFrame({'key_2' : ['k0', 'k1', 'k2',np.nan],
 'C' : ['C0', 'C1', 'C2','C3'],
'D': ['D0', 'D1', 'D2','D3']})
````

* ***Si tenemos un NaN el df, no hará mach, en el segundo conjunto. Se da preferencia con el parámetro How***  

````python
izq.merge(der, left_on = 'key', right_on='key_2', how='left')
````

|index|key|A|B|key\_2|C|D|
|---|---|---|---|---|---|---|
|0|k0|A0|B0|k0|C0|D0|
|1|k1|A1|B1|k1|C1|D1|
|2|k2|A2|B2|k2|C2|D2|
|3|k3|A3|B3|NaN|NaN|NaN|

* ***Definición de df's***:

````python
df1 = pd.DataFrame({'lkey': ['foo', 'bar', 'baz', 'foo'],
                    'value': [1, 2, 3, 5]})
df2 = pd.DataFrame({'rkey': ['foo', 'bar', 'baz', 'foo'],
                    'value': [5, 6, 7, 8]})
````

|index|lkey|value|
|---|---|---|
|0|foo|1|
|1|bar|2|
|2|baz|3|
|3|foo|5|

|index|rkey|value|
|---|---|---|
|0|foo|5|
|1|bar|6|
|2|baz|7|
|3|foo|8|

* ***Combina por la derecha***:

````python
df1.merge(df2, left_on='lkey', right_on='rkey')
````

|index|lkey|value\_x|rkey|value\_y|
|---|---|---|---|---|
|0|foo|1|foo|5|
|1|foo|1|foo|8|
|2|foo|5|foo|5|
|3|foo|5|foo|8|
|4|bar|2|bar|6|
|5|baz|3|baz|7|

* ***Combina df1 y df2 con los sufijos (izquierdo y derecho) especificados, adjuntos a las columnas superpuestas***

````python
df1.merge(df2, left_on='lkey', right_on='rkey',
          suffixes=('_left', '_right'))
````

|index|lkey|value\_left|rkey|value\_right|
|---|---|---|---|---|
|0|foo|1|foo|5|
|1|foo|1|foo|8|
|2|foo|5|foo|5|
|3|foo|5|foo|8|
|4|bar|2|bar|6|
|5|baz|3|baz|7|

* ***Combina df1 y df2, pero genera una excepción si los df's tienen columnas superpuestas***  

````python
df1.merge(df2, left_on='lkey', right_on='rkey', suffixes=(False, False))

---------------------------------------------------------------------------
ValueError                                Traceback (most recent call last)
<ipython-input-14-8c3fa01e33cf> in <module>
----> 1 df1.merge(df2, left_on='lkey', right_on='rkey', suffixes=(False, False))

3 frames
/usr/local/lib/python3.9/dist-packages/pandas/core/reshape/merge.py in _items_overlap_with_suffix(left, right, suffixes)
   2315 
   2316     if not lsuffix and not rsuffix:
-> 2317         raise ValueError(f"columns overlap but no suffix specified: {to_rename}")
   2318 
   2319     def renamer(x, suffix):

ValueError: columns overlap but no suffix specified: Index(['value'], dtype='object')
````

* ***Definición de df's***:

````python
df1 = pd.DataFrame({'a': ['foo', 'bar'], 'b': [1, 2]})
df2 = pd.DataFrame({'a': ['foo', 'baz'], 'c': [3, 4]})
````

|index|a|b|
|---|---|---|
|0|foo|1|
|1|bar|2|

|index|a|c|
|---|---|---|
|0|foo|3|
|1|baz|4|

* ***Conbinación interna, por la columna a***:

````python
df1.merge(df2, how='inner', on='a')
````

|index|a|b|c|
|---|---|---|---|
|0|foo|1|3|

* ***Combinación por la izquierda, por la columna a***:

````python
df1.merge(df2, how='left', on='a')
````

|index|a|b|c|
|---|---|---|---|
|0|foo|1|3\.0|
|1|bar|2|NaN|

* ***Definición de df's***:

````python
df1 = pd.DataFrame({'left': ['foo', 'bar']})
df2 = pd.DataFrame({'right': [7, 8]})
````

|index|left|
|---|---|
|0|foo|
|1|bar|

|index|right|
|---|---|
|0|7|
|1|8|

* ***Combinación cruzada (producto cartesiano)***:

````python
df1.merge(df2, how='cross')
````

|index|left|right|
|---|---|---|
|0|foo|7|
|1|foo|8|
|2|bar|7|
|3|bar|8|

## Join

````.join```` unie columnas con otro df ya sea con el índice o con una columna clave (no columnas específicas, como anteriormente). Une de una manera eficiente varios df por un índice, a la vez, pasando una lista  

       DataFrame.join(other, on=None, how='left', lsuffix='', rsuffix='', sort=False, validate=None)

Parámetros: 

   * *Otro (other)*: DataFrame, Serie o una lista que contenga cualquier combinación de ellos. El índice debe ser similar a una de las columnas de esta. Si se pasa una serie, se debe establecer su atributo de nombre, y ese se usará como el nombre de la columna en el df unido resultante  
   * *En (on)*: String, lista de string o tipo array, opcional. Se debe poner nombre(s) a nivel de columna o índice en el df llamador para unirse al otro índice, de lo contrario, se unirá a índice sobre índice. Si se dan múltiples valores, el otro df debe tener un índice múltiple. Podemos pasar un array como clave de unión si aún no está contenida en el df que llama. Es como una operación BUSCARV de Excel  
   * *Cómo (how)*: {'izquierda', 'derecha', 'exterior', 'interior'}, predeterminado 'izquierda'. Indica cómo manejar la operación con los dos objetos  
       * *Izquierda (left)*: Usa el índice del df (o la columna si se especifica)  
       * *Derecha (right)*: Usa usa el índice del otro df   
       * *Externa (outer)*: Forma la unión del índice df (o columna si se especifica) con el índice del otro, y lo ordena lexicográficamente  
       * *Interna (inner)*: Forma la intersección del índice del df de llamada (o columna si se especifica) con el índice del otro, conservando el orden del que llama   
       * *Cruzada (cross)*: Crea el producto cartesiano de ambos df, conserva el orden de las claves izquierdas  
   * *Sufijos por la izquierda (lsuffix)*: String por defecto. Sufijo a usar en las columnas superpuestas del df izquierdo  
   * *Sufijos por la derecha (rsuffix)*: String por defecto. Sufijo a usar en las columnas superpuestas del df derecho  
   * *Ordenación (sort)*: Booleano, por defecto Falso. Ordena el df de resultado lexicográficamente por la clave de unión. Si es Falso, el orden de la clave de unión depende del tipo de unión (palabra clave *how*)     
   * *Validar*: String, opcional. Si se especifica, comprueba si la combinación es del tipo especificado  
       * *“one_to_one” o “1:1”*: Verifica si las claves de combinación son únicas en los conjuntos de datos izquierdo y derecho  
       * *“one_to_many” o “1:m”*: Verifica si las claves de unión son únicas en el conjunto de datos izquierdo  
       * *“many_to_one” o “m:1”*: Verifica si las claves de unión son únicas en el conjunto de datos correcto  
       * *“many_to_many” o “m:m”*: Permitido, pero no genera resultados en los tests  

*Retorno*: DataFrame. Un df que contiene columnas tanto del llamador como del otro    

* ***Definición de los df's***  

````python
izq = pd.DataFrame({'A': ['A0','A1','A2'],
  'B':['B0','B1','B2']},
  index=['k0','k1','k2'])

der =pd.DataFrame({'C': ['C0','C1','C2'],
  'D':['D0','D1','D2']},
  index=['k0','k2','k3']) 
````

|index|A|B|
|---|---|---|
|k0|A0|B0|
|k1|A1|B1|
|k2|A2|B2|

|index|C|D|
|---|---|---|
|k0|C0|D0|
|k2|C1|D1|
|k3|C2|D2|

* ***Unión por la izquierda***  

````python
izq.join(der)
````

|index|A|B|C|D|
|---|---|---|---|---|
|k0|A0|B0|C0|D0|
|k1|A1|B1|NaN|NaN|
|k2|A2|B2|C1|D1|

* ***Unión externa (todos)***  

````python
izq.join(der, how = 'outer')
````

|index|A|B|C|D|
|---|---|---|---|---|
|k0|A0|B0|C0|D0|
|k1|A1|B1|NaN|NaN|
|k2|A2|B2|C1|D1|
|k3|NaN|NaN|C2|D2|

* ***Definición de los df's***  

````python
df = pd.DataFrame({'key': ['K0', 'K1', 'K2', 'K3', 'K4', 'K5'],
                   'A': ['A0', 'A1', 'A2', 'A3', 'A4', 'A5']})
other = pd.DataFrame({'key': ['K0', 'K1', 'K2'],
                      'B': ['B0', 'B1', 'B2']})
````
|index|key|A|
|---|---|---|
|0|K0|A0|
|1|K1|A1|
|2|K2|A2|
|3|K3|A3|
|4|K4|A4|
|5|K5|A5|

|index|key|B|
|---|---|---|
|0|K0|B0|
|1|K1|B1|
|2|K2|B2|

* ***Unión con sufujos***:  

````python
df.join(other, lsuffix='_caller', rsuffix='_other')
````

|index|key\_caller|A|key\_other|B|
|---|---|---|---|---|
|0|K0|A0|K0|B0|
|1|K1|A1|K1|B1|
|2|K2|A2|K2|B2|
|3|K3|A3|NaN|NaN|
|4|K4|A4|NaN|NaN|
|5|K5|A5|NaN|NaN|

* ***Unión por índices***:  

````python
df.set_index('key').join(other.set_index('key'))
````

|key|A|B|
|---|---|---|
|K0|A0|B0|
|K1|A1|B1|
|K2|A2|B2|
|K3|A3|NaN|
|K4|A4|NaN|
|K5|A5|NaN|

* ***Otra opción para unir usando las columnas clave, es usar el parámetro on. ````.join```` siempre usa el índice del otro, pero podemos usar cualquier columna en df. Este método conserva el índice del df original en el resultado***:  

````python
df.join(other.set_index('key'), on='key')
````

|index|key|A|B|
|---|---|---|---|
|0|K0|A0|B0|
|1|K1|A1|B1|
|2|K2|A2|B2|
|3|K3|A3|NaN|
|4|K4|A4|NaN|
|5|K5|A5|NaN|

* ***Usando valores clave no únicos muestra cómo se combinan***:  

````python
df = pd.DataFrame({'key': ['K0', 'K1', 'K1', 'K3', 'K0', 'K1'],
                   'A': ['A0', 'A1', 'A2', 'A3', 'A4', 'A5']})
````

|index|key|A|
|---|---|---|
|0|K0|A0|
|1|K1|A1|
|2|K1|A2|
|3|K3|A3|
|4|K0|A4|
|5|K1|A5|

````python
df.join(other.set_index('key'), on='key', validate='m:1')
````
|key|A|B|
|---|-|-|
|0|K0|A0|B0|
|1|K1|A1|B1|
|2|K1|A2|B1|
|3|K3|A3|NaN|
|4|K0|A4|B0|
|5|K1|A5|B1|

* ***Pregunta***:   

En temas de performance (rendimiento) y velocidad, ¿cuál es mejor, Merge o Join, cuando se trata de miles de registros?  

*Respuesta*:  

***join suele ser mejor***  
@alarcon7a, Profesor de Platzi  

## Pivot y Melt

Pivot_table y melt, dos funciones que sirven para cambiar la estructura de nuestro DataFrame de acuerdo a nuestras necesidades  

### ***````.pivot_table````***  

Esta función puede traer recuerdos del SQL, ya que Oracle, PostgreSQL y otros motores de BD la tienen implementada desde hace muchos años. Pivot, básicamente, transforma los valores de determinadas columnas o filas en los índices de un nuevo df, y la intersección de estos es el valor resultante  

Esto puede sonar algo confuso, pero todo queda mucho más claro con un ejemplo  

1. Para comenzar, crearemos un nuevo Jupyter Notebooks, podemos usar Google Colab o la notebook de nuestra preferencia que estemos utilizando  

2. Cargaremos el DataFrame que hemos usado en el curso:  

````python
df_books = pd.read_csv('bestsellers with categories.csv',sep=',',header=0)
````

3. Explóralo viendo sus primeras 5 filas:  

````python
df_books.head()
````

|index|Name|Author|User Rating|Reviews|Price|Year|Genre|
|---|---|---|---|---|---|---|---|
|0|10-Day Green Smoothie Cleanse|JJ Smith|4\.7|17350|8|2016|Non Fiction|
|1|11/22/63: A Novel|Stephen King|4\.6|2052|22|2011|Fiction|
|2|12 Rules for Life: An Antidote to Chaos|Jordan B\. Peterson|4\.7|18979|15|2018|Non Fiction|
|3|1984 \(Signet Classics\)|George Orwell|4\.7|21424|6|2017|Fiction|
|4|5,000 Awesome Facts \(About Everything\!\) \(National Geographic Kids\)|National Geographic Kids|4\.8|7665|12|2019|Non Fiction|

4. Aplicamos pivot_table:  

````python
df_books.pivot_table(index='Author',columns='Genre',values='User Rating')
````
![Pivot table 1](https://i.imgur.com/n4DlLm1.png)


Como resultado, los valores de Author pasan a formar el índice por fila y los valores de Genre pasan a formar parte de los índices por columna, y el User Rating se mantiene como valor  

![Pivot table 2](https://i.imgur.com/LHPuzar.png)

Por supuesto, para este caso, un Author suele tener un solo género literario, así que no es una transformación muy útil, pero veamos si podemos lograr algo mejor  

5. Ejecutemos la siguiente variación:  

````python
df_books.pivot_table(index='Genre',columns='Year', values='User Rating',aggfunc='sum')
````

En este caso tenemos por cada género, la suma a lo largo de los años. Esto es mucho más interesante. La mejor noticia es que no solo podemos obtener la suma, también podemos obtener la media, la desviación estándar, el conteo, la varianza, etc. Únicamente con cambiar el parámetro aggfunc que traduce función de agrupamiento  

![Pivot table 3](https://i.imgur.com/fStnOcc.png)

### ***````.melt````***

El método melt toma las columnas del df y las pasa a filas, con dos nuevas columnas para especificar la antigua columna y el valor que traía  

Por ejemplo, simplemente al imprimir las cinco primeras filas del df con las columnas de Name y Genre se tiene este resultado  

1. Para ello ejecutemos la siguiente línea en nuestro Jupyter Notebook:  

````python
df_books[['Name','Genre']].head(5)
````

![Melt 1](https://i.imgur.com/aVknR54.png)  

2. Aplicamos melt de la siguiente manera:  

````python
df_books[['Name','Genre']].head(5).melt()
````

![Melt 2](https://i.imgur.com/Vaw3THQ.png)  

Ahora cada resultado de las dos columnas pasa a una fila de este modo a tipo **clave:valor**  

3. En el siguiente ejemplo ejecutemos melt de esta manera:  

````python
df_books.melt(id_vars='Year',value_vars='Genre')
````

![Melt 3](https://i.imgur.com/N3HXKbq.png)  

Simplemente, podemos seleccionar las columnas que no queramos hacer melt usando el parámetro id_vars. Para este caso Year y también la única columna que queremos aplicar el melt, para este caso Genre con la propiedad value_vars  

## ````.apply()````

````.apply()```` es un comando muy poderoso que nos deja aplicar funciones a nuestro DataFrame  

* ***Creamos unos df's habituales***  

````python
import pandas as pd
df_books = pd.read_csv('/content//bestsellers-with-categories.csv')
df_books.head(2)
````

|index|Name|Author|User Rating|Reviews|Price|Year|Genre|
|---|---|---|---|---|---|---|---|
|0|10-Day Green Smoothie Cleanse|JJ Smith|4\.7|17350|8|2016|Non Fiction|
|1|11/22/63: A Novel|Stephen King|4\.6|2052|22|2011|Fiction|

* ***Creamos nuestra función***  

````python
def two_times(value):
    return value * 2
````

* ***Lo aplicamos a la columna de User Rating***  

````python
df_books['User Rating'].apply(two_times) # Se multiplica por 2 todos los valores de la columna

0      9.4
1      9.2
2      9.4
3      9.4
4      9.6
      ... 
545    9.8
546    9.4
547    9.4
548    9.4
549    9.4
Name: User Rating, Length: 550, dtype: float64
````

* ***Podemos guardarlo en una columna nueva***  

````python
df_books['User Rating2'] =df_books['User Rating'].apply(two_times)
````

* ***Se pueden crear lambda functions***  

````python
df_books['User Rating2'] =df_books['User Rating'].apply(lambda x: x* 3)  # Multiplica todos los valores por 3
````

* ***Apply en varias columnas con condiciones, hay que especificar a que los vamos a aplicar (filas o columnas)***  

````python
df_books.apply(lambda x: x['User Rating'] * 2 if x['Genre'] == 'Fiction' else x['User Rating'], axis = 1) # Multiplica por 2 a los datos que cumplan la condición 

0      4.7
1      9.2
2      4.7
3      9.4
4      4.8
      ... 
545    9.8
546    4.7
547    4.7
548    4.7
549    4.7
Length: 550, dtype: float64
````