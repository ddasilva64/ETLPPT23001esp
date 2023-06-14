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
- [DE (Data Engineering)](#de)
- [DWH (Data Warehouse)](#dwh)
- [UX (User Experience)](#ux)
- [Data set sources](#data-set-sources)
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

1. Take as a base our project [**_PROWPI001_**](https://github.com/ddasilva64/MTDPDN23001esp/blob/master/proyectos/PROWPI001.ipynb) and transform it, according to their requirements. That is, firstly, we need to do the **_ETL (Extract, Transform & Load)_**, and quality assurance, **_according to their needs_**  

2. Secondly, we need **_to transform the DB that is transferred to us (AdventureWorksDW)_**, into a system that integrates our DB (**_PROWPI002_**) and **_that is the base of their DS and BI system_**  

3. Third, there will be **_parametric data_** in the form of sheets (tables) **_in Excel spreadsheets_**  

4. Additionally, there will be **_data in the parameters (Excel)_**, which will evolve (temporarily). That is, **_there will be historical data, outside the DB (AdventureWorksDW)_**  

5. All the **_ETL_** steps will be stored in a **_DWH (Data Warehouse)_**, in which we will build in a different **_RDBS_** from the company's corporate **_RDBS_**. The reason for this is not to interfere with the normal functioning of the corporate database    

5. Also, they need that we create a tabular model for sales and marketing users to analyze Internet sales data in the AdventureWorksDW DB, to expand their business worldwide, and to other business models  

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

   - **_IT_** staff are very professional and efficient, but they are **_too specialized _** in their technology stack  

   - The management staff of our client, **_do not have the necessary skills_**, to face **_BI_**, and **_DS_** projects. To solve this problem, we have contacted **_Adventure Works Cycles, Inc._** with our training partner: [**_Platzi_**](https://en.wikipedia.org/wiki/Platzi) (**_may be, one of the better Technology of Information Systems Training company worldwide_**)  

![Platzi logo](https://i.imgur.com/sG9GhiB.jpg)  
_(Platzi logo, from [Platzi Team](https://courses.platzi.com/), [public domain](https://commons.wikimedia.org/w/index.php?curid=93410933))_

[Back to Table of contents :arrow_double_up:](#table-of-contents)

### **_Opportunity_**  

The current project may be just the beginning of the **_BI_**, and **_DS_** collaboration between **_3DoWoCo_**, and **_Adventure Works Cycles, Inc._**. **_There are 80% hidden needs to discover and new business opportunities, for our client, that we can help them to discover_**    

![#pic003](https://i.imgur.com/arHXGzQ.png, "Iceberg")  
_DS & BI needs are like an iceberg (80% not visible)_     

[Back to Table of contents :arrow_double_up:](#table-of-contents)

### **_Solution_**  

#### **_Steps or methods_**  

- **_ETL_** from **_PROWPI001_**, will be ported from **_Python_** to **_PDI_**  

- Each table from different **_dsf (Data Source Files)_** of **_PROWPI001_**, will generate a **_.KTR_** file (**_Transformation file_**), that is our client will be able to check transformation results, easily. Later, we will integrate transform tables from **_PROWPI001_** project in a **_fact table_** or in a **_dimension table_** (only one)   

- The operational data, which as we have said, is in **_SQL Server_** (**_AdventureWorksDW2022_** DB), we will complete it with **_Excel_** parametric tables. These tables will be part of **_PROWPI002_**. Some of these parametric tables will be historic data   

- **_Adventure Works Cycles, Inc._** provided us, in the DB, **_dimension tables (Dim prefix)_** and **_fact tables (fact prefix)_**  

- They also need the following transformations:  

  1. Each table will be a different **_.KTR_** file, just as we will do in our **_PROWPI001 dsf_**  

  2. All **_country data_** will be transformed to **_ISO standard_** adopted in **_PROWPI001_** (**_more efficient and standard_**)  

  3. **_All other geographic data will be replaced_** by standard names and geographic coordinates, and nothing else  

  4. **_Each parametric table_** will be a different **_.KTR_** file, just as DB tables  

- **_PROWPI002 will focus on obtaining the productivity metrics of the Sales Dept. (Sales Department)_**, which will be able to obtain **_KPI (Key Performance Indicatos)_** from the **_HR Dept. (Human Resources Department_**)  

- **_Sales Dept._** of **_Adventure Works Cycles, Inc._** commits to transfer, **_quickly and with absolute transparency_**, the data necessary to generate historical parametric data

- **_HR Dept._** of **_Adventure Works Cycles, Inc._** undertakes to transfer, with absolute transparency, the data and metrics desired for the control of the productivity of the Sales Dept.  

- **_HR Dept._** of **_Adventure Works Cycles, Inc._** undertakes to transfer, with absolute transparency, the data and metrics desired for the control of the productivity of the Sales Dept.  

- The **_Adventure Works Cycles, Inc. Management_** agrees to provide the necessary feedback, to obtain the best information and **_UX (User eXperience)_** of the final **_BSC_**. **_This will be done, as many times as it goes off_**  

- Meetings (in person or by **_Microsoft Teams_**), will be done without excuses, without 'ifs' or 'buts', between **_Adventure Works Cycles, Inc._**, and **_3DoWoCo_**, including to concerned Managers or employees    

[Back to Table of contents :arrow_double_up:](#table-of-contents)

#### **_Goals and objectives_**  

- **_PROWPI001 ETL_**  
  1. **_PROWPI001_countries.KTR_**  
    1.1. dsf #01: PopulationDataWorldBank.XLSX  
    1.2. dsf #02: countries_eng.CSV  
    1.3. dsf #03: 2021_population.CSV  
    1.4. dsf #04: arrangements/XML country areas not match input.XML  
    1.5. output #01: **_DimCountries_** (Postgre SQL table)  
  2. **_PROWPI001_demography.KTR_**  
    2.1. dsf #01: 2021_population.CSV  
    2.2. dsf #02: arrangements/XML country demography not match input.XML  
    2.3. output #01: stages_dsf\demography.XML
  3. **_PROWPI001_ecology.KTR_**  
    3.1. dsf #01: HDR21-22_Composite_indices_complete_time_series.CSV  
    3.2. dsf #03: countries_eng.CSV  
    3.3. output #01: stages_dsf\ecology.XML  
  4. **_PROWPI001_economy.KTR_**  
    4.1. dsf #01: API_NY.GDP.MKTP.KD.ZG_DS2_en_csv_v2_4701072.CSV  
    4.2. dsf #02: HDR21-22_Composite_indices_complete_time_series.CSV  
    4.3. dsf #03: countries_eng.CSV  
    4.4. dsf #03: WEO_Data_01.CSV  
    4.5. dsf #04: WEO_Data_02.CSV  
    4.6. output #01: stages_dsf\economy.XML  
  5. **_PROWPI001_education.KTR_**  
    5.1. dsf #01: HDR21-22_Composite_indices_complete_time_series.CSV  
    5.2. dsf #02: countries_eng.CSV  
    5.3. output #01: stages_dsf\education.XML
  6. **_PROWPI001_health.KTR_**  
    6.1. dsf #01: HDR21-22_Composite_indices_complete_time_series.CSV  
    6.2. dsf #02: countries_eng.CSV  
    6.3. dsf #03: NHA indicators.XLSX
    6.4. dsf #04: arrangements/XML countries NHS not match input.XML  
    6.5. output #01: stages_dsf\health.XML  
  7. **_PROWPI001_fact.KTR_**  
    7.1. dsf #01: stages_dsf\demography.XML  
    7.2. dsf #02: stages_dsf\ecology.XML  
    7.3. dsf #03: stages_dsf\economy.XML  
    7.4. dsf #04: stages_dsf\education.XML  
    7.5. dsf #04: stages_dsf\health.XML 
    7.6. output #01: **_FactCountries_** (Postgre SQL table)  


**_Notice_**: See our, worldwide well-known standard, project [**_PROWPI001_**](https://github.com/ddasilva64/MTDPDN23001esp/blob/master/proyectos/PROWPI001.ipynb), for **_dsf_** documentation (URL, licenses, and so on)       

- **_AdventureWorksDW2022 DB_**  
  1. **_ERD (Entity Relationship Diagram) DB_**  

![ERD DB](https://i.imgur.com/WE0X3Vo.png)

  2. **_ERD Internet sales subsistem_**

![ERD Internet sales subsistem](https://i.imgur.com/HLDMiTG.png)
_Internet sales subsistem in dbo schema_

  3. **_Internet sales subsistem tables_**   
  3.1. **_dbo.FactInternetSales_**  
  3.1.1. Columns  

| Key	| Name                  | Data type    | Null | Attributes | References            | Description |
| :-: | :-------------------- | :----------: | :--: | :--------- | :-------------------- | :-----------|
| 1   | ProductKey            | int          |      |            | dbo.DimProduct        |             |
| 2   | OrderDateKey          | int          |      |            | dbo.DimDate	         |             |
| 3   | DueDateKey            | int          |      |            | dbo.DimDate		       |             |
| 4   | ShipDateKey           | int          |      |            | dbo.DimDate		       |             |
| 5   | CustomerKey           | int          |      |            | dbo.DimCustomer       |             |
| 6   | PromotionKey          | int          |      |            | dbo.DimPromotion      |             |
| 7   | CurrencyKey           | int          |      |            | dbo.DimCurrency	     |             |
| 8   | SalesTerritoryKey     | int          |      |            | dbo.DimSalesTerritory |             |
| 9   | SalesOrderNumber      | nvarchar(20) |      |            |                       |             |
| 10  | SalesOrderLineNumber  | tinyint      |      |            |                       |             |
| 11  | RevisionNumber        | tinyint      |      |            |                       |             |
| 12  | OrderQuantity         | smallint     |      |            |                       |             |
| 13  | UnitPrice             | money        |      |            |                       |             |
| 14  | ExtendedAmount        | money        |      |            |                       |             |
| 15  | UnitPriceDiscountPct  | float        |      |            |                       |             |
| 16  | DiscountAmount        | float        |      |            |                       |             |
| 17  | ProductStandardCost   | money        |      |            |                       |             |
| 18  | TotalProductCost      | money        |      |            |                       |             |
| 19  | SalesAmount           | money        |      |            |                       |             |
| 20  | TaxAmt                | money        |      |            |                       |             |
| 21  | Freight               | money        |      |            |                       |             |
| 22  | CarrierTrackingNumber | nvarchar(25) |      |            |                       |             |
| 23  | CustomerPONumber      | nvarchar(25) |      |            |                       |             |
| 24  | OrderDate             | datetime     |      |            |                       |             |
| 25  | DueDate               | datetime     |      |            |                       |             |
| 26  | ShipDate              | datetime     |      |            |                       |             |  

  3.2. **_dbo.DimDate_**  
  3.2.1. Columns  

| Key	| Name                  | Data type    | Null | Attributes | References            | Description |
| :-: | :-------------------- | :----------: | :--: | :--------- | :-------------------- | :-----------|
| 1   | DateKey               | int          |      |            |                       |             |
| 2   | FullDateAlternateKey  | date         |      |            |                       |             |
| 3   | DayNumberOfWeek       | tinyint      |      |            |                       |             |
| 4   | EnglishDayNameOfWeek  | nvarchar(10) |      |            |                       |             |
| 5   | SpanishDayNameOfWeek  | nvarchar(10) |      |            |                       |             |
| 6   | FrenchDayNameOfWeek   | nvarchar(10) |      |            |                       |             |
| 7   | DayNumberOfMonth      | tinyint      |      |            |                       |             |
| 8   | DayNumberOfYear       | smallint     |      |            |                       |             |
| 9   | WeekNumberOfYear      | tinyint      |      |            |                       |             |
| 10  | EnglishMonthName      | nvarchar(10) |      |            |                       |             |
| 11  | SpanishMonthName      | nvarchar(10) |      |            |                       |             |
| 12  | FrenchMonthName       | nvarchar(10) |      |            |                       |             |
| 13  | MonthNumberOfYear     | tinyint      |      |            |                       |             |
| 14  | CalendarQuarter       | tinyint      |      |            |                       |             |
| 15  | CalendarYear          | smallint     |      |            |                       |             |	
| 16  | CalendarSemester      | tinyint      |      |            |                       |             |
| 17  | FiscalQuarter         | tinyint      |      |            |                       |             |
| 18  | FiscalYear            | smallint     |      |            |                       |             |
| 19  | FiscalSemester        | tinyint      |      |            |                       |             |

  3.3. **_dbo.DimPromotion_**  
  3.3.1. Columns  

| Key	| Name                     | Data type    | Null | Attributes | References            | Description |
| :-: | :----------------------- | :----------: | :--: | :--------- | :-------------------- | :-----------|
| 1   | PromotionKey             | int          |      | Identity   |                       |             |
| 2   | PromotionAlternateKey    | int          |      |            |                       |             |
| 3   | EnglishPromotionName     | nvarchar(255)|      |            |                       |             |				
| 4   | SpanishPromotionName     | nvarchar(255)|      |            |                       |             |			
| 5   | FrenchPromotionName      | nvarchar(255)|      |            |                       |             |		
| 6   | DiscountPct              | float        |      |            |                       |             |
| 7   | EnglishPromotionType     | nvarchar(50) |      |            |                       |             |
| 8   | SpanishPromotionType	   | nvarchar(50) |      |            |                       |             |	
| 9   | FrenchPromotionType      | nvarchar(50) |      |            |                       |             |	
| 10  | EnglishPromotionCategory | nvarchar(50) |      |            |                       |             |	
| 11  | SpanishPromotionCategory | nvarchar(50) |      |            |                       |             |
| 12  | FrenchPromotionCategory  | nvarchar(50) |      |            |                       |             |
| 13  | StartDate                | datetime     |      |            |                       |             |
| 14  | EndDate                  | datetime     |      |            |                       |             |
| 15  | MinQty                   | int          |      |            |                       |             |
| 16  | MaxQty                   | int          |      |            |                       |             |

  3.4. **_dbo.DimCurrency_**  
  3.4.1. Columns 

| Key	| Name                     | Data type    | Null | Attributes | References            | Description |
| :-: | :----------------------- | :----------: | :--: | :--------- | :-------------------- | :-----------|
| 1   | CurrencyKey              | int          |      | Identity   |                       |             |
| 2   | CurrencyAlternateKey     | nchar(3)     |      |            |                       |             |
| 3   | CurrencyName             | nvarchar(50) |      |            |                       |             |

  3.5. **_dbo.DimCustomer_**  
  3.5.1. Columns  

| Key	| Name                     | Data type    | Null | Attributes | References            | Description |
| :-: | :----------------------- | :----------: | :--: | :--------- | :-------------------- | :-----------|
| 1   | CustomerKey              | int          |      | Identity   |                       |             |
| 2   | GeographyKey             | int          |      |            | dbo.DimGeography      |             |
| 3   | CustomerAlternateKey     | nvarchar(15) |      |            |                       |             |
| 4   | Title                    | nvarchar(8)  |      |            |                       |             |
| 5   | FirstName                | nvarchar(50) |      |            |                       |             |
| 6   | MiddleName               | nvarchar(50) |      |            |                       |             |
| 7   | LastName                 | nvarchar(50) |      |            |                       |             |
| 8   | NameStyle                | bit          |      |            |                       |             |
| 9   | FBirthDate               | date         |      |            |                       |             |		
| 10  | MaritalStatus            | nchar(1)     |      |            |                       |             |
| 11  | Suffix                   | nvarchar(10) |      |            |                       |             |
| 12  | Gender                   | nvarchar(1)  |      |            |                       |             |
| 13  | EmailAddress             | nvarchar(50) |      |            |                       |             |
| 14  | YearlyIncome             | money        |      |            |                       |             |
| 15  | TotalChildren            | tinyint      |      |            |                       |             |
| 16  | NumberChildrenAtHome     | tinyint      |      |            |                       |             |
| 17  | EnglishEducation         | nvarchar(40) |      |            |                       |             |
| 18  | SpanishEducation         | nvarchar(40) |      |            |                       |             |
| 19  | FrenchEducation          | nvarchar(40) |      |            |                       |             |
| 20  | EnglishOccupation        | nvarchar(100)|      |            |                       |             |
| 21  | SpanishOccupation        | nvarchar(100)|      |            |                       |             |
| 22  | FrenchOccupation         | nvarchar(100)|      |            |                       |             |
| 23  | HouseOwnerFlag           | nchar(1)     |      |            |                       |             |
| 24  | NumberCarsOwned          | tinyint      |      |            |                       |             |
| 25  | AddressLine1             | nvarchar(120)|      |            |                       |             |
| 26  | AddressLine2             | nvarchar(120)|      |            |                       |             |
| 27  | Phone                    | nvarchar(20) |      |            |                       |             |
| 28  | DateFirstPurchase        | date         |      |            |                       |             |
| 29  | CommuteDistance          | nvarchar(15) |      |            |                       |             |

  3.6. **_dbo.DimGeography_**  
  3.6.1. Columns  

| Key	| Name                     | Data type    | Null | Attributes | References            | Description |
| :-: | :----------------------- | :----------: | :--: | :--------- | :-------------------- | :-----------|
| 1   | GeographyKey             | int          |      | Identity   |                       |             |
| 2   | City                     | nvarchar(30) |      |            |                       |             |
| 3   | StateProvinceCode        | nvarchar(3)  |      |            |                       |             |
| 4   | StateProvinceName        | nvarchar(50) |      |            |                       |             |
| 5   | CountryRegionCode        | nvarchar(3)  |      |            |                       |             |
| 6   | EnglishCountryRegionName | nvarchar(50) |      |            |                       |             |
| 7   | SpanishCountryRegionName | nvarchar(50) |      |            |                       |             |
| 8   | FrenchCountryRegionName  | nvarchar(50) |      |            |                       |             |
| 9   | PostalCode               | nvarchar(15) |      |            |                       |             |
| 10  | SalesTerritoryKey        | int          |      |            | dbo.DimSalesTerritory	|             |
| 11  | IpAddressLocator         | nvarchar(15) |      |            |                       |             |

  3.7. **_dbo.DimSalesTerritory_**  
  3.7.1. Columns  

| Key	| Name                       | Data type      | Null | Attributes | References            | Description |
| :-: | :------------------------- | :------------: | :--: | :--------- | :-------------------- | :-----------|
| 1   | SalesTerritoryKey          | int            |      | Identity   |                       |             |
| 2   | SalesTerritoryAlternateKey | int            |      |            |                       |             |
| 3   | SalesTerritoryRegion       | nvarchar(50)   |      |            |                       |             |
| 4   | SalesTerritoryCountry      | nvarchar(50)   |      |            |                       |             |
| 5   | SalesTerritoryGroup        | nvarchar(50)   |      |            |                       |             |
| 6   | SalesTerritoryImage        | varbinary(MAX) |      |            |                       |             |

  3.8. **_dbo.DimProduct_**
  3.8.1. Columns 

| Key	| Name                     | Data type    | Null | Attributes | References            | Description |
| :-: | :----------------------- | :----------: | :--: | :--------- | :-------------------- | :-----------|
1		ProductKey	int		Identity		
2		ProductAlternateKey	nvarchar(25)				
3		ProductSubcategoryKey	int			dbo.DimProductSubcategory	
4		WeightUnitMeasureCode	nchar(3)				
5		SizeUnitMeasureCode	nchar(3)				
6		EnglishProductName	nvarchar(50)				
7		SpanishProductName	nvarchar(50)				
8		FrenchProductName	nvarchar(50)				
9		StandardCost	money				
10		FinishedGoodsFlag	bit				
11		Color	nvarchar(15)				
12		SafetyStockLevel	smallint				
13		ReorderPoint	smallint				
14		ListPrice	money				
15		Size	nvarchar(50)				
16		SizeRange	nvarchar(50)				
17		Weight	float				
18		DaysToManufacture	int				
19		ProductLine	nchar(2)				
20		DealerPrice	money				
21		Class	nchar(2)				
22		Style	nchar(2)				
23		ModelName	nvarchar(50)				
24		LargePhoto	varbinary(MAX)				
25		EnglishDescription	nvarchar(400)				
26		FrenchDescription	nvarchar(400)				
27		ChineseDescription	nvarchar(400)				
28		ArabicDescription	nvarchar(400)				
29		HebrewDescription	nvarchar(400)				
30		ThaiDescription	nvarchar(400)				
31		GermanDescription	nvarchar(400)				
32		JapaneseDescription	nvarchar(400)				
33		TurkishDescription	nvarchar(400)				
34		StartDate	datetime				
35		EndDate	datetime				
36		Status	nvarchar(7)		

  3.9. **_dbo.DimProductSubcategory_**  
  3.9.1. Columns  

| Key	| Name                     | Data type    | Null | Attributes | References            | Description |
| :-: | :----------------------- | :----------: | :--: | :--------- | :-------------------- | :-----------|
1		ProductSubcategoryKey	int		Identity		
2		ProductSubcategoryAlternateKey	int				
3		EnglishProductSubcategoryName	nvarchar(50)				
4		SpanishProductSubcategoryName	nvarchar(50)				
5		FrenchProductSubcategoryName	nvarchar(50)				
6		ProductCategoryKey	int			dbo.DimProductCategory	

  3.10. **_dbo.DimProductCategory_**  
  3.10.1. Columns  

| Key	| Name                     | Data type    | Null | Attributes | References            | Description |
| :-: | :----------------------- | :----------: | :--: | :--------- | :-------------------- | :-----------|
1		ProductCategoryKey	int		Identity		
2		ProductCategoryAlternateKey	int				
3		EnglishProductCategoryName	nvarchar(50)				
4		SpanishProductCategoryName	nvarchar(50)				
5		FrenchProductCategoryName	nvarchar(50)	

  3.11. **_dbo.FactInternetSalesReason_**  
  3.11.1. Columns  

| Key	| Name                     | Data type    | Null | Attributes | References            | Description |
| :-: | :----------------------- | :----------: | :--: | :--------- | :-------------------- | :-----------|
1		SalesOrderNumber	nvarchar(20)			dbo.FactInternetSales	
2		SalesOrderLineNumber	tinyint			dbo.FactInternetSales	
3		SalesReasonKey	int			dbo.DimSalesReason	

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

## DE  

### **_Prework_**

1. Conversion from **_ETL of PROWPI001_** (**_Python_**) to **_ETL of PROWPI001_** (**_PDI_**), and test results  

Datasets

| **_Kaggle, World Bank Indicators Collection_** | Format | Convert to |
| :--------------------------------------------- | :----- | :--------- |
| PopulationDataWorldBank                        | .XLSX  |            |

**_Notice_**: PDI is built in Java, and the correct way to get .XLSX file is with the driver (.jar), which is called Excel 2007 XLSX (Apache POI Streaming)  


[Back to Table of contents :arrow_double_up:](#table-of-contents)

---

## DWH  

[Back to Table of contents :arrow_double_up:](#table-of-contents)

---

## UX  

[Back to Table of contents :arrow_double_up:](#table-of-contents)  

---

## Data set sources  

- Dataset #001: Based on [PROWPI001](https://github.com/ddasilva64/MTDPDN23001esp/tree/master/proyectos)  

[Back to Table of contents :arrow_double_up:](#table-of-contents)

---

## Picture list  

- **_#pic001_**: [Free pic "Matriz, Red y El intercambio de datos" in pixabay](https://pixabay.com/es/illustrations/matriz-red-el-intercambio-de-datos-1027571/), free pic by [**_Peggy\_Marco_**](https://pixabay.com/es/users/peggy_marco-1553824/)

- **_#pic002_**: ["Reciclar, Verde y Tierra" in pixabay](https://pixabay.com/es/vectors/reciclar-verde-tierra-29227/), free pic by [**_Clker-Free-Vector-Images_**](https://pixabay.com/es/users/clker-free-vector-images-3736/)

- **_#pic003_**: ["Iceberg, Encima y Agua" in pixabay](https://pixabay.com/es/illustrations/iceberg-encima-agua-blanco-fr%c3%ado-3273216/), free pic by [**_MoteOo_**](https://pixabay.com/es/users/moteoo-466065/)

[Back to Table of contents :arrow_double_up:](#table-of-contents)

---

## Storytelling notice  

All dataset sources are licensed in the public domain, but Drinking Water for Planet Earth Company, Inc. (**_DWPECO_**) is an invention (the same as **_3DoWoCo_**). It's a narrative to build project storytelling, containing data solutions, which the author sees in his lifetime professional  

**_Disclaimer!_**: DWPECO and 3DoWoCo are a fiction. Any similarities to companies living or dead, or something else is purely coincidental  

Many dataset sources are based on [PROWPI001]() project, built by xxxx Platzi course. The ETL were made, in this project, in **_Python_**, now we built ETL with **_PDI_** exclusively  

The present project **_PROWPI002_** is an exercise for xxx Platzi course, anyway  

By the way, today May 2023, the human being has shown that he can find, but not take advantage of, water, which is almost never found in a liquid state, in many bodies of our Star System (Moon, Mars, asteroids, and other satellites)  

Anyway, what can we get from data in this project? It can happen, as Forrest Gump said:  
> **_"Life is like a box of chocolates. You never know what you gonna get"_**  

That's all folks!!!  

[Back to Table of contents :arrow_double_up:](#table-of-contents)

---

## Author  

![Daniel da Silva Jarque (author)](https://i.imgur.com/2i0LPvN.png)

[Professional portfolio (Spanish/English/Catalan) - GitHub -](https://github.com/ddasilva64)\
[Professional profile (English) - LinkedIn -](https://linkedin.com/in/daniel-da-silva-jarque-863705206)

[Back to Table of contents :arrow_double_up:](#table-of-contents)

---

## eof

[Back to Table of contents :arrow_double_up:](#table-of-contents)

end of file