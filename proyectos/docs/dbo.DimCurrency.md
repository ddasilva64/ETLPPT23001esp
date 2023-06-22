## **_dbo.DimCurrency (SQL Server table)_**  

### Columns  

| Key	| Name                     | Data type    | Not null | Attributes | References            | Description |
| :-: | :----------------------- | :----------: | :------: | :--------- | :-------------------- | :-----------|
| 1   | CurrencyKey              | int          | X        | Identity   |                       | PK          |
| 2   | CurrencyAlternateKey     | nchar(3)     | X        |            |                       |             |
| 3   | CurrencyName             | nvarchar(50) | X        |            |                       |             |

   <p><br></p>  

![SQL Server source in SQL Server Management studio](https://i.imgur.com/i77wbIq.png)  
**_SQL Server source in SQL Server Management studio_**  

   <p><br></p>  

**_Notice_**: Some currency keys are deprecated. For example, the currency key for Afghanistan until 2003 in Iso3 (**_ISO 4217-currency\_alphabetic\_code_**) was AFA, but since then it has been AFN. In our **_DWH_** we will adopt the ISO 4217-currency_alphabetic_code standard, which means that:
1. We will only use the Iso3 standard  
2. We will convert all uses of the currency code to the current standard. e.g. AFA will be transformed into AFN in all the tables in which it is used  
By the way, we will use the next public domain data sources, for this task: 
- [Comprehensive country codes: ISO 3166, ITU, ISO 4217 currency codes and many more](https://datahub.io/core/country-codes)  

### **_PROWPI002\_DimCurrency.KTR (PDI)_**   
1. #Table input: **_dbo.DimCurrency_** (SQL Server)  
2. #raw_12: country-codes_csv.csv  
3. #raw_02: countries_eng.CSV  
4. #raw_13: arrangements/XML dimcountries.XML  
5. #raw_14: arrangements/XML currencies.xml  
6. staging_08: **_dbo.DimCurrencies_** (Postgre SQL table)  
 
   <p><br></p>  

  ![PDI transform](https://i.imgur.com/mBUqgU4.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/dpHuZHP.png)  
  _PDI execution_ 

### **_<p><br>DimCurrencies layout (Postgre SQL)</p>_**  

  | Key	| Name                  | Data type             | Not null | Attributes | References            | Description  | Metadata |
  | :-: | :-------------------- | :-------------------: | :------: | :--------- | :-------------------- | :----------- | :------- |
  | 1   | CurrencyKey           | Character variying(3) | X        |            |                       | PK           |          |  
  | 2   | Currency              | Character variying(60)|          |            |                       |              |          |
  
   <p><br></p>  
 
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/vldaeUm.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

  **_QA_**: You can download data sources, **_SQL Server_** tables, and **_PDI_** transformations to chek it  

[PROWPI002 ETL (AdventureWorksDW2022 DB) :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)

### **_PROWPI002\_DimCountries.KTR (PDI)_**   
1. #Table input: **_dbo.DimCurrency_** (SQL Server)  
2. #raw_12: country-codes_csv.csv  
3. #raw_02: countries_eng.CSV  
4. #raw_13: arrangements/XML dimcountries.XML  
5. #staging_09: **_DimCountries_** (Postgre SQL table)  

   <p><br></p>  

  ![PDI transform](https://i.imgur.com/P2diJfD.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/lW3BKb7.png)  
  _PDI execution_ 

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
  
   <p><br></p>  
 
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/XHFHV1e.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

  **_QA_**: You can download data sources, **_SQL Server_** tables, and **_PDI_** transformations to chek it  

[PROWPI002 ETL (AdventureWorksDW2022 DB) :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)

### **_PROWPI002\_DimRegions.KTR (PDI)_**   
1. #Table input: **_dbo.DimCurrency_** (SQL Server)  
2. #raw_12: country-codes_csv.csv  
3. #raw_02: countries_eng.CSV  
4. #raw_13: arrangements/XML dimcountries.XML   
5. #staging_09: **_DimRegions_** (Postgre SQL table)  
 
   <p><br></p>  

  ![PDI transform](https://i.imgur.com/WqVby2s.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/EZU1wxq.png)  
  _PDI execution_ 

### **_<p><br>DimRegions layout</p>_**  

  | Key	| Name                  | Data type             | Not null | Attributes | References            | Description  | Metadata |
  | :-: | :-------------------- | :-------------------: | :------: | :--------- | :-------------------- | :----------- | :------- |
  | 1   | RegionCode            | Integer               | X        |            |                       | PK           |          |  
  | 2   | Region                | Character variying(20)|          |            |                       |              |          |
  
   <p><br></p>  
 
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/K0L1MjX.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

  **_QA_**: You can download data sources, **_SQL Server_** tables, and **_PDI_** transformations to chek it  
  
[PROWPI002 ETL (AdventureWorksDW2022 DB) :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

### **_PROWPI002\_DimSubregions.KTR (PDI)_**  

1. #Table input: **_dbo.DimCurrency_** (SQL Server)  
2. #raw_12: country-codes_csv.csv  
3. #raw_02: countries_eng.CSV  
4. #raw_13: arrangements/XML dimcountries.XML   
5. #staging_10: **_DimSubregions_** (Postgre SQL table)
 
   <p><br></p>  

  ![PDI transform](https://i.imgur.com/dtSpYpf.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/606h01P.png)  
  _PDI execution_ 

### **_<p><br>DimSubregions layout</p>_**  

  | Key	| Name                  | Data type             | Not null | Attributes | References            | Description  | Metadata |
  | :-: | :-------------------- | :-------------------: | :------: | :--------- | :-------------------- | :----------- | :------- |
  | 1   | SubregionCode         | Integer               | X        |            |                       | PK           |          |  
  | 2   | Subregion             | Character variying(20)|          |            |                       |              |          |
  
   <p><br></p>  
 
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/xGo96rl.png) 
  _Postgres SQL's transactions checking in PgAdmin_  

  **_QA_**: You can download data sources, **_SQL Server_** tables, and **_PDI_** transformations to chek it  

[PROWPI002 ETL (AdventureWorksDW2022 DB) :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)