## DE (Data Engineering)  

### **_Source tables_**  

#### **_PROWPI001 ETL_**  

  - **_[DimCountries.XML](DimCountries.XML.md)_**  


  2. **_PROWPI001_demography.KTR_**  
    2.1. #raw_03: 2021_population.CSV 
    2.2. #raw_02: countries_eng.CSV  
    2.2. #raw_05: arrangements/XML country demography not match input.XML  
    2.3. #staging_02: **_staging\demography.XML_**  
    
  **_<p><br>staging\demography.XML layout</p>_**  

  | Key	| Name                  | Data type             | Not null | Attributes | References            | Description  | Metadata |
  | :-: | :-------------------- | :-------------------: | :------: | :--------- | :-------------------- | :----------- | :------- |
  | 1   | CountryCode           | Character variying(3) | X        |            |                       | PK,FK        | m001     |
  | 2   | Population            | integer               |          |            |                       |              | m005     |
  | 3   | PDR                   | real                  |          |            |                       |              | m006     |
  | 4   | PGR                   | real                  |          |            |                       |              | m007     |  

  **_<p><br>Transform execution</p>_**

  ![PDI transform](https://i.imgur.com/U6U8y0p.png)
  _PDI transform_
  ![PDI execution](https://i.imgur.com/9VYrTCl.png)  
  _PDI execution_
  ![XML file checking](https://i.imgur.com/p7KbdVZ.png) 
  _XML file checking_
    
  3. **_PROWPI001_ecology.KTR_**  
    3.1. #raw_06: HDR21-22_Composite_indices_complete_time_series.CSV  
    3.2. #raw_02: countries_eng.CSV  
    3.3. #staging_03: staging\ecology.XML  

  **_<p><br>staging\ecology.XML layout</p>_**  

  | Key	| Name                  | Data type             | Not null | Attributes | References            | Description | Metadata |
  | :-: | :-------------------- | :-------------------: | :------: | :--------- | :-------------------- | :-----------| :------- |
  | 1   | CountryCode           | Character variying(3) | X        |            |                       | PK,FK       | m001     |
  | 2   | CO2PC                 | real                  |          |            |                       |             | m008     |
  | 3   | MFPC                  | real                  |          |            |                       |             | m009     |  

  **_<p><br>Transform execution</p>_**

  ![PDI transform](https://i.imgur.com/ROtuoqS.png)
  _PDI transform_
  ![PDI execution](https://i.imgur.com/xmuK1GA.png)  
  _PDI execution_
  ![XML file checking](https://i.imgur.com/6HS55VU.png) 
  _XML file checking_

  4. **_PROWPI001_economy.KTR_**  
    4.1. #raw_07: API_NY.GDP.MKTP.KD.ZG_DS2_en_csv_v2_4701072.CSV  
    4.2. #raw_06: HDR21-22_Composite_indices_complete_time_series.CSV  
    4.3. #raw_02: countries_eng.CSV  
    4.4. #raw_08: WEO_Data_01.CSV  
    4.5. #raw_09: WEO_Data_02.CSV  
    4.6. #staging_04: staging\economy.XML  

  **_<p><br>staging\economy.XML layout</p>_** 

  | Key	| Name                  | Data type             | Not null | Attributes | References            | Description | Metadata |
  | :-: | :-------------------- | :-------------------: | :------: | :--------- | :-------------------- | :-----------| :------- |
  | 1   | CountryCode           | Character variying(3) | X        |            |                       | PK,FK       | m001     |
  | 2   | GDPG                  | real                  |          |            |                       |             | m010     |
  | 3   | GNIPC                 | real                  |          |            |                       |             | m011     |
  | 4   | FGNIPC                | real                  |          |            |                       |             | m012     |
  | 5   | MGNIPC                | real                  |          |            |                       |             | m013     |
  | 6   | FLFPR                 | real                  |          |            |                       |             | m014     |
  | 7   | MLFPR                 | real                  |          |            |                       |             | m015     |
  | 8   | PDGDP                 | real                  |          |            |                       |             | m016     |

  **_<p><br>Transform execution</p>_**

  ![PDI transform](https://i.imgur.com/GZ8ZExc.png)
  _PDI transform_
  ![PDI execution](https://i.imgur.com/XXMKcs1.png)  
  _PDI execution_
  ![XML file checking](https://i.imgur.com/LJmQj4T.png) 
  _XML file checking_

  5. **_PROWPI001_education.KTR_**  
    5.1. #raw_06: HDR21-22_Composite_indices_complete_time_series.CSV  
    5.2. #raw_02: countries_eng.CSV  
    5.3. #staging_05: staging\education.XML  

  **_<p><br>staging\education.XML layout</p>_** 

  | Key	| Name                  | Data type             | Not null | Attributes | References            | Description | Metadata |
  | :-: | :-------------------- | :-------------------: | :------: | :--------- | :-------------------- | :-----------| :------- |
  | 1   | CountryCode           | Character variying(3) | X        |            |                       | PK,FK       | m001     |
  | 2   | EYS                   | real                  |          |            |                       |             | m017     |
  | 3   | FEYS                  | real                  |          |            |                       |             | m018     |
  | 4   | MEYS                  | real                  |          |            |                       |             | m019     |
  | 5   | FSSE                  | real                  |          |            |                       |             | m020     |
  | 6   | MSSE                  | real                  |          |            |                       |             | m021     |  

  **_<p><br>Transform execution</p>_**

  ![PDI transform](https://i.imgur.com/E1pOonB.png)
  _PDI transform_
  ![PDI execution](https://i.imgur.com/eczLhvU.png)  
  _PDI execution_
  ![XML file checking](https://i.imgur.com/zfeATj9.png) 
  _XML file checking_

  6. **_PROWPI001_health.KTR_**  
    6.1. #raw_06: HDR21-22_Composite_indices_complete_time_series.CSV  
    6.2. #raw_02: countries_eng.CSV  
    6.3. #raw_10: NHA indicators.XLSX
    6.4. #raw_11: arrangements/XML countries NHS not match input.XML  
    6.5. #staging_06: staging\health.XML  

  **_<p><br>staging\health.XML layout</p>_**  

  | Key	| Name                  | Data type             | Not null | Attributes | References            | Description | Metadata |
  | :-: | :-------------------- | :-------------------: | :------: | :--------- | :-------------------- | :-----------| :------- |
  | 1   | CountryCode           | Character variying(3) | X        |            |                       | PK,FK       | m001     |
  | 2   | CHEGDP                | real                  |          |            |                       |             | m022     | 
  | 3   | CHEPCUSD              | real                  |          |            |                       |             | m023     |
  | 4   | LE                    | real                  |          |            |                       |             | m024     |
  | 5   | FLE                   | real                  |          |            |                       |             | m025     |
  | 6   | MLE                   | real                  |          |            |                       |             | m026     |
  | 7   | MMR                   | integer               |          |            |                       |             | m027     |
  | 8   | TBR                   | real                  |          |            |                       |             | m028     |

  **_<p><br>Transform execution</p>_**

  ![PDI transform](https://i.imgur.com/CYrxkwL.png)
  _PDI transform_
  ![PDI execution](https://i.imgur.com/tRRucKt.png)  
  _PDI execution_
  ![XML file checking](https://i.imgur.com/7gcWnrz.png) 
  _XML file checking_

  7. **_PROWPI001_fact.KTR_**  
    7.1. #staging_02: staging\demography.XML  
    7.2. #staging_03: staging\ecology.XML  
    7.3. #staging_04: staging\economy.XML  
    7.4. #staging_05: staging\education.XML  
    7.5. #staging_06: staging\health.XML 
    7.6. #staging_07: **_FactCountries_** (Postgre SQL table)  

  **_<p><br>FactCountries layout</p>_**  

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

  **_<p><br>Transform execution</p>_**

  ![PDI transform](https://i.imgur.com/x1cya1l.png)
  _PDI transform_
  ![PDI execution](https://i.imgur.com/DBRLP8z.png)  
  _PDI execution_
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/kmDllqX.png) 
  _Postgres SQL's transactions checking in PgAdmin_
    
**_Warning_**!: Remember that field names are standard (the first character of the word is uppercase, and no spaces between words). That means that in the output table name and table field names (in POI), we need to write them (table and fields) in double quotes  

![Be atention in standard names in Postgre SQL output tables](https://i.imgur.com/bHgo76C.png)  
_Be atention in standard names in Postgre SQL output tables_

**_Notices_**: See our, worldwide well-known standard, project [**_PROWPI001_**](https://github.com/ddasilva64/MTDPDN23001esp/blob/master/proyectos/PROWPI001.ipynb), for **_raw_** documentation (URL, licenses, and so on). All staging files or tables have their field types in **_Postgre SQL_** types, because target DB is **_DWH_** in **_Postgre SQL_**. Countries are the 193 countries recognized by the **_UN_** in 2021. In **_FactCountries_** we will add the year of the measurements (e.g. 2021)  

**_staging\metadata.XML_** values (not layout)

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
| m022      | Current Health Expenditure % of GDP     |                       |                                                                             | %      |
| m023      | Current Health Expenditure Per Capita in US$ |                  |                                                                             | US$    |
| m024      | Life Expectancy at birth                |                       | number of years a newborn infant would live if prevailing patterns of mortality at the time of its birth were to stay the same throughout its life | years  |
| m025      | Female Years of Life Expectancy         |                       |                                                                             | years  |
| m026      | Male Years of Life Expectancy           |                       |                                                                             | years  |
| m027      | Maternal Mortality Rate                 |                       | number of maternal deaths in a year / number of live births for the same period x 100,000 | %      |
| m028      | Teen Birth Rate                         |                       | number of resident live births to mothers ages 15-19 / number of resident women aged 15-19 | %      |

**_staging\metadata.XML_** (layout, directly in **_Postgre SQL_**)

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

[Back to Table of contents :arrow_double_up:](../README.md)