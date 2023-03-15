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
