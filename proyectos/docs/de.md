## DE (Data Engineering)  

### **_Prework_**

1. Conversion from **_ETL of PROWPI001_** (**_Python_**) to **_ETL of PROWPI001_** (**_PDI_**), and test results  
1.1. Tables  
1.2. Data types  
1.3. QA (Quality Assurance)

### **_Source tables_**  

#### **_PROWPI001 ETL_**  

  1. **_PROWPI001_countries.KTR_**  
    1.1. #raw_01: PopulationDataWorldBank.XLSX  
    1.2. #raw_02: countries_eng.CSV  
    1.3. #raw_03: 2021_population.CSV  
    1.4. #raw_04: arrangements/XML country areas not match input.XML  
    1.5. #staging_01: **_DimCountries_** (Postgre SQL table)  

    **_<p><br>DimCountries layout</p>_**  

    | Key	| Name                  | Data type             | Not null | Attributes | References            | Description  | Metadata |
    | :-: | :-------------------- | :-------------------: | :------: | :--------- | :-------------------- | :----------- | :------- |
    | 1   | CountryCode           | Character variying(3) | X        |            |                       | PK           | m001     |  
    | 2   | Country               | Character variying(60)|          |            |                       |              | m002     |
    | 3   | Area                  | integer               |          |            |                       |              | m003     |
    | 4   | Region                | Character variying(30)|          |            |                       |              | m004     |

    **_<p><br>Transform execution</p>_**

    ![PDI transform](https://i.imgur.com/7vnbEs8.png)
    _PDI transform_
    ![PDI execution](https://i.imgur.com/5wh3IhK.png)  
    _PDI execution_
    ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/09gCq47.png) 
    _Postgres SQL's transactions checking in PgAdmin_

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
    | 9   | TBR                   | real                  |          |            |                       |             | m028     |

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
    7.6. #staged_07: **_FactCountries_** (Postgre SQL table)  

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

#### **_AdventureWorksDW2022 DB_**  

  1. **_ERD (Entity Relationship Diagram) DB_**  

![ERD DB](https://i.imgur.com/WE0X3Vo.png)

  2. **_ERD Internet sales subsistem_**

![ERD Internet sales subsistem](https://i.imgur.com/HLDMiTG.png)
_Internet sales subsistem in dbo schema_

  3. **_Internet sales subsistem tables_**   
  3.1. **_dbo.FactInternetSales_**  
  3.1.1. Columns  

| Key	| Name                  | Data type    | Not null | Attributes | References            | Description |
| :-: | :-------------------- | :----------: | :------: | :--------- | :-------------------- | :-----------|
| 1   | ProductKey            | int          | X        |            | dbo.DimProduct        | FK          |
| 2   | OrderDateKey          | int          | X        |            | dbo.DimDate	         | FK          |
| 3   | DueDateKey            | int          | X        |            | dbo.DimDate		       | FK          |
| 4   | ShipDateKey           | int          | X        |            | dbo.DimDate		       | FK          |
| 5   | CustomerKey           | int          | X        |            | dbo.DimCustomer       | FK          |
| 6   | PromotionKey          | int          | X        |            | dbo.DimPromotion      | FK          |
| 7   | CurrencyKey           | int          | X        |            | dbo.DimCurrency	     | FK          |
| 8   | SalesTerritoryKey     | int          | X        |            | dbo.DimSalesTerritory | FK          |
| 9   | SalesOrderNumber      | nvarchar(20) | X        |            |                       | PK          |
| 10  | SalesOrderLineNumber  | tinyint      | X        |            |                       | PK          |
| 11  | RevisionNumber        | tinyint      | X        |            |                       |             |
| 12  | OrderQuantity         | smallint     | X        |            |                       |             |
| 13  | UnitPrice             | money        | X        |            |                       |             |
| 14  | ExtendedAmount        | money        | X        |            |                       |             |
| 15  | UnitPriceDiscountPct  | float        | X        |            |                       |             |
| 16  | DiscountAmount        | float        | X        |            |                       |             |
| 17  | ProductStandardCost   | money        | X        |            |                       |             |
| 18  | TotalProductCost      | money        | X        |            |                       |             |
| 19  | SalesAmount           | money        | X        |            |                       |             |
| 20  | TaxAmt                | money        | X        |            |                       |             |
| 21  | Freight               | money        | X        |            |                       |             |
| 22  | CarrierTrackingNumber | nvarchar(25) |          |            |                       |             |
| 23  | CustomerPONumber      | nvarchar(25) |          |            |                       |             |
| 24  | OrderDate             | datetime     |          |            |                       |             |
| 25  | DueDate               | datetime     |          |            |                       |             |
| 26  | ShipDate              | datetime     |          |            |                       |             |  

  3.2. **_dbo.DimDate_**  
  3.2.1. Columns  

| Key	| Name                  | Data type    | Not null | Attributes | References            | Description   |
| :-: | :-------------------- | :----------: | :------: | :--------- | :-------------------- | :------------ |
| 1   | DateKey               | int          | X        |            |                       | PK            |
| 2   | FullDateAlternateKey  | date         | X        |            |                       |               |
| 3   | DayNumberOfWeek       | tinyint      | X        |            |                       |               |
| 4   | EnglishDayNameOfWeek  | nvarchar(10) | X        |            |                       | DayNameOfWeek |
| 5   | SpanishDayNameOfWeek  | nvarchar(10) | X        |            |                       | deprecated    |
| 6   | FrenchDayNameOfWeek   | nvarchar(10) | X        |            |                       | deprecated    |
| 7   | DayNumberOfMonth      | tinyint      | X        |            |                       |               |
| 8   | DayNumberOfYear       | smallint     | X        |            |                       |               |
| 9   | WeekNumberOfYear      | tinyint      | X        |            |                       |               |
| 10  | EnglishMonthName      | nvarchar(10) | X        |            |                       | MonthName     |
| 11  | SpanishMonthName      | nvarchar(10) | X        |            |                       | deprecated    |
| 12  | FrenchMonthName       | nvarchar(10) | X        |            |                       | deprecated    |
| 13  | MonthNumberOfYear     | tinyint      | X        |            |                       |               |
| 14  | CalendarQuarter       | tinyint      | X        |            |                       |               |
| 15  | CalendarYear          | smallint     | X        |            |                       |               |	
| 16  | CalendarSemester      | tinyint      | X        |            |                       |               |
| 17  | FiscalQuarter         | tinyint      | X        |            |                       |               |
| 18  | FiscalYear            | smallint     | X        |            |                       |               |
| 19  | FiscalSemester        | tinyint      | X        |            |                       |               |

  3.3. **_dbo.DimPromotion_**  
  3.3.1. Columns  

| Key	| Name                     | Data type    | Not null | Attributes | References            | Description       |
| :-: | :----------------------- | :----------: | :------: | :--------- | :-------------------- | :---------------- |
| 1   | PromotionKey             | int          | X        | Identity   |                       | PK                |
| 2   | PromotionAlternateKey    | int          |          |            |                       |                   |
| 3   | EnglishPromotionName     | nvarchar(255)|          |            |                       | PromotionName     |				
| 4   | SpanishPromotionName     | nvarchar(255)|          |            |                       | deprecated        |			
| 5   | FrenchPromotionName      | nvarchar(255)|          |            |                       | deprecated        |		
| 6   | DiscountPct              | float        |          |            |                       |                   |
| 7   | EnglishPromotionType     | nvarchar(50) |          |            |                       | PromotionType     |
| 8   | SpanishPromotionType	   | nvarchar(50) |          |            |                       | deprecated        |	
| 9   | FrenchPromotionType      | nvarchar(50) |          |            |                       | deprecated        |	
| 10  | EnglishPromotionCategory | nvarchar(50) |          |            |                       | PromotionCategory |	
| 11  | SpanishPromotionCategory | nvarchar(50) |          |            |                       | deprecated        |
| 12  | FrenchPromotionCategory  | nvarchar(50) |          |            |                       | deprecated        |
| 13  | StartDate                | datetime     | X        |            |                       |                   |
| 14  | EndDate                  | datetime     | X        |            |                       |                   |
| 15  | MinQty                   | int          |          |            |                       |                   |
| 16  | MaxQty                   | int          |          |            |                       |                   |

  3.4. **_dbo.DimCurrency_**  
  3.4.1. Columns 

| Key	| Name                     | Data type    | Not null | Attributes | References            | Description |
| :-: | :----------------------- | :----------: | :------: | :--------- | :-------------------- | :-----------|
| 1   | CurrencyKey              | int          | X        | Identity   |                       | PK          |
| 2   | CurrencyAlternateKey     | nchar(3)     | X        |            |                       |             |
| 3   | CurrencyName             | nvarchar(50) | X        |            |                       |             |

  3.5. **_dbo.DimCustomer_**  
  3.5.1. Columns  

| Key	| Name                     | Data type    | Not null | Attributes | References            | Description |
| :-: | :----------------------- | :----------: | :------: | :--------- | :-------------------- | :-----------|
| 1   | CustomerKey              | int          | X        | Identity   |                       | PK          |
| 2   | GeographyKey             | int          |          |            | dbo.DimGeography      | FK          |
| 3   | CustomerAlternateKey     | nvarchar(15) |          |            |                       |             |
| 4   | Title                    | nvarchar(8)  |          |            |                       |             |
| 5   | FirstName                | nvarchar(50) |          |            |                       |             |
| 6   | MiddleName               | nvarchar(50) |          |            |                       |             |
| 7   | LastName                 | nvarchar(50) |          |            |                       |             |
| 8   | NameStyle                | bit          |          |            |                       |             |
| 9   | FBirthDate               | date         |          |            |                       |             |		
| 10  | MaritalStatus            | nchar(1)     |          |            |                       |             |
| 11  | Suffix                   | nvarchar(10) |          |            |                       |             |
| 12  | Gender                   | nvarchar(1)  |          |            |                       |             |
| 13  | EmailAddress             | nvarchar(50) |          |            |                       |             |
| 14  | YearlyIncome             | money        |          |            |                       |             |
| 15  | TotalChildren            | tinyint      |          |            |                       |             |
| 16  | NumberChildrenAtHome     | tinyint      |          |            |                       |             |
| 17  | EnglishEducation         | nvarchar(40) |          |            |                       | Education   |
| 18  | SpanishEducation         | nvarchar(40) |          |            |                       | deprecated  |
| 19  | FrenchEducation          | nvarchar(40) |          |            |                       | deprecated  |
| 20  | EnglishOccupation        | nvarchar(100)|          |            |                       | Occupation  |
| 21  | SpanishOccupation        | nvarchar(100)|          |            |                       | deprecated  |
| 22  | FrenchOccupation         | nvarchar(100)|          |            |                       | deprecated  |
| 23  | HouseOwnerFlag           | nchar(1)     |          |            |                       |             |
| 24  | NumberCarsOwned          | tinyint      |          |            |                       |             |
| 25  | AddressLine1             | nvarchar(120)|          |            |                       |             |
| 26  | AddressLine2             | nvarchar(120)|          |            |                       |             |
| 27  | Phone                    | nvarchar(20) |          |            |                       |             |
| 28  | DateFirstPurchase        | date         |          |            |                       |             |
| 29  | CommuteDistance          | nvarchar(15) |          |            |                       |             |

  3.6. **_dbo.DimGeography_**  
  3.6.1. Columns  

| Key	| Name                     | Data type    | Not null | Attributes | References            | Description       |
| :-: | :----------------------- | :----------: | :------: | :--------- | :-------------------- | :---------------- |
| 1   | GeographyKey             | int          | X        | Identity   |                       | PK                |
| 2   | City                     | nvarchar(30) |          |            |                       |                   |
| 3   | StateProvinceCode        | nvarchar(3)  |          |            |                       |                   |
| 4   | StateProvinceName        | nvarchar(50) |          |            |                       |                   |
| 5   | CountryRegionCode        | nvarchar(3)  |          |            |                       |                   |
| 6   | EnglishCountryRegionName | nvarchar(50) |          |            |                       | CountryRegionName |
| 7   | SpanishCountryRegionName | nvarchar(50) |          |            |                       | deprecated        |
| 8   | FrenchCountryRegionName  | nvarchar(50) |          |            |                       | deprecated        |
| 9   | PostalCode               | nvarchar(15) |          |            |                       |                   |
| 10  | SalesTerritoryKey        | int          |          |            | dbo.DimSalesTerritory	| FK                |
| 11  | IpAddressLocator         | nvarchar(15) |          |            |                       |                   |

  3.7. **_dbo.DimSalesTerritory_**  
  3.7.1. Columns  

| Key	| Name                       | Data type      | Not null | Attributes | References            | Description |
| :-: | :------------------------- | :------------: | :------: | :--------- | :-------------------- | :-----------|
| 1   | SalesTerritoryKey          | int            | X        | Identity   |                       | PK          |
| 2   | SalesTerritoryAlternateKey | int            |          |            |                       |             |
| 3   | SalesTerritoryRegion       | nvarchar(50)   | X        |            |                       |             |
| 4   | SalesTerritoryCountry      | nvarchar(50)   | X        |            |                       |             |
| 5   | SalesTerritoryGroup        | nvarchar(50)   |          |            |                       |             |
| 6   | SalesTerritoryImage        | varbinary(MAX) |          |            |                       | deprecated  |

  3.8. **_dbo.DimProduct_**
  3.8.1. Columns 

| Key	| Name                     | Data type     | Not null | Attributes | References                | Description |
| :-: | :----------------------- | :-----------: | :------: | :--------- | :------------------------ | :-----------|
| 1   | ProductKey               | int           | X        | Identity   |                           | PK          |
| 2   | ProductAlternateKey      | nvarchar(25)  |          |            |                           |             |
| 3   | ProductSubcategoryKey    | int           |          |            | dbo.DimProductSubcategory | FK          |
| 4   | WeightUnitMeasureCode    | nchar(3)      |          |            |                           |             |
| 5   | SizeUnitMeasureCode      | nchar(3)      |          |            |                           |             |
| 6   | EnglishProductName       | nvarchar(50)  | X        |            |                           | ProductName |
| 7   | SpanishProductName       | nvarchar(50)  | X        |            |                           | deprecated  |
| 8   | FrenchProductNamen       | varchar(50)   | X        |            |                           | deprecated  |
| 9   | StandardCost             | money         |          |            |                           |             |
| 10  | FinishedGoodsFlag        | bit           | X        |            |                           |             |
| 11  | Color                    | nvarchar(15)  | X        |            |                           |             |
| 12  | SafetyStockLevel         | smallint      |          |            |                           |             |
| 13  | ReorderPoint             | smallint      |          |            |                           |             |
| 14  | ListPrice                | money         |          |            |                           |             |
| 15  | Size                     | nvarchar(50)  |          |            |                           |             |
| 16  | SizeRange                | nvarchar(50)  |          |            |                           |             |
| 17  | Weight                   | float         |          |            |                           |             |
| 18  | DaysToManufacture        | int           |          |            |                           |             |
| 19  | ProductLine              | nchar(2)      |          |            |                           |             |
| 20  | DealerPrice              | money         |          |            |                           |             |
| 21  | Class                    | nchar(2)      |          |            |                           |             |
| 22  | Style                    | nchar(2)      |          |            |                           |             |
| 23  | ModelName                | nvarchar(50)  |          |            |                           |             |
| 24  | LargePhoto               | varbinary(MAX)|          |            |                           |             |				
| 25  | EnglishDescription       | nvarchar(400) |          |            |                           | Description |
| 26  | FrenchDescription        | nvarchar(400) |          |            |                           | deprecated  |			
| 27  | ChineseDescription       | nvarchar(400) |          |            |                           | deprecated  |
| 28  | ArabicDescription        | nvarchar(400) |          |            |                           | deprecated  |		
| 29  | HebrewDescription        | nvarchar(400) |          |            |                           | deprecated  |
| 30  | ThaiDescription          | nvarchar(400) |          |            |                           | deprecated  |				
| 31  | GermanDescription        | nvarchar(400) |          |            |                           | deprecated  |		
| 32  | JapaneseDescription      | nvarchar(400) |          |            |                           | deprecated  |		
| 33  | TurkishDescription       | nvarchar(400) |          |            |                           | deprecated  |
| 34  | StartDate                | datetime      |          |            |                           |             |
| 35  | EndDate                  | datetime      |          |            |                           |             |
| 36  | Status                   | nvarchar(7)   |          |            |                           |             |

  3.9. **_dbo.DimProductSubcategory_**  
  3.9.1. Columns  

| Key	| Name                           | Data type    | Not null | Attributes | References            | Description            |
| :-: | :----------------------------- | :----------: | :------: | :--------- | :-------------------- | :--------------------- |
| 1   | ProductSubcategoryKey          | int          | X        | Identity   |                       | PK                     |
| 2   | ProductSubcategoryAlternateKey | int          |          |            |                       |                        |
| 3   | EnglishProductSubcategoryName  | nvarchar(50) | X        |            |                       | ProductSubcategoryName |
| 4   | SpanishProductSubcategoryName  | nvarchar(50) | X        |            |                       | deprecated             |
| 5   | FrenchProductSubcategoryName   | nvarchar(50) | X        |            |                       | deprecated             |
| 6   | ProductCategoryKey             | int          |          |            | dbo.DimProductCategory| FK                     |	

  3.10. **_dbo.DimProductCategory_**  
  3.10.1. Columns  

| Key	| Name                        | Data type    | Not null | Attributes | References            | Description         |
| :-: | :-------------------------- | :----------: | :------: | :--------- | :-------------------- | :------------------ |
| 1   | ProductCategoryKey          | int          | X        | Identity   |                       | PK                  |
| 2   | ProductCategoryAlternateKey | int          |          |            |                       |                     |
| 3   | EnglishProductCategoryName  | nvarchar(50) | X        |            |                       | ProductCategoryName |
| 4   | SpanishProductCategoryName  | nvarchar(50) | X        |            |                       | deprecated          |
| 5   | FrenchProductCategoryName   | nvarchar(50) | X        |            |                       | deprecated          |

  3.11. **_dbo.FactInternetSalesReason_**  
  3.11.1. Columns  

| Key	| Name                     | Data type    | Not null | Attributes | References            | Description |
| :-: | :----------------------- | :----------: | :------: | :--------- | :-------------------- | :-----------|
| 1   | SalesOrderNumber         | nvarchar(20) | X        |            | dbo.FactInternetSales | PK,FK       |
| 2   | SalesOrderLineNumber     | tinyint      | X        |            | dbo.FactInternetSales | PK,FK       |
| 3   | SalesReasonKey           | int          | X        |            | dbo.DimSalesReason    | PK,FK       |

  3.12. **_dbo.FactResellerSales_**  
  3.12.1. Columns  

| Key	| Name                     | Data type    | Not null | Attributes | References            | Description |
| :-: | :----------------------- | :----------: | :------: | :--------- | :-------------------- | :-----------|
| 1   | ProductKey               | int          | X        |            | dbo.DimProduct        | FK          |
| 2   | OrderDateKey             | int          | X        |            | dbo.DimDate           | FK          |
| 3   | DueDateKey               | int          | X        |            | dbo.DimDate           | FK          |
| 4   | ShipDateKey              | int          | X        |            | dbo.DimDate           | FK          |
| 5   | ResellerKey              | int          | X        |            | dbo.DimReseller       | FK          |
| 6   | EmployeeKey              | int          | X        |            | dbo.DimEmployee       | FK          |
| 7   | PromotionKey             | int          | X        |            | dbo.DimPromotion      | FK          |
| 8   | CurrencyKey              | int          | X        |            | dbo.DimCurrency       | FK          |
| 9   | SalesTerritoryKey        | int          | X        |            | dbo.DimSalesTerritory | FK          |
| 10  | SalesOrderNumber         | nvarchar(20) | X        |            |                       | PK          |
| 11  | SalesOrderLineNumber     | tinyint      | X        |            |                       | PK          |
| 12  | RevisionNumber           | tinyint      | X        |            |                       |             |
| 13  | OrderQuantity            | smallint     | X        |            |                       |             |
| 14  | UnitPrice                | money        | X        |            |                       |             |
| 15  | ExtendedAmount           | money        | X        |            |                       |             |
| 16  | UnitPriceDiscountPct     | float        | X        |            |                       |             |
| 17  | DiscountAmount           | float        | X        |            |                       |             |
| 18  | ProductStandardCost      | money        | X        |            |                       |             |
| 19  | TotalProductCost         | money        | X        |            |                       |             |
| 20  | SalesAmount              | money        | X        |            |                       |             |
| 21  | TaxAmt                   | money        | X        |            |                       |             |
| 22  | Freight                  | money        | X        |            |                       |             |
| 23  | CarrierTrackingNumber    | nvarchar(25) |          |            |                       |             |
| 24  | CustomerPONumber         | nvarchar(25) |          |            |                       |             |
| 25  | OrderDate                | datetime     |          |            |                       |             |
| 26  | DueDate                  | datetime     |          |            |                       |             |
| 27  | ShipDate                 | datetime     |          |            |                       |             |

  3.13. **_dbo.FactProductInventory_**  
  3.13.1. Columns  

| Key	| Name                     | Data type    | Not null | Attributes | References            | Description |
| :-: | :----------------------- | :----------: | :------: | :--------- | :-------------------- | :-----------|
| 1   | ProductKey               | int          | X        |            | dbo.DimProduct        | PK,FK       |
| 2   | DateKey                  | int          | X        |            | dbo.DimDate           | PK,FK       |
| 3   | MovementDate             | date         | X        |            |                       |             |
| 4   | UnitCost                 | money        | X        |            |                       |             |
| 5   | UnitsIn                  | int          | X        |            |                       |             |
| 6   | UnitsOut                 | int          | X        |            |                       |             |
| 7   | UnitsBalance             | int          | X        |            |                       |             |

  3.14. **_dbo.DimPromotion_**  
  3.14.1. Columns  

| Key	| Name                     | Data type    | Not null | Attributes | References            | Description       |
| :-: | :----------------------- | :----------: | :------: | :--------- | :-------------------- | :---------------- |
| 1   | PromotionKey             | int          | X        | Identity   |                       | PK                |
| 2   | PromotionAlternateKey    | int          |          |            |                       |                   |
| 3   | EnglishPromotionName     | nvarchar(255)|          |            |                       | PromotionName     |
| 4   | SpanishPromotionName     | nvarchar(255)|          |            |                       | deprecated        |
| 5   | FrenchPromotionName      | nvarchar(255)|          |            |                       | deprecated        |
| 6   | DiscountPct              | float        |          |            |                       |                   |
| 7   | EnglishPromotionType     | nvarchar(50) |          |            |                       | PromotionType     |
| 8   | SpanishPromotionType     | nvarchar(50) |          |            |                       | deprecated        |
| 9   | FrenchPromotionType      | nvarchar(50) |          |            |                       | deprecated        |
| 10  | EnglishPromotionCategory | nvarchar(50) |          |            |                       | PromotionCategory |
| 11  | SpanishPromotionCategory | nvarchar(50) |          |            |                       | deprecated        |
| 12  | FrenchPromotionCategory  | nvarchar(50) |          |            |                       | deprecated        |
| 13  | StartDate                | datetime     |          |            |                       |                   |
| 14  | EndDate                  | datetime     |          |            |                       |                   |
| 15  | MinQty                   | int          |          |            |                       |                   |
| 16  | MaxQty                   | int          |          |            |                       |                   |

  3.15. **_dbo.DimEmployee_**  
  3.15.1. Columns  

| Key	| Name                                 | Data type      | Not null | Attributes | References            | Description       |
| :-: | :----------------------------------- | :------------: | :------: | :--------- | :-------------------- | :---------------- |
| 1   | EmployeeKey                          | int            | X        | Identity   |                       | PK                |
| 2   | ParentEmployeeKey                    | int            |          |            | dbo.DimEmployee       | FK                |
| 3   | EmployeeNationalIDAlternateKey       | nvarchar(15)   |          |            |                       |                   |
| 4   | ParentEmployeeNationalIDAlternateKey | nvarchar(15)   |          |            |                       |                   |
| 5   | SalesTerritoryKey                    | int            |          |            | dbo.DimSalesTerritory | FK                | 
| 6   | FirstName                            | nvarchar(50)   | X        |            |                       |                   |
| 7   | LastName                             | nvarchar(50)   | X        |            |                       |                   |
| 8   | MiddleName                           | nvarchar(50)   |          |            |                       |                   |
| 9   | NameStyle                            | bit            | X        |            |                       |                   |
| 10  | Title                                | nvarchar(50)   |          |            |                       |                   |
| 11  | HireDate                             | date           |          |            |                       |                   |
| 12  | BirthDate                            | date           |          |            |                       |                   |
| 13  | LoginID                              | nvarchar(256)  |          |            |                       |                   |
| 14  | EmailAddress                         | nvarchar(50)   |          |            |                       |                   |
| 15  | Phone                                | nvarchar(25)   |          |            |                       |                   |
| 16  | MaritalStatus                        | nchar(1)       |          |            |                       |                   |
| 17  | EmergencyContactName                 | nvarchar(50)   |          |            |                       |                   |
| 18  | EmergencyContactPhone                | nvarchar(25)   |          |            |                       |                   |
| 19  | SalariedFlag                         | bit            |          |            |                       |                   |
| 20  | Gender                               | nchar(1)       |          |            |                       |                   |
| 21  | PayFrequency                         | tinyint        |          |            |                       |                   |
| 22  | BaseRate                             | money          |          |            |                       |                   |
| 23  | VacationHours                        | smallint       |          |            |                       |                   |
| 24  | SickLeaveHours                       | smallint       |          |            |                       |                   |
| 25  | CurrentFlag                          | bit            |          |            |                       |                   |
| 26  | SalesPersonFlag                      | bit            |          |            |                       |                   |
| 27  | DepartmentName                       | nvarchar(50)   |          |            |                       |                   |
| 28  | StartDate                            | date           |          |            |                       |                   |
| 29  | EndDate                              | date           |          |            |                       |                   |
| 30  | Status                               | nvarchar(50)   |          |            |                       |                   |
| 31  | EmployeePhoto                        | varbinary(MAX) |          |            |                       | deprecated        |

  3.16. **_dbo.DimReseller_**  
  3.165.1. Columns  

| Key	| Name                     | Data type    | Not null | Attributes | References            | Description       |
| :-: | :----------------------- | :----------: | :------: | :--------- | :-------------------- | :---------------- |
| 1   | ResellerKey              | int          | X        | Identity   |                       | PK                |
| 2   | GeographyKey             | int          |          |            | dbo.DimGeography      | FK                |
| 3   | ResellerAlternateKey     | nvarchar(15) |          |            |                       |                   |
| 4   | Phone                    | nvarchar(25) |          |            |                       |                   |
| 5   | BusinessType             | nvarchar(20) | X        |            |                       |                   |
| 6   | ResellerName             | nvarchar(50) | X        |            |                       |                   |
| 7   | NumberEmployees          | int          |          |            |                       |                   |
| 8   | OrderFrequency           | char(1)      |          |            |                       |                   |
| 9   | OrderMonth               | tinyint      |          |            |                       |                   |
| 10  | FirstOrderYear           | int          |          |            |                       |                   |
| 11  | LastOrderYear            | int          |          |            |                       |                   |
| 12  | ProductLine              | nvarchar(50) |          |            |                       |                   |
| 13  | AddressLine1             | nvarchar(60) |          |            |                       |                   |
| 14  | AddressLine2             | nvarchar(60) |          |            |                       |                   |
| 15  | AnnualSales              | money        |          |            |                       |                   |
| 16  | BankName                 | nvarchar(50) |          |            |                       |                   |
| 17  | MinPaymentType           | tinyint      |          |            |                       |                   |
| 18  | MinPaymentAmount         | money        |          |            |                       |                   |
| 19  | AnnualRevenue            | money        |          |            |                       |                   |	
| 20  | YearOpened               | int          |          |            |                       |                   |	

**_Notice_**: **_Adventure Works Cycles, Inc._** has decided that multilingual capabilities into the DB (in general) are pointless. In addition, specifically for DS, and BI, since the users are internal and at managerial level, they must have worldwide pro knowledge of English. Also, binary picture fields are deprecated in DB.

[Back to Table of contents :arrow_double_up:](../README.md)

### **_Parametric data_**  



[Back to Table of contents :arrow_double_up:](../README.md)