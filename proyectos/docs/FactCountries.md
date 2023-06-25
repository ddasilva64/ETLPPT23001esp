## **_FactCountries (Postgre SQL table)_**  

### **_PROWPI001\_FactCountries.KTR_**  
  1. #staging_02: staging\demography  
  2. #staging_03: staging\ecology  
  3. #staging_04: staging\economy  
  4. #staging_05: staging\education  
  5. #staging_06: staging\FactCountries 
  6. #staging_07: **_FactCountries_** (Postgre SQL table)  

   <p><br></p>  

  ![PDI transform](https://i.imgur.com/x1cya1l.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/DBRLP8z.png)  
  _PDI execution_ 

### **_<p><br>FactCountries layout</p>_**  

  | Key	| Name                  | Data type             | Not null | Attributes | References            | Description  | Metadata |
  | :-: | :-------------------- | :-------------------: | :------: | :--------- | :-------------------- | :----------- | :------- |
  | 1   | CountryCode           | Character variying(3) | X        |            |                       | PK,FK        | m001     |
  | 2   | Population            | integer               |          |            |                       |              | m005     |
  | 3   | PDR                   | real                  |          |            |                       |              | m006     |
  | 4   | PGR                   | real                  |          |            |                       |              | m007     |  
  | 5   | CO2PC                 | real                  |          |            |                       |              | m008     |
  | 6   | MFPC                  | real                  |          |            |                       |              | m009     | 
  | 7   | GDPG                  | real                  |          |            |                       |              | m010     |
  | 8   | GNIPC                 | real                  |          |            |                       |              | m011     |
  | 9   | FGNIPC                | real                  |          |            |                       |              | m012     |
  | 10  | MGNIPC                | real                  |          |            |                       |              | m013     |
  | 11  | FLFPR                 | real                  |          |            |                       |              | m014     |
  | 12  | MLFPR                 | real                  |          |            |                       |              | m015     |
  | 13  | PDGDP                 | real                  |          |            |                       |              | m016     | 
  | 14  | EYS                   | real                  |          |            |                       |              | m017     |
  | 15  | FEYS                  | real                  |          |            |                       |              | m018     |
  | 16  | MEYS                  | real                  |          |            |                       |              | m019     |
  | 17  | FSSE                  | real                  |          |            |                       |              | m020     |
  | 18  | MSSE                  | real                  |          |            |                       |              | m021     |
  | 19  | CHEGDP                | real                  |          |            |                       |              | m022     | 
  | 20  | CHEPCUSD              | real                  |          |            |                       |              | m023     |
  | 21  | LE                    | real                  |          |            |                       |              | m024     |
  | 22  | FLE                   | real                  |          |            |                       |              | m025     |
  | 23  | MLE                   | real                  |          |            |                       |              | m026     |
  | 24  | MMR                   | integer               |          |            |                       |              | m027     |
  | 25  | TBR                   | real                  |          |            |                       |              | m028     |

   <p><br></p>  
 
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/kmDllqX.png) 
  _Postgres SQL's transactions checking in PgAdmin_  

  **_QA_**: You can download data sources, and **_PDI_** transformations to chek it  

[PROWPI001 ETL :arrow_up:](prowpi001_etl.md)  

[Back to Table of contents :arrow_double_up:](../README.md)

















--------------------------

    
**_Warning_**!: Remember that field names are standard (the first character of the word is uppercase, and no spaces between words). That means that in the output table name and table field names (in POI), we need to write them (table and fields) in double quotes  

![Be atention in standard names in Postgre SQL output tables](https://i.imgur.com/bHgo76C.png)  
_Be atention in standard names in Postgre SQL output tables_

**_Notices_**: See our, worldwide well-known standard, project [**_PROWPI001_**](https://github.com/ddasilva64/MTDPDN23001esp/blob/master/proyectos/PROWPI001.ipynb), for **_raw_** documentation (URL, licenses, and so on). All staging files or tables have their field types in **_Postgre SQL_** types, because target DB is **_DWH_** in **_Postgre SQL_**. Countries are the 193 countries recognized by the **_UN_** in 2021. In **_FactCountries_** we will add the year of the measurements (e.g. 2021)  

**_staging\metadata_** values (not layout)

| Key      	| Meaning                                 | Standard              | Formula                                                                  | Units |
| :-------: | :-------------------------------------- | :-------------------: | :----------------------------------------------------------------------- | :---: |
| m001      | Country code                            | Standard ISO3         |                                                                          |       |
| m002      | Country standard name                   |                       |                                                                          |       |
| m003      | Country area                            |                       |                                                                          | Km2   |
| m004      | Region standardized name                |                       |                                                                          |       |
| m005      | Country Population in the year          |                       |                                                                          |       |
| m006      | Population Density Rate                 |                       | population/Km2                                                           |       |
| m007      | Population Growth Rate                  |                       | (t1-t0)/t0 x 100; t0=last year population; t1= current year population   | %     |
| m008      | CO2 emissions Per Capita                |                       | e1 /t1; e1=current year total CO2 emissions; t1= current year population | Tons  |
| m009      | Material Footprint Per Capita           |                       | (de + rmeim - rmeex)/t1; de = domestic extraction of materials; rmeim = raw material equivalent of imports; rmeex = – raw material equivalents of exports; t1= current year population | Tons  |
| m010      | Gross Domestic Product                  |                       | pc + gpi + gi + gs + (e – i); pc=private consumption; gpi=gross private investment; gi=government investment; gs=government spending; e=exports; i=imports; Gross Domestic Product Growth = GDP1-GDP0/GDP0; GDP1=GDP current year (adjusted for inflation); GDP0=GDP last year (adjusted for inflation) | US$   |
| m011      | Gross National Income Per Capita        |                       | gni/population; gni= gdp + (inward remittances by businesses and individuals – outward remittance by the foreigners residing in the country) | US$   |
| m012      | Female Gross National Income Per Capita |                       |                                                                             | US$   |
| m013      | Male Gros National Income Per Capita    |                       |                                                                             | US$   |
| m014      | Female Labor Force Participation Rate   |                       | flf / twap x 100; flf=female labor force; twap=total working-age population | %     |
| m015      | Male Labor Force Participation Rate     |                       |                                                                             | %     |
| m016      | Public Debt as % of GDP                 |                       | pd / gdp; pd=public debt at the end of a 12-month period; gdp=GDP during that period | %     |
| m017      | Expected Years of Shooling              |                       | years a child of school entrance age is expected to spend at school, or university, including years spent on repetition | years  |
| m018      | Female Years of Schooling               |                       |                                                                             | years  |
| m019      | Male Years of Schooling                 |                       |                                                                             | years  |
| m020      | Female Some Secondary Education         |                       |                                                                             | years  |
| m021      | Male Some Secondary Education           |                       |                                                                             | years  |
| m022      | Current FactCountries Expenditure % of GDP     |                       |                                                                             | %      |
| m023      | Current FactCountries Expenditure Per Capita in US$ |                  |                                                                             | US$    |
| m024      | Life Expectancy at birth                |                       | number of years a newborn infant would live if prevailing patterns of mortality at the time of its birth were to stay the same throughout its life | years  |
| m025      | Female Years of Life Expectancy         |                       |                                                                             | years  |
| m026      | Male Years of Life Expectancy           |                       |                                                                             | years  |
| m027      | Maternal Mortality Rate                 |                       | number of maternal deaths in a year / number of live births for the same period x 100,000 | %      |
| m028      | Teen Birth Rate                         |                       | number of resident live births to mothers ages 15-19 / number of resident women aged 15-19 | %      |

**_staging\metadata_** (layout, directly in **_Postgre SQL_**)

| Key	| Name                  | Data type              | Not null | Attributes | References            | Description |
| :-: | :-------------------- | :--------------------: | :------: | :--------- | :-------------------- | :-----------| 
| 1   | Key                   | Character variying(4)  | X        |            |                       | PK,FK       |
| 2   | Meaning               | Character variying(60) | X        |            |                       |             |
| 3   | Standard              | Character variying(20) |          |            |                       |             |
| 4   | Formula               | Character variying(500)|          |            |                       |             |
| 5   | Units                 | Character variying(10) |          |            |                       |             |

**_<p><br>Transform execution</p>_**

![PDI transform](https://i.imgur.com/CbadLTK.png)
_PDI transform_
![PDI execution](https://i.imgur.com/YBlCsl3.png)  
_PDI execution_
![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/pE5JLH2.png) 
_Postgres SQL's transactions checking in PgAdmin_

**_Atention!_**: While the importance of metadata cannot be overstated, the reason to use it is to help drive reporting accuracy, validate data transformation, and ensure calculation accuracy. Metadata also imposes the definition of terms such as indicators, standards, etc. In the development of the DWH, metadata appears, and with it arises the need to create a table with this content  