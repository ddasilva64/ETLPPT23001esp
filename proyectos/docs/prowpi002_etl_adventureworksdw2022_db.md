## DE (Data Engineering)  

### **_Source tables_**  
 
#### **_PROWPI002 ETL (AdventureWorksDW2022 DB)_**  

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
| 1   | ProductKey            | int          | X        |            | dbo.DimProduct        | FK           |
| 2   | OrderDateKey          | int          | X        |            | dbo.DimDate	         | FK-deprecated|
| 3   | DueDateKey            | int          | X        |            | dbo.DimDate		       | FK-deprecated|
| 4   | ShipDateKey           | int          | X        |            | dbo.DimDate		       | FK-deprecated|
| 5   | CustomerKey           | int          | X        |            | dbo.DimCustomer       | FK           |
| 6   | PromotionKey          | int          | X        |            | dbo.DimPromotion      | FK           |
| 7   | CurrencyKey           | int          | X        |            | dbo.DimCurrency	     | FK           |
| 8   | SalesTerritoryKey     | int          | X        |            | dbo.DimSalesTerritory | FK           |
| 9   | SalesOrderNumber      | nvarchar(20) | X        |            |                       | PK           |
| 10  | SalesOrderLineNumber  | tinyint      | X        |            |                       | PK           |
| 11  | RevisionNumber        | tinyint      | X        |            |                       |              |
| 12  | OrderQuantity         | smallint     | X        |            |                       |              |
| 13  | UnitPrice             | money        | X        |            |                       |              |
| 14  | ExtendedAmount        | money        | X        |            |                       |              |
| 15  | UnitPriceDiscountPct  | float        | X        |            |                       |              |
| 16  | DiscountAmount        | float        | X        |            |                       |              |
| 17  | ProductStandardCost   | money        | X        |            |                       |              |
| 18  | TotalProductCost      | money        | X        |            |                       |              |
| 19  | SalesAmount           | money        | X        |            |                       |              |
| 20  | TaxAmt                | money        | X        |            |                       |              |
| 21  | Freight               | money        | X        |            |                       |              |
| 22  | CarrierTrackingNumber | nvarchar(25) |          |            |                       |              |
| 23  | CustomerPONumber      | nvarchar(25) |          |            |                       |              |
| 24  | OrderDate             | datetime     |          |            |                       |              |
| 25  | DueDate               | datetime     |          |            |                       |              |
| 26  | ShipDate              | datetime     |          |            |                       |              |  

**_Warning_**!: In their database, **_Adventure Works Cycles, Inc._**, they count sales (in France and Germany), in € since January 1, 1999, but have not changed the value of CurrencyKey. At this time **_3DoWoCo_** will change **_dem_** and **_frf_** to **_eur_**

3.4.2.1. **_PROWPI002\_FactInternetSales.KTR_**   
3.4.2.1.1. #Table input: **_dbo.FactInternetSales_** (SQL Server)  
3.4.2.1.2. #Table input: **_dbo.DimCurrency_** (SQL Server)  
3.4.2.1.3. #raw_15: arrangements/XML currencies - euro.xml  
3.4.2.1.4. staging_08: **_FactInternetSales_** (Postgre SQL table) 

  **_<p><br>FactInternetSales layout</p>_**  

  | Key	| Name                  | Data type             | Not null | Attributes | References            | Description  | Metadata |
  | :-: | :-------------------- | :-------------------: | :------: | :--------- | :-------------------- | :----------- | :------- |
  | 1   | ProductKey            | integer               | X        |            | dbo.DimProduct        | FK           |          |
  | 2   | CustomerKey           | integer               | X        |            | dbo.DimCustomer       | FK           |          |
  | 3   | PromotionKey          | integer               | X        |            | dbo.DimPromotion      | FK           |          |
  | 4   | CurrencyKey           | integer               | X        |            | dbo.DimCurrency	      | FK           |          |
  | 5   | SalesTerritoryKey     | integer               | X        |            | dbo.DimSalesTerritory | FK           |          |
  | 6   | SalesOrderNumber      | Character variying(20)| X        |            |                       | PK           |          |
  | 7   | SalesOrderLineNumber  | integer               | X        |            |                       | PK           |          |
  | 8   | RevisionNumber        | integer               | X        |            |                       |              |          |
  | 9   | OrderQuantity         | integer               | X        |            |                       |              |          |
  | 10  | UnitPrice             | real                  | X        |            |                       |              |          |
  | 11  | ExtendedAmount        | real                  | X        |            |                       |              |          |
  | 12  | UnitPriceDiscountPct  | real                  | X        |            |                       |              |          |
  | 13  | DiscountAmount        | real                  | X        |            |                       |              |          |
  | 14  | ProductStandardCost   | real                  | X        |            |                       |              |          |
  | 15  | TotalProductCost      | real                  | X        |            |                       |              |          |
  | 16  | SalesAmount           | real                  | X        |            |                       |              |          |
  | 17  | TaxAmt                | real                  | X        |            |                       |              |          |
  | 18  | Freight               | real                  | X        |            |                       |              |          |
  | 19  | CarrierTrackingNumber | Character variying(25)|          |            |                       |              |          |
  | 20  | CustomerPONumber      | Character variying(25)|          |            |                       |              |          |
  | 21  | OrderDate             | date                  |          |            |                       |              |          |
  | 22  | DueDate               | date                  |          |            |                       |              |          |
  | 23  | ShipDate              | date                  |          |            |                       |              |          |
  
  **_<p><br>Transform execution</p>_**

  ![PDI transform](https://i.imgur.com/1m28Di2.png)  
  _PDI transform_  
  ![PDI execution](https://i.imgur.com/3x62USi.png)  
  _PDI execution_  
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/GQ64tqU.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

  3.2. **_dbo.DimDate_** (deprecated)  
  3.2.1. Columns  

| Key	| Name                  | Data type    | Not null | Attributes | References            | Description   |
| :-: | :-------------------- | :----------: | :------: | :--------- | :-------------------- | :------------ |
| 1   | DateKey               | int          | X        |            |                       | PK            |
| 2   | FullDateAlternateKey  | date         | X        |            |                       |               |
| 3   | DayNumberOfWeek       | tinyint      | X        |            |                       |               |
| 4   | EnglishDayNameOfWeek  | nvarchar(10) | X        |            |                       |               |
| 5   | SpanishDayNameOfWeek  | nvarchar(10) | X        |            |                       |               |
| 6   | FrenchDayNameOfWeek   | nvarchar(10) | X        |            |                       |               |
| 7   | DayNumberOfMonth      | tinyint      | X        |            |                       |               |
| 8   | DayNumberOfYear       | smallint     | X        |            |                       |               |
| 9   | WeekNumberOfYear      | tinyint      | X        |            |                       |               |
| 10  | EnglishMonthName      | nvarchar(10) | X        |            |                       |               |
| 11  | SpanishMonthName      | nvarchar(10) | X        |            |                       |               |
| 12  | FrenchMonthName       | nvarchar(10) | X        |            |                       |               |
| 13  | MonthNumberOfYear     | tinyint      | X        |            |                       |               |
| 14  | CalendarQuarter       | tinyint      | X        |            |                       |               |
| 15  | CalendarYear          | smallint     | X        |            |                       |               |	
| 16  | CalendarSemester      | tinyint      | X        |            |                       |               |
| 17  | FiscalQuarter         | tinyint      | X        |            |                       |               |
| 18  | FiscalYear            | smallint     | X        |            |                       |               |
| 19  | FiscalSemester        | tinyint      | X        |            |                       |               |

**_Warning_**!: This table is deprecated, because in **_Power BI_** (e.g.), the **_time intelligence functions_** provide more powerful functions. In other **_DS_** systems, such as those based on Python, we must do the same ourselves. We will not create this entity in the **_DWH_**  

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

**_Notice_**: Some currency keys are deprecated. For example, the currency key for Afghanistan until 2003 in Iso3 (**_ISO 4217-currency\_alphabetic\_code_**) was AFA, but since then it has been AFN. In our **_DWH_** we will adopt the ISO 4217-currency_alphabetic_code standard, which means that:
1. We will only use the Iso3 standard  
2. We will convert all uses of the currency code to the current standard. e.g. AFA will be transformed into AFN in all the tables in which it is used  
By the way, we will use the next public domain data sources, for this task: 
- [Comprehensive country codes: ISO 3166, ITU, ISO 4217 currency codes and many more](https://datahub.io/core/country-codes)

3.4.2.1. **_PROWPI002\_DimCurrency.KTR_**   
3.4.2.1.1. #Table input: **_dbo.DimCurrency_** (SQL Server)  
3.4.2.1.2. #raw_12: country-codes_csv.csv  
3.4.2.1.3. #raw_02: countries_eng.CSV  
3.4.2.1.4. #raw_13: arrangements/XML dimcountries.XML  
3.4.2.1.5. #raw_14: arrangements/XML currencies.xml  
3.4.2.1.6. #staging_08: **_DimCurrencies_** (Postgre SQL table) 

  **_<p><br>DimCountries layout</p>_**  

  | Key	| Name                  | Data type             | Not null | Attributes | References            | Description  | Metadata |
  | :-: | :-------------------- | :-------------------: | :------: | :--------- | :-------------------- | :----------- | :------- |
  | 1   | CurrencyKey           | Character variying(3) | X        |            |                       | PK           |          |  
  | 2   | Currency              | Character variying(60)|          |            |                       |              |          |
  
  **_<p><br>Transform execution</p>_**

  ![PDI transform](https://i.imgur.com/mBUqgU4.png)  
  _PDI transform_  
  ![PDI execution](https://i.imgur.com/dpHuZHP.png)  
  _PDI execution_  
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/vldaeUm.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

3.4.2.2. **_PROWPI002\_DimCountries.KTR_**   
3.4.2.2.1. #Table input: **_dbo.DimCurrency_** (SQL Server)  
3.4.2.2.2. #raw_12: country-codes_csv.csv  
3.4.2.2.3. #raw_02: countries_eng.CSV  
3.4.2.2.4. #raw_13: arrangements/XML dimcountries.XML  
3.4.2.2.5. #staging_09: **_DimCountries_** (Postgre SQL table) 

  **_<p><br>DimCountries layout</p>_**  

  | Key	| Name                  | Data type             | Not null | Attributes | References            | Description  | Metadata |
  | :-: | :-------------------- | :-------------------: | :------: | :--------- | :-------------------- | :----------- | :------- |
  | 1   | CountryCode           | Character variying(3) | X        |            |                       | PK           |          |  
  | 2   | Country               | Character variying(60)|          |            |                       |              |          |
  | 3   | Capital               | Character variying(60)|          |            |                       |              |          |
  | 4   | RegionCode            | Integer               |          |            |                       | FK           |          |
  | 5   | SubregionCode         | Integer               |          |            |                       | FK           |          |
  | 6   | CurrencyKey01         | Character variying(3) |          |            |                       | FK           |          |
  | 7   | CurrencyKey02         | Character variying(3) |          |            |                       | FK           |          |
  | 8   | Area                  | Integer               |          |            |                       |              |          |
  
  **_<p><br>Transform execution</p>_**

  ![PDI transform](https://i.imgur.com/P2diJfD.png)  
  _PDI transform_  
  ![PDI execution](https://i.imgur.com/lW3BKb7.png)  
  _PDI execution_  
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/XHFHV1e.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

3.4.2.3. **_PROWPI002\_DimRegions.KTR_**   
3.4.2.3.1. #Table input: **_dbo.DimCurrency_** (SQL Server)  
3.4.2.3.2. #raw_12: country-codes_csv.csv  
3.4.2.3.3. #raw_02: countries_eng.CSV  
3.4.2.3.4. #raw_13: arrangements/XML dimcountries.XML  
3.4.2.3.5. #staging_09: **_DimRegions_** (Postgre SQL table) 

  **_<p><br>DimRegions layout</p>_**  

  | Key	| Name                  | Data type             | Not null | Attributes | References            | Description  | Metadata |
  | :-: | :-------------------- | :-------------------: | :------: | :--------- | :-------------------- | :----------- | :------- |
  | 1   | RegionCode            | Integer               | X        |            |                       | PK           |          |  
  | 2   | Region                | Character variying(20)|          |            |                       |              |          |
  
  **_<p><br>Transform execution</p>_**

  ![PDI transform](https://i.imgur.com/WqVby2s.png)  
  _PDI transform_  
  ![PDI execution](https://i.imgur.com/EZU1wxq.png)  
  _PDI execution_  
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/K0L1MjX.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

3.4.2.4. **_PROWPI002\_DimSubregions.KTR_**   
3.4.2.4.1. #Table input: **_dbo.DimCurrency_** (SQL Server)  
3.4.2.4.2. #raw_12: country-codes_csv.csv  
3.4.2.4.3. #raw_02: countries_eng.CSV  
3.4.2.4.4. #raw_13: arrangements/XML dimcountries.XML  
3.4.2.4.5. #staging_10: **_DimSubregions_** (Postgre SQL table) 

  **_<p><br>DimSubregions layout</p>_**  

  | Key	| Name                  | Data type             | Not null | Attributes | References            | Description  | Metadata |
  | :-: | :-------------------- | :-------------------: | :------: | :--------- | :-------------------- | :----------- | :------- |
  | 1   | SubregionCode         | Integer               | X        |            |                       | PK           |          |  
  | 2   | Subregion             | Character variying(20)|          |            |                       |              |          |
  
  **_<p><br>Transform execution</p>_**

  ![PDI transform](https://i.imgur.com/dtSpYpf.png)  
  _PDI transform_  
  ![PDI execution](https://i.imgur.com/606h01P.png)  
  _PDI execution_  
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/xGo96rl.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

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
| 11  | IpAddressLocator         | nvarchar(15) |          |            |                       | deprecated        |

3.6.1.1. **_PROWPI002\_DimGeography.KTR_**   
3.6.1.1.1. #Table input: **_dbo.DimGeography_** (SQL Server)   
3.6.1.1.2. #raw_14: arrangements/XML countries geography.XML  
3.6.1.1.3. #staging_09: **_DimStatesProvinces_** (Postgre SQL table) 

  **_<p><br>DimStatesProvinces layout</p>_**  

  | Key	| Name                  | Data type             | Not null | Attributes | References            | Description  | Metadata |
  | :-: | :-------------------- | :-------------------: | :------: | :--------- | :-------------------- | :----------- | :------- |
  | 1   | StateProvinceCode     | Character variying(2) | X        |            |                       | PK           |          |  
  | 2   | CountryCode           | Character variying(3) | X        |            |                       | FK           |          |
  | 3   | StateProvince         | Character variying(60)|          |            |                       |              |          |
  
  **_<p><br>Transform execution</p>_**

  ![PDI transform](https://i.imgur.com/rMfFNsT.png)  
  _PDI transform_ 
  ![PDI execution](https://i.imgur.com/04qTBND.png)  
  _PDI execution_  
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/Dar3bXc.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

3.6.1.2. **_PROWPI002\_DimGeography.KTR_**   
3.6.1.2.1. #Table input: **_dbo.DimGeography_** (SQL Server)  
3.6.1.2.2. #raw_14: arrangements/XML countries geography.XML 
3.6.1.2.3. #staging_09: **_"DimStatesProvinces"_** (Postgre SQL table) 

  **_<p><br>DimStatesProvinces layout</p>_**  

  | Key	| Name                  | Data type             | Not null | Attributes | References            | Description  | Metadata |
  | :-: | :-------------------- | :-------------------: | :------: | :--------- | :-------------------- | :----------- | :------- |
  | 1   | GeographyKey          | Integer               | X        |            |                       | PK           |          |  
  | 2   | CountryCode           | Character variying(3) | X        |            |                       | FK           |          |
  | 3   | StateProvinceCode     | Character variying(2) | X        |            |                       | FK           |          |
  | 4   | SalesTerritoryKey     | Integer               |          |            |                       | FK           |          |
  | 5   | City                  | Character variying(60)|          |            |                       |              |          |
  | 6   | PostalCode            | Character variying(10)|          |            |                       |              |          |
  
  **_<p><br>Transform execution</p>_**

  ![The same PDI transform](https://i.imgur.com/rMfFNsT.png)  
  _The same PDI transform_  
  ![PDI execution](https://i.imgur.com/04qTBND.png)  
  _PDI execution_  
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/KNp4OlJ.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

**_Notice_**: In the future, **_3DoWoCo_** will provide **_Adventure Works Cycles, Inc._**, and any other customers, with a comprehensive data set of major world cities  

  3.7. **_dbo.DimSalesTerritory_**  
  3.7.1. Columns  

| Key	| Name                       | Data type      | Not null | Attributes | References            | Description |
| :-: | :------------------------- | :------------: | :------: | :--------- | :-------------------- | :-----------|
| 1   | SalesTerritoryKey          | int            | X        | Identity   |                       | PK          |
| 2   | SalesTerritoryAlternateKey | int            |          |            |                       | deprecated  |
| 3   | SalesTerritoryRegion       | nvarchar(50)   | X        |            |                       |             |
| 4   | SalesTerritoryCountry      | nvarchar(50)   | X        |            |                       |             |
| 5   | SalesTerritoryGroup        | nvarchar(50)   |          |            |                       |             |
| 6   | SalesTerritoryImage        | varbinary(MAX) |          |            |                       | deprecated  |

**_Notice_**: **_N/A_** values in **_DimSalesTerritory_** is deprecated  

3.7.1.1. **_PROWPI002\_DimSalesTerritory.KTR_**   
3.7.1.1.1. #Table input: **_dbo.DimSalesTerritory_** (SQL Server)   
3.7.1.1.2. #raw_14: arrangements/XML countries geography.XML  
3.7.1.1.3. #staging_09: **_DimSalesTerritory_** (Postgre SQL table) 

  **_<p><br>DimSalesTerritory layout</p>_**  

  | Key	| Name                  | Data type             | Not null | Attributes | References            | Description  | Metadata |
  | :-: | :-------------------- | :-------------------: | :------: | :--------- | :-------------------- | :----------- | :------- |
  | 1   | SalesTerritoryKey     | Integer               | X        |            |                       | PK           |          |  
  | 2   | SalesTerritoryRegion  | Character variying(60)|          |            |                       |              |          |
  | 3   | SalesTerritoryGroup   | Character variying(60)|          |            |                       |              |          |
  | 4   | CountryCode           | Character variying(3) |          |            |                       | FK           |          |
  
  **_<p><br>Transform execution</p>_**

  ![PDI transform](https://i.imgur.com/fmrtjcv.png)  
  _PDI transform_ 
  ![PDI execution](https://i.imgur.com/I9vysve.png)  
  _PDI execution_  
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/NQUEYEj.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

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