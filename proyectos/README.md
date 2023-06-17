# Poject: PROWPI002 (Project: World Population Indicators #002)

<!-- TOC -->
## Table of contents

<a id="table-of-contents"></a>

- [Executive Summary](#executive-summary)
    - [Business](#business)
    - [Project](#project)
    - [3DoWoCo contact](#3dowoco-contact)
    - [Client pains](#client-pains)
    - [Opportunity](#opportunity)
    - [Solution](#solution)
        - [Steps or methods](#steps-or-methods)
        - [Goals and objectives](#goals-and-objectives)
    - [Value proposition](#value-proposition)  
        - [Return on Investment (ROI) of the proposed solution](#return-on-investment-roi-of-the-proposed-solution)
        - [The improved service delivery and customer experience](#the-improved-service-delivery-and-customer-experience)  
    - [Conclusion](#conclusion)  
- [DE (Data Engineering)](#de-data-engineering)
- [DWH (Data Warehouse)](#dwh-data-warehouse)
- [Metrics](#metrics)
- [UX (User Experience)](#ux-user-experience)
- [Picture list](#picture-list)
- [Storytelling notice](#storytelling-notice)
- [Author](#author)
- [eof](#eof)
<!-- /TOC -->
---

## Executive Summary  

### **_Business_**  

We are **_3DoWoCo_** (**_Data-Driven - Don't Worry Company, Inc., that is 3DoWoCo_**), a **_DS (Data Science)_** company  

![#pic001](https://i.imgur.com/0OZ9JPU.jpg "3DoWoCo logo")  
_3DoWoCo logo_  

### **_Project_**  

**_PROWPI002_** (**_based on_** our worldwide well-known standard project, [**_PROWPI001_**](https://github.com/ddasilva64/MTDPDN23001esp/blob/master/proyectos/PROWPI001.ipynb))  

Our client is **_Adventure Works Cycles, Inc._**, which is a large, multinational manufacturing company that produces and distributes bicycles, parts, and accessories for commercial markets in North America, Europe, and Asia. The company employs 500 workers. Additionally, Adventure Works employs several regional sales teams throughout its market base. They want to expand their business worldwide, but they need the best good BI & DS to take good decisions   

![Adventure Works Cycles logo](https://i.imgur.com/8dpUmbD.png)  
_Adventure Works Cycles logo_  

Especially, as far as we (**_3DoWoCo_**) are concerned, our work must focus on the next objectives:  

1. We are taking, as a base our project [**_PROWPI001_**](https://github.com/ddasilva64/MTDPDN23001esp/blob/master/proyectos/PROWPI001.ipynb), and transform it, according to our client requirements. That is, firstly, we need to do the **_ETL (Extract, Transform & Load)_**, and quality assurance, **_according to their needs_**  

2. We need **_to transform the DB that is transferred to us (AdventureWorksDW2022)_**, into a system that integrates our DB (**_PROWPI002_**) and **_that is the base of their DS and BI system_**  

3. There will be **_parametric data_** in the form of sheets (tables) **_in Excel spreadsheets_**. **_This info not exists in the source DB_**, provided by our client  

4. There will be **_data in the parameters (Excel)_**, which will evolve (temporarily). That is, **_there will be historical data, outside the DB (AdventureWorksDW2022)_**  

5. All the **_ETL_** steps will be stored in a **_DWH (Data Warehouse)_**, which we will build with a different **_RDBS_** from the company's corporate **_RDBS_**. The reason for this is not to interfere with the normal functioning of the corporate database  

5. Also, they need that we **_create a tabular model for sales and marketing users to analyze Internet sales_** data in the **_AdventureWorksDW2022_** DB, to expand their business worldwide, and to other business models  

5. Finally, in the **_DWH_**, we will build a **_sales yearly forecast_** that we will compare with currents sales results  

6. Additionally, we commit ourselves to propose **_metrics_** and a **_BSC (Balanced Scorecard)_** to represent and verify the results  

**_Notice_**: **_AdventureWorksDW2022_** (2022 version), is a work DB of the original and is an adaptation to **_BI (Business Intelligence)_** & **_DS (Data Science)_**, which is made by themselves (**_Adventure Works Cycles, Inc._**). _Maybe in the future, if the current project success, we will be able to access the main BD & work together on new & exciting ones..._    

**_3DoWoCo_** undertakes with **_Adventure Works Cycles, Inc._**, through this document (**_covenant_**) to:

1. **_For each single step we will assure quality_**, and our client (**_Adventure Works Cycles, Inc._**), **_will be able to check it_**   

2. The **_ETL_** process will be built in **_PDI (Pentaho Data Integrator)_**. [**_PROWPI001_**](https://github.com/ddasilva64/MTDPDN23001esp/blob/master/proyectos/PROWPI001.ipynb) was built in Python, but current **_PROWPI001_** will be deployed in **_PDI_**  

3. **_AdventureWorksDW2022_** DB is built in **_Microsoft SQL Server_** (their corporate RDBS)  

4. Staged tables and final DB, that is the **_DWH_** will be built in **_Postgre SQL_** (to assure absolute independence between the two DB)

5. To compare forecast & current, in the **_DWH_**, forecast tables will be like **_snapshots_** of last year projection data. That is, **_forecast & current will have the same layout_**  

5. Final **_BSC (Balanced Scorecard)_** will be built in **_PBI (Microsoft Power BI)_**, and will collect the requested metrics  

[Back to Table of contents :arrow_double_up:](#table-of-contents)

### **_3DoWoCo contact_**

- email: fake.it@till.you.make.it.com  
- URL: https://mary-had-a-little-lamb-what-the-fuck.htm

[Back to Table of contents :arrow_double_up:](#table-of-contents)

### **_Client pains_**  

1. The problem with **_Adventure Works Cycles, Inc._** is that its **_legacy system_** (which cannot, and should not be changed), because it works perfectly, for the purpose it was implemented, **_it's built on the tech stack_**:  

   - **_C#_**  

   - **_SQL Server_**, not always with normalized tables (because they're inherited from other not RDB systems)  

   - **_Batch processes_** for obtaining and disseminating (by **_email_**) information  

   - The **_IT (information technology)_** staff of our client, is very busy with the classic **_Transactional System_**, and cannot respond to  **_BI_**, and **_DS_** needs   

2. Also, their system offers the following gaps:

   - The **_creation of tables and views is chaotic_** (names, locations, etc.). They (**_Adventure Works Cycles, Inc._**), are actively fighting against this  

   - **_SQL quickly tends to become complicated and difficult to maintain_**. Also, the volatile of **_IT_** staf, makes DB very difficult to maintain. They (**_Adventure Works Cycles, Inc._**), also are actively fighting against this  

   - The **_creation of automated systems_**, despite having a batch process standard, has proven to be **_inefficient, to meet the needs of DS_**

   - **_IT_** staff are very professional and efficient, but they are **_too specialized_** in their technology stack  

   - The management staff of our client, **_do not have the necessary skills_**, to face **_BI_**, and **_DS_** projects. To solve this problem, we have contacted **_Adventure Works Cycles, Inc._** with our training partner: [**_Platzi_**](https://en.wikipedia.org/wiki/Platzi) (**_may be, one of the better Technology of Information Systems Training company worldwide_**)  

![Platzi logo](https://i.imgur.com/sG9GhiB.jpg)  
_(Platzi logo, from [Platzi Team](https://courses.platzi.com/), [public domain](https://commons.wikimedia.org/w/index.php?curid=93410933))_

[Back to Table of contents :arrow_double_up:](#table-of-contents)

### **_Opportunity_**  

The current project may be just the beginning of the **_BI_**, and **_DS_** collaboration between **_3DoWoCo_**, and **_Adventure Works Cycles, Inc._** **_There are 80% hidden needs to discover and new business opportunities (like a hide side of an iceberg), for our client, that we can help them to discover_**  

Also, the combination of **_Python_** and **_PDI_** will be a perfect set of tools to solve any customer's **_ETL_** needs in the future  

![#pic003](https://i.imgur.com/arHXGzQ.png, "Iceberg")  
_DS & BI needs are like an iceberg (80% not visible)_     

[Back to Table of contents :arrow_double_up:](#table-of-contents)

### **_Solution_**  

#### **_Steps or methods_**  

- **_ETL_** from **_PROWPI001_**, will be ported from **_Python_** to **_PDI_**  

- Each table from different **raw (raw data source files)_** of **_PROWPI001_**, will generate a **_.KTR_** file (**_Transformation file_**), that is our client will be able to check transformation results, easily. Later, we will integrate transform tables from **_PROWPI001_** project in a **_fact table_** or in a **_dimension table_** (only one)   

- The operational data, which as we have said, is in **_SQL Server_** (**_AdventureWorksDW2022_** DB), we will complete it with **_Excel_** parametric tables. These tables will be part of **_PROWPI002_**. Some of these parametric tables will be historic data   

- **_Adventure Works Cycles, Inc._** provided us, in the DB, **_dimension tables (Dim prefix)_** and **_fact tables (fact prefix)_**  

- They also need the following transformations:  

  1. Each table will be a different **_.KTR_** file, just as we will do in our **_PROWPI001 raw_**  

  2. All **_country data_** will be transformed to **_iso3 standard_** adopted in **_PROWPI001_** (**_more efficient and standard_**)  

  3. **_All other geographic data will be replaced_** by standard names and geographic coordinates, and nothing else  

  4. **_Each parametric table_** will be a different **_.KTR_** file, just as DB tables  

  5. **_All multilingual references will be removed from the DB_** for two reasons:  
    5.1. They will be external resources to the transactional applications, therefore, they must not be in the DB  
    5.2. In a DS or BI application, they are not required  

  6. For the same reasons, **_binary fields (such as images) will be removed from the DB_**  

- **_PROWPI002 will focus on obtaining the productivity metrics of the Sales Dept. (Sales Department)_**, which will be able to obtain **_KPI (Key Performance Indicatos)_** from the **_HR Dept. (Human Resources Department_**)  

- **_Sales Dept._** of **_Adventure Works Cycles, Inc._** commits to transfer, **_quickly and with absolute transparency_**, the **_data necessary to generate historical_** parametric data

- **_HR Dept._** of **_Adventure Works Cycles, Inc._** undertakes to transfer, **_quickly and with absolute transparency_**, the **_data necessary and metrics desired for the control of the productivity of the Sales Dept._**  

- The **_Adventure Works Cycles, Inc. Management_** agrees t**_o provide the necessary feedback_**, to obtain the best information and **_UX (User eXperience)_** of the final **_BSC_**. **_This will be done, as many times as it goes off_**  

- Meetings (in person or by **_Microsoft Teams_**), between **_Adventure Works Cycles, Inc._**, and **_3DoWoCo_**, including to concerned Managers or employees    

[Back to Table of contents :arrow_double_up:](#table-of-contents)

#### **_Goals and objectives_**  

- **_PROWPI001 ETL_**  
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
    ![Execution in PDI](https://i.imgur.com/5wh3IhK.png)  
    _Execution in PDI_
    ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/09gCq47.png) 
    _Postgres SQL's transactions checking in PgAdmin_

  2. **_PROWPI001_demography.KTR_**  
    2.1. #raw_03: 2021_population.CSV  
    2.2. #raw_05: arrangements/XML country demography not match input.XML  
    2.3. #staged_02: **_staging\demography.XML_**
  3. **_PROWPI001_ecology.KTR_**  
    3.1. #raw_06: HDR21-22_Composite_indices_complete_time_series.CSV  
    3.2. #raw_02: countries_eng.CSV  
    3.3. #staged_03: staging\ecology.XML  
  4. **_PROWPI001_economy.KTR_**  
    4.1. #raw_07: API_NY.GDP.MKTP.KD.ZG_DS2_en_csv_v2_4701072.CSV  
    4.2. #raw_06: HDR21-22_Composite_indices_complete_time_series.CSV  
    4.3. #raw_02: countries_eng.CSV  
    4.4. #raw_08: WEO_Data_01.CSV  
    4.5. #raw_09: WEO_Data_02.CSV  
    4.6. #staged_04: staging\economy.XML  
  5. **_PROWPI001_education.KTR_**  
    5.1. #raw_06: HDR21-22_Composite_indices_complete_time_series.CSV  
    5.2. #raw_02: countries_eng.CSV  
    5.3. #staged_05: staging\education.XML
  6. **_PROWPI001_health.KTR_**  
    6.1. #raw_06: HDR21-22_Composite_indices_complete_time_series.CSV  
    6.2. #raw_02: countries_eng.CSV  
    6.3. #raw_10: NHA indicators.XLSX
    6.4. #raw_11: arrangements/XML countries NHS not match input.XML  
    6.5. #staged_06: staging\health.XML  
  7. **_PROWPI001_fact.KTR_**  
    7.1. #staged_02: staging\demography.XML  
    7.2. #staged_03: staging\ecology.XML  
    7.3. #staged_04: staging\economy.XML  
    7.4. #staged_05: staging\education.XML  
    7.5. #staged_06: staging\health.XML 
    7.6. #staged_07: **_FactCountries_** (Postgre SQL table)  

    
**_Warning_**!: Remember that field names are standard (the first character of the word is uppercase and no spaces between words). That means that in the output table name and table field names (in POI), we need to write them (table and fields) in double quotes  

![Be atention in standard names in Postgre SQL output tables](https://i.imgur.com/bHgo76C.png)  
_Be atention in standard names in Postgre SQL output tables_

**_Notices_**: See our, worldwide well-known standard, project [**_PROWPI001_**](https://github.com/ddasilva64/MTDPDN23001esp/blob/master/proyectos/PROWPI001.ipynb), for **_raw_** documentation (URL, licenses, and so on). All staging files or tables have their field types in **_Postgre SQL_** types, because target DB is **_DWH_** in **_Postgre SQL_**. Countries are the 193 countries recognized by the **_UN_** in 2021. In **_FactCountries_** we will add the year of the measurements (e.g. 2021)  


**_staging\demography.XML_** layout

| Key	| Name                  | Data type             | Not null | Attributes | References            | Description  | Metadata |
| :-: | :-------------------- | :-------------------: | :------: | :--------- | :-------------------- | :----------- | :------- |
| 1   | CountryCode           | Character variying(3) | X        |            |                       | PK,FK        | m001     |
| 2   | Population            | integer               |          |            |                       |              | m005     |
| 3   | PDR                   | real                  |          |            |                       |              | m006     |
| 4   | PGR                   | real                  |          |            |                       |              | m007     |  

**_staging\ecology.XML_** layout

| Key	| Name                  | Data type             | Not null | Attributes | References            | Description | Metadata |
| :-: | :-------------------- | :-------------------: | :------: | :--------- | :-------------------- | :-----------| :------- |
| 1   | CountryCode           | Character variying(3) | X        |            |                       | PK,FK       | m001     |
| 2   | CO2PC                 | real                  |          |            |                       |             | m008     |
| 3   | MFPC                  | real                  |          |            |                       |             | m009     |  

**_staging\economy.XML_** layout

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

**_staging\education.XML_** layout

| Key	| Name                  | Data type             | Not null | Attributes | References            | Description | Metadata |
| :-: | :-------------------- | :-------------------: | :------: | :--------- | :-------------------- | :-----------| :------- |
| 1   | CountryCode           | Character variying(3) | X        |            |                       | PK,FK       | m001     |
| 2   | EYS                   | real                  |          |            |                       |             | m017     |
| 3   | FEYS                  | real                  |          |            |                       |             | m018     |
| 4   | MEYS                  | real                  |          |            |                       |             | m019     |
| 5   | FSSE                  | real                  |          |            |                       |             | m020     |
| 6   | MSSE                  | real                  |          |            |                       |             | m021     |

**_staging\health.XML_** layout

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
| 4   | Formula               | Character variying(250)|          |            |                       |             |
| 5   | Units                 | Character variying(10) |          |            |                       |             |

**_Atention!_**: While the importance of metadata cannot be overstated, the reason to use it is to help drive reporting accuracy, validate data transformation, and ensure calculation accuracy. Metadata also imposes the definition of terms such as indicators, standards, etc. In the development of the DWH, metadata appears, and with it arises the need to create a table with this content  

- **_AdventureWorksDW2022 DB_**  
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

[Back to Table of contents :arrow_double_up:](#table-of-contents)

### **_Value proposition_**  

#### **_Return on Investment (ROI) of the proposed solution_**

- We calculate the profit with **_cost/hour of development_** in the two systems. **_Errors_** are valued as a **_factor of 2.5 over the above_**  
- **_ROI_** is calculated by **_comparing the profit_** of the new system **_and the cost of the new system_** (our ETL solution in **_PDI_**)  

#### **_The improved service delivery and customer experience_**  

Competence in this business model is very hard, which is why **_our client needs very agile decision-making systems_**  

To avoid confusion, **_this system will not have as its objective_**:  

- **_Be the basis of presentations_**  
- **_Be an automated system to generate reports_**  

Although, the above may be a secondary objective  

[Back to Table of contents :arrow_double_up:](#table-of-contents)

### **_Conclusion_**

The new system:  

- **_Join data that was not, or did not exist_**
- It is **_much more efficient_** than the previous system  
- **_It allows to make decisions_** and not make presentations or automate reports (only)  

By the way, as the British adage goes, "**_the proof of the pudding is in the eating!. That is, let's go_**"  

[Back to Table of contents :arrow_double_up:](#table-of-contents)

---

## DE (Data Engineering)  

### **_Prework_**

1. Conversion from **_ETL of PROWPI001_** (**_Python_**) to **_ETL of PROWPI001_** (**_PDI_**), and test results  
1.1. Tables  
1.2. Data types  
1.3. QA (Quality Assurance)

2. Check restored DB in local
2.1. Tables  
2.2. Data types  
2.3. QA (Quality Assurance)

3. Check parametric data in local
2.1. Tables  
2.2. Data types  
2.3. QA (Quality Assurance)

[Back to Table of contents :arrow_double_up:](#table-of-contents)

## DWH (Data Warehouse)  

1. Conversion from **_ETL of PROWPI001_** (**_Python_**) to **_ETL of PROWPI001_** (**_PDI_**), and test results  
1.1. Tables  
1.2. Data types  
1.3. QA (Quality Assurance)

2. Check restored DB in local
2.1. Tables  
2.2. Data types  
2.3. QA (Quality Assurance)

3. Check parametric data in local
2.1. Tables  
2.2. Data types  
2.3. QA (Quality Assurance)

[Back to Table of contents :arrow_double_up:](#table-of-contents)

## Metrics  

[Back to Table of contents :arrow_double_up:](#table-of-contents)

## UX (User Experience)  

[Back to Table of contents :arrow_double_up:](#table-of-contents)  

## Picture list  

- **_#pic001_**: [Free pic "Matriz, Red y El intercambio de datos" in pixabay](https://pixabay.com/es/illustrations/matriz-red-el-intercambio-de-datos-1027571/), free pic by [**_Peggy\_Marco_**](https://pixabay.com/es/users/peggy_marco-1553824/)

- **_#pic002_**: ["Reciclar, Verde y Tierra" in pixabay](https://pixabay.com/es/vectors/reciclar-verde-tierra-29227/), free pic by [**_Clker-Free-Vector-Images_**](https://pixabay.com/es/users/clker-free-vector-images-3736/)

- **_#pic003_**: ["Iceberg, Encima y Agua" in pixabay](https://pixabay.com/es/illustrations/iceberg-encima-agua-blanco-fr%c3%ado-3273216/), free pic by [**_MoteOo_**](https://pixabay.com/es/users/moteoo-466065/)

[Back to Table of contents :arrow_double_up:](#table-of-contents)

---

## Storytelling notice  

All dataset sources are licensed in the public domain, but **_Adventure Works Cycles, Inc._**, and **_AdventureWorksDW2022_** are, both of them, fiction created by Microsoft. It's a narrative to build project storytelling, containing data solutions, which the author sees in his lifetime professional  

**_Disclaimer!_**: **_Adventure Works Cycles, Inc._** and **_3DoWoCo_** are a fiction. Any similarities to companies living or dead, or something else is purely coincidental  

Many dataset sources are based on [**_PROWPI001_**](https://github.com/ddasilva64/MTDPDN23001esp/blob/master/proyectos/PROWPI001.ipynb) project, built by "Data Manipulation and Analysis with Pandas and Python" Platzi course. The **_ETL_** were made, in this project, in **_Python_**, now we built **_ETL_** with **_PDI_** exclusively  

The present project **_PROWPI002_** is an exercise for "ETL with Python and Pentaho fundamentals" Platzi course, anyway  

Anyway, what can we get from data in this project? It can happen, as Forrest Gump said:  
> **_"Life is like a box of chocolates. You never know what you gonna get"_**  

That's all folks!!!  

[Back to Table of contents :arrow_double_up:](#table-of-contents)

## Author  

![Daniel da Silva Jarque (author)](https://i.imgur.com/2i0LPvN.png)

[Professional portfolio (Spanish/English/Catalan) - GitHub -](https://github.com/ddasilva64)\
[Professional profile (English) - LinkedIn -](https://linkedin.com/in/daniel-da-silva-jarque-863705206)

[Back to Table of contents :arrow_double_up:](#table-of-contents)

## eof

[Back to Table of contents :arrow_double_up:](#table-of-contents)

end of file