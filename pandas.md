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


