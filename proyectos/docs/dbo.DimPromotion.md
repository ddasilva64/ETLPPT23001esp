## **_dbo.DimPromotion (SQL Server table)_**  

### Columns  

| Key	| Name                     | Data type    | Not null | Attributes | References            | Description       |
| :-: | :----------------------- | :----------: | :------: | :--------- | :-------------------- | :---------------- |
| 1   | PromotionKey             | int          | X        | Identity   |                       | PK                |
| 2   | PromotionAlternateKey    | int          |          |            |                       | deprecated        |
| 3   | EnglishPromotionName     | nvarchar(255)|          |            |                       | Promotion         |
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

   <p><br></p>  

![SQL Server source in SQL Server Management studio](https://i.imgur.com/OZ0NoVs.png)  
**_SQL Server source in SQL Server Management studio_**  

   <p><br></p>  

### **_PROWPI002\_DimPromotion.KTR (PDI)_**   
1. #Table input: **_dbo.DimPromotion_** (SQL Server)  
2. staging_09: **_DimPromotion_** (Postgre SQL table)
 
   <p><br></p>  

  ![PDI transform](https://i.imgur.com/jRO7coJ.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/bU5fFw4.png)  
  _PDI execution_ 

### **_<p><br>DimPromotion layout (Postgre SQL)</p>_**  

| Key	| Name                     | Data type               | Not null | Attributes | References            | Description       |
| :-: | :----------------------- | :---------------------: | :------: | :--------- | :-------------------- | :---------------- |
| 1   | PromotionKey             | integer                 | X        |            |                       | PK                |
| 3   | Promotion                | character varying(255)  |          |            |                       |                   |
| 6   | DiscountPct              | real                    |          |            |                       |                   |
| 7   | PromotionType            | character varying(50)   |          |            |                       |                   |
| 10  | PromotionCategory        | character varying(50)   |          |            |                       |                   |
| 13  | StartDate                | date                    | X        |            |                       |                   |
| 14  | EndDate                  | date                    | X        |            |                       |                   |
| 15  | MinQty                   | integer                 |          |            |                       |                   |
| 16  | MaxQty                   | integer                 |          |            |                       |                   |
  
   <p><br></p>  
 
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/iFEcju8.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

  **_QA_**: You can download data sources, **_SQL Server_** tables, and **_PDI_** transformations to chek it  

[PROWPI002 ETL (AdventureWorksDW2022 DB) :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)