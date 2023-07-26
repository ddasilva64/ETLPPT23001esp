## **_dbo.DimCurrency (SQL Server table)_**

### Columns

| Key | Name                 | Data type          | Not null | Attributes | References | Description |
| :-: | :------------------- | :----------------: | :------: | :--------- | :--------  | :-----------|
| 1   | CurrencyKey          | int                | X        | Identity   |            | PK          |
| 2   | CurrencyAlternateKey | nchar(3)           | X        |            |            |             |
| 3   | CurrencyName         | nvarchar(50)       | X        |            |            |             |

![SQL Server source in SQL Server Management Studio](https://i.imgur.com/i77wbIq.png)
_SQL Server source in SQL Server Management Studio_

**Notice**: Some currency keys are deprecated. For example, the currency key for Afghanistan until 2003 in **_ISO 4217_** (currency alphabetic code) was AFA, but since then it has been AFN. In our **_DWH_**, we will adopt the **_ISO 4217_** currency alphabetic code standard, which means that:
1. We will only use the ISO3 standard.
2. We will convert all uses of the currency code to the current standard. For example, AFA will be transformed into AFN in all the tables in which it is used.

By the way, we will use the next public domain data sources for this task: 
- [Comprehensive country codes: ISO 3166, ITU, ISO 4217 currency codes, and many more](https://datahub.io/core/country-codes)  

### **_PROWPI002_DimCurrency.KTR (PDI)_**   
1. #Table input: **_dbo.DimCurrency_** (**_SQL Server_**)  
2. #raw_12: country-codes_csv.CSV  
3. #raw_02: countries_eng.CSV  
4. #raw_13: arrangements/XML dimcountries.XML  
5. #staging_02: arrangements/XML currencies.XML  
6. output #01 & output #02: **_DimCurrencies_** (**_Postgre SQL_**)  

![PDI transform](https://i.imgur.com/mBUqgU4.png)  
_PDI transform_  

![PDI execution](https://i.imgur.com/dpHuZHP.png)  
_PDI execution_

### **_<p><br>DimCurrencies layout (PostgreSQL)</p>_**  

| Key | Name          | Data type            | Not null | Attributes | References | Description | Metadata |
| :-: | :------------ | :------------------: | :------: | :--------- | :--------  | :---------- | :------- |
| 1   | CurrencyKey   | Character varying(3) | X        |            |            | PK          | m082     |
| 2   | Currency      | Character varying(60)|          |            |            |             | m083     |

![PostgreSQL's transactions checking in PgAdmin](https://i.imgur.com/vldaeUm.png)  
_PostgreSQL's transactions checking in PgAdmin_

**QA**: Go to [DWH (Data Warehouse)](dwh.md)  

### ChatGPT 3.5 usage  

[This project was checked using ChatGPT 3.5](../CHATGPT_USE.md)  

<p><br></p> 

[PROWPI002 ETL (AdventureWorksDW2022 DB) :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)  

### **_PROWPI002\_DimCountries.KTR (PDI)_**   
1. #Table input: **_dbo.DimCurrency_** (**_SQL Server_**)  
2. #raw_12: country-codes_csv.csv  
3. #raw_02: countries_eng.CSV  
4. #staging_07: arrangements/XML dimcountries.XML 
5. output #01 & output #02: **_DimCountries_** (**_Postgre SQL_**)  

![PDI transform](https://i.imgur.com/P2diJfD.png)  
_PDI transform_  

![PDI execution](https://i.imgur.com/lW3BKb7.png)  
_PDI execution_

**_<p><br>DimCountries layout</p>_**  
 
| Key	| Name         | Data type             | Not null | Attributes | References      | Description | Metadata |
| :-: | :----------- | :-------------------: | :------: | :--------- | :-------------- | :-----------| :------- |
| 1   | CountryCode  | Character varying(3)  | X        |            |                 | PK          |          |  
| 2   | Country      | Character varying(60) |          |            |                 |             |          |
| 3   | Capital      | Character varying(60) |          |            |                 |             |          |
| 4   | RegionCode   | Integer               |          |            | DimRegions      | FK          |          |
| 5   | SubregionCode| Integer               |          |            | DimSubregions   | FK          |          |
| 6   | CurrencyKey01| Character varying(3)  |          |            | DimCurrencies   | FK          |          |
| 7   | CurrencyKey02| Character varying(3)  |          |            | DimCurrencies   | FK          |          |
| 8   | Area         | Integer               |          |            |                 |             |          |

![PostgreSQL's transactions checking in PgAdmin](https://i.imgur.com/XHFHV1e.png)  
_PostgreSQL's transactions checking in PgAdmin_

**QA**: Go to [DWH (Data Warehouse)](dwh.md)  

### ChatGPT 3.5 usage  

[This project was checked using ChatGPT 3.5](../CHATGPT_USE.md)  

<p><br></p> 

[PROWPI002 ETL (AdventureWorksDW2022 DB) :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)  

### **_PROWPI002\_DimRegions.KTR (PDI)_**   
1. #Table input: **_dbo.DimCurrency_** (**_SQL Server_**)  
2. #raw_12: country-codes_csv.csv  
3. #raw_02: countries_eng.CSV  
4. #staging_07: arrangements/XML dimcountries.XML   
5. output #03: **_DimRegions_** (**_Postgre SQL_**)  

![PDI transform](https://i.imgur.com/WqVby2s.png)  
_PDI transform_  

![PDI execution](https://i.imgur.com/EZU1wxq.png)  
_PDI execution_

### **_<p><br>DimRegions layout</p>_**  

| Key	| Name       | Data type             | Not null | Attributes | References  | Description | Metadata |
| :-: | :--------- | :-------------------: | :------: | :--------- | :---------- | :---------- | :------- |
| 1   | RegionCode | Integer               | X        |            |             | PK          |          |  
| 2   | Region     | Character varying(20) |          |            |             |             |          |

![PostgreSQL's transactions checking in PgAdmin](https://i.imgur.com/K0L1MjX.png)  
_PostgreSQL's transactions checking in PgAdmin_

**QA**: Go to [DWH (Data Warehouse)](dwh.md)  

### ChatGPT 3.5 usage  

[This project was checked using ChatGPT 3.5](../CHATGPT_USE.md)  

<p><br></p> 
  
[PROWPI002 ETL (AdventureWorksDW2022 DB) :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)  

### **_PROWPI002\_DimSubregions.KTR (PDI)_**  
1. #Table input: **_dbo.DimCurrency_** (**_SQL Server_**)  
2. #raw_12: country-codes_csv.csv  
3. #raw_02: countries_eng.CSV  
4. #staging_07: arrangements/XML dimcountries.XML   
5. output #03: **_DimSubregions_** **_(Postgre SQL_**)

![PDI transform](https://i.imgur.com/dtSpYpf.png)  
_PDI transform_  

![PDI execution](https://i.imgur.com/606h01P.png)  
_PDI execution_

### **_<p><br>DimSubregions layout</p>_**  

| Key	| Name         | Data type             | Not null | Attributes | References  | Description | Metadata |
| :-: | :----------- | :-------------------: | :------: | :--------- | :---------- | :---------- | :------- |
| 1   | SubregionCode| Integer               | X        |            |             | PK          |          |  
| 2   | Subregion    | Character varying(20) |          |            |             |             |          |

![PostgreSQL's transactions checking in PgAdmin](https://i.imgur.com/xGo96rl.png)  
_PostgreSQL's transactions checking in PgAdmin_

**QA**: Go to [DWH (Data Warehouse)](dwh.md)  

### ChatGPT 3.5 usage  

[This project was checked using ChatGPT 3.5](../CHATGPT_USE.md)  

<p><br></p> 

[PROWPI002 ETL (AdventureWorksDW2022 DB) :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)