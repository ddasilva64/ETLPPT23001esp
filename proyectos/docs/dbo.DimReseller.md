## **_dbo.DimReseller (SQL Server table)_**  

### Columns  

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

   <p><br></p>  

![SQL Server source in SQL Server Management studio](https://i.imgur.com/VJWCr15.png)  
_SQL Server source in SQL Server Management studio_  

   <p><br></p>   

### **_PROWPI002\_DimReseller.KTR (PDI)_**   
1. #Table input: **_dbo.DimReseller_** (SQL Server)  
2. staging_16: **_DimReseller_** (Postgre SQL table)
 
   <p><br></p>  

  ![PDI transform](https://i.imgur.com/POU5Qzp.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/7c1DcvM.png)  
  _PDI execution_ 

### **_<p><br>DimReseller layout (Postgre SQL)</p>_**  

| Key	| Name                     | Data type             | Not null | Attributes | References            | Description       |
| :-: | :----------------------- | :-------------------: | :------: | :--------- | :-------------------- | :---------------- |
| 1   | ResellerKey              | integer               | X        |            |                       | PK                |
| 2   | GeographyKey             | integer               |          |            | dbo.DimGeography      | FK                |
| 3   | ResellerAlternateKey     | character varying(15) |          |            |                       |                   |
| 4   | Phone                    | character varying(25) |          |            |                       |                   |
| 5   | BusinessType             | character varying(20) | X        |            |                       |                   |
| 6   | ResellerName             | character varying(50) | X        |            |                       |                   |
| 7   | NumberEmployees          | integer               |          |            |                       |                   |
| 8   | OrderFrequency           | character varying(1)  |          |            |                       |                   |
| 9   | OrderMonth               | integer               |          |            |                       |                   |
| 10  | FirstOrderYear           | integer               |          |            |                       |                   |
| 11  | LastOrderYear            | integer               |          |            |                       |                   |
| 12  | ProductLine              | character varying(50) |          |            |                       |                   |
| 13  | AddressLine1             | character varying(60) |          |            |                       |                   |
| 14  | AddressLine2             | character varying(60) |          |            |                       |                   |
| 15  | AnnualSales              | real                  |          |            |                       |                   |
| 16  | BankName                 | character varying(50) |          |            |                       |                   |
| 17  | MinPaymentType           | integer               |          |            |                       |                   |
| 18  | MinPaymentAmount         | real                  |          |            |                       |                   |
| 19  | AnnualRevenue            | real                  |          |            |                       |                   |	
| 20  | YearOpened               | integer               |          |            |                       |                   |

   <p><br></p>  
 
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/r16xcW7.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

  **_QA_**: You can download data sources, **_SQL Server_** tables, and **_PDI_** transformations to chek it  

[PROWPI002 ETL (AdventureWorksDW2022 DB) :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)