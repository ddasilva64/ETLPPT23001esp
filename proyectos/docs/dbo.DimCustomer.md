## **_dbo.DimCustomer (SQL Server table)_**  

### Columns  

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
| 30  | Occupation               | nvarchar(100)|          |            |                       |             |

   <p><br></p>  

![SQL Server source in SQL Server Management studio](https://i.imgur.com/JC2m2HP.png)  
**_SQL Server source in SQL Server Management studio_**  

   <p><br></p>  

**_Warning!_**: In their database, **_Adventure Works Cycles, Inc._**, they count sales (in France and Germany), in € since January 1, 1999, but have not changed the value of CurrencyKey. At this time **_3DoWoCo_** will change **_"dem"_** and **_"frf"_** to **_"eur"_**

### **_PROWPI002\_DimCustomer.KTR (PDI)_**   
1. #Table input: **_dbo.DimCustomer_** (SQL Server)  
2. staging_10: **_DimCustomer_** (Postgre SQL table)
 
   <p><br></p>  

  ![PDI transform](https://i.imgur.com/m1bxdmI.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/hXiQLHz.png)  
  _PDI execution_ 

### **_<p><br>DimCustomer layout (Postgre SQL)</p>_**  

| Key | Name                     | Data type              | Not null | Attributes | References            | Description  | Metadata |
| :-: | :----------------------- | :--------------------: | :------: | :--------- | :-------------------- | :----------- | :------- |
| 1   | CustomerKey              | integer                | X        | Identity   |                       | PK           |          |
| 2   | GeographyKey             | integer                |          |            | dbo.DimGeography      | FK           |          |
| 3   | CustomerAlternateKey     | Character variying(15) |          |            |                       |              |          |
| 4   | Title                    | Character variying(8)  |          |            |                       |              |          |
| 5   | FirstName                | Character variying(50) |          |            |                       |              |          |
| 6   | MiddleName               | Character variying(50) |          |            |                       |              |          |
| 7   | LastName                 | Character variying(50) |          |            |                       |              |          |
| 10  | MaritalStatus            | Character variying(1)  |          |            |                       |              |          |
| 11  | Suffix                   | Character variying(10) |          |            |                       |              |          |
| 12  | Gender                   | Character variying(1)  |          |            |                       |              |          |
| 13  | EmailAddress             | Character variying(50) |          |            |                       |              |          |
| 14  | YearlyIncome             | real                   |          |            |                       |              |          |
| 15  | TotalChildren            | integer                |          |            |                       |              |          |
| 16  | NumberChildrenAtHome     | integer                |          |            |                       |              |          |
| 17  | Education                | Character variying(40) |          |            |                       |              |          |
| 20  | Occupation               | Character variying(100)|          |            |                       |              |          |
| 23  | HouseOwnerFlag           | Character variying(1)  |          |            |                       |              |          |
| 24  | NumberCarsOwned          | integer                |          |            |                       |              |          |
| 25  | AddressLine1             | Character variying(120)|          |            |                       |              |          |
| 26  | AddressLine2             | Character variying(120)|          |            |                       |              |          |
| 27  | Phone                    | Character variying(20) |          |            |                       |              |          |
| 28  | DateFirstPurchase        | date                   |          |            |                       |              |          |
| 29  | CommuteDistance          | Character variying(15) |          |            |                       |              |          |
| 30  | Occupation               | Character variying(100)|          |            |                       |              |          |
  
   <p><br></p>  
 
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/YZVEb6s.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

  **_QA_**: You can download data sources, **_SQL Server_** tables, and **_PDI_** transformations to chek it  

[PROWPI002 ETL (AdventureWorksDW2022 DB) :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)