## **_dbo.DimCustomer (SQL Server table)_**

### Columns

| Key | Name                  | Data type       | Not null | Attributes | References       | Description |
| :-: | :-------------------- | :-------------: | :------: | :--------- | :--------------- | :-----------|
| 1   | CustomerKey           | int             | X        | Identity   |                  | PK          |
| 2   | GeographyKey          | int             |          |            | dbo.DimGeography | FK          |
| 3   | CustomerAlternateKey  | nvarchar(15)    |          |            |                  |             |
| 4   | Title                 | nvarchar(8)     |          |            |                  |             |
| 5   | FirstName             | nvarchar(50)    |          |            |                  |             |
| 6   | MiddleName            | nvarchar(50)    |          |            |                  |             |
| 7   | LastName              | nvarchar(50)    |          |            |                  |             |
| 8   | NameStyle             | bit             |          |            |                  |             |
| 9   | FBirthDate            | date            |          |            |                  |             |
| 10  | MaritalStatus         | nchar(1)        |          |            |                  |             |
| 11  | Suffix                | nvarchar(10)    |          |            |                  |             |
| 12  | Gender                | nvarchar(1)     |          |            |                  |             |
| 13  | EmailAddress          | nvarchar(50)    |          |            |                  |             |
| 14  | YearlyIncome          | money           |          |            |                  |             |
| 15  | TotalChildren         | tinyint         |          |            |                  |             |
| 16  | NumberChildrenAtHome  | tinyint         |          |            |                  |             |
| 17  | EnglishEducation      | nvarchar(40)    |          |            |                  | Education   |
| 18  | SpanishEducation      | nvarchar(40)    |          |            |                  | deprecated  |
| 19  | FrenchEducation       | nvarchar(40)    |          |            |                  | deprecated  |
| 20  | EnglishOccupation     | nvarchar(100)   |          |            |                  | Occupation  |
| 21  | SpanishOccupation     | nvarchar(100)   |          |            |                  | deprecated  |
| 22  | FrenchOccupation      | nvarchar(100)   |          |            |                  | deprecated  |
| 23  | HouseOwnerFlag        | nchar(1)        |          |            |                  |             |
| 24  | NumberCarsOwned       | tinyint         |          |            |                  |             |
| 25  | AddressLine1          | nvarchar(120)   |          |            |                  |             |
| 26  | AddressLine2          | nvarchar(120)   |          |            |                  |             |
| 27  | Phone                 | nvarchar(20)    |          |            |                  |             |
| 28  | DateFirstPurchase     | date            |          |            |                  |             |
| 29  | CommuteDistance       | nvarchar(15)    |          |            |                  |             | 
| 30  | Occupation            | nvarchar(100)   |          |            |                  | deprecated  |

<p><br></p>  

![SQL Server source in SQL Server Management studio](https://i.imgur.com/JC2m2HP.png)  
_SQL Server source in SQL Server Management studio_

<p><br></p>  

### **_PROWPI002\_DimCustomer.KTR (PDI)_**   
1. #Table input: **_dbo.DimCustomer_** (**_SQL Server_**)  
2. output #01: **_DimCustomer_** (**_Postgre SQL_**)

<p><br></p>  

![PDI transform](https://i.imgur.com/m1bxdmI.png)  
_PDI transform_

<p><br></p>  

![PDI execution](https://i.imgur.com/hXiQLHz.png)  
_PDI execution_

### **_<p><br>DimCustomer layout (Postgre SQL)</p>_**  

| Key | Name                  | Data type              | Not null | Attributes | References       | Description  | Metadata |
| :-: | :-------------------- | :--------------------: | :------: | :--------- | :--------------- | :----------- | :------: |
| 1   | CustomerKey           | integer                | X        |            |                  | PK           | m060     |
| 2   | GeographyKey          | integer                |          |            | DimGeography     | FK           | m107     |
| 3   | CustomerAlternateKey  | Character variying(15) |          |            |                  |              | m108     |
| 4   | Title                 | Character variying(8)  |          |            |                  |              | m109     |
| 5   | FirstName             | Character variying(50) |          |            |                  |              | m034     |
| 6   | MiddleName            | Character variying(50) |          |            |                  |              | m036     |
| 7   | LastName              | Character variying(50) |          |            |                  |              | m035     |
| 8   | MaritalStatus         | Character variying(1)  |          |            |                  |              | m044     |
| 9   | BirthDate             | date                   |          |            |                  |              | m040     |
| 10  | Suffix                | Character variying(10) |          |            |                  |              | m045     |
| 11  | Gender                | Character variying(1)  |          |            |                  |              | m048     |
| 12  | EmailAddress          | Character variying(50) |          |            |                  |              | m042     |
| 13  | YearlyIncome          | real                   |          |            |                  |              | m110     |
| 14  | TotalChildren         | integer                |          |            |                  |              | m111     |
| 15  | NumberChildrenAtHome  | integer                |          |            |                  |              | m112     |
| 16  | Education             | Character variying(40) |          |            |                  |              | m113     |
| 17  | Occupation            | Character variying(100)|          |            |                  |              | m114     |
| 18  | HouseOwnerFlag        | Character variying(1)  |          |            |                  |              | m115     |
| 19  | NumberCarsOwned       | integer                |          |            |                  |              | m116     |
| 20  | AddressLine1          | Character variying(120)|          |            |                  |              | m117     |
| 21  | AddressLine2          | Character variying(120)|          |            |                  |              | m118     |
| 22  | Phone                 | Character variying(20) |          |            |                  |              | m043     |
| 23  | DateFirstPurchase     | date                   |          |            |                  |              | m119     |
| 24  | CommuteDistance       | Character variying(15) |          |            |                  |              | m120     |
| 25  | NameStyle             | Boolean                |          |            |                  |              | m037     |

<p><br></p>  
 
![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/YZVEb6s.png)  
_Postgres SQL's transactions checking in PgAdmin_

**_QA_**: Go to [DWH (Data Warehouse)](dwh.md)  

### ChatGPT 3.5 usage  

[This project was checked using ChatGPT 3.5](../CHATGPT_USE.md)  

<p><br></p> 

[PROWPI002 ETL (AdventureWorksDW2022 DB) :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)