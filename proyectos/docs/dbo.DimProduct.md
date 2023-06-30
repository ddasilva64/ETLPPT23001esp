## **_dbo.DimProduct (SQL Server table)_**  

### Columns  

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
| 24  | LargePhoto               | varbinary(MAX)|          |            |                           | deprecated  |
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

   <p><br></p>  

![SQL Server source in SQL Server Management studio](https://i.imgur.com/x7cgtyT.png)  
_SQL Server source in SQL Server Management studio_  

   <p><br></p>  

**_Notice!_**: **_SizeRange_**, and **_Color_** fields have NA value, of course deprecated  

### **_PROWPI002\_DimProduct.KTR (PDI)_**   
1. #Table input: **_dbo.DimProduct_** (SQL Server)  
2. staging_11: **_DimProduct_** (Postgre SQL table)
 
   <p><br></p>  

  ![PDI transform](https://i.imgur.com/rp8gt5P.png) 
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/xOzKVjn.png)  
  _PDI execution_ 


| Key	| Name                     | Data type             | Not null | Attributes | References                | Description | Metadata |
| :-: | :----------------------- | :-------------------: | :------: | :--------- | :------------------------ | :---------- | :------: |
| 1   | ProductKey               | integer               | X        |            |                           | PK          | m084     |
| 2   | ProductAlternateKey      | character varying(25) |          |            |                           |             | m085     |
| 3   | ProductSubcategoryKey    | integer               |          |            | dbo.DimProductSubcategory | FK          | m086     |   
| 4   | WeightUnitMeasureCode    | character varying(3)  |          |            |                           |             | m087     |
| 5   | SizeUnitMeasureCode      | character varying(3)  |          |            |                           |             | m088     |
| 6   | ProductName              | character varying(50) | X        |            |                           |             | m089     |
| 7   | StandardCost             | real                  |          |            |                           |             | m072     |
| 8   | FinishedGoodsFlag        | boolean               | X        |            |                           |             | m090     |
| 9   | Color                    | character varying(15) |          |            |                           |             | m091     |
| 10  | SafetyStockLevel         | integer               |          |            |                           |             | m092     |
| 11  | ReorderPoint             | integer               |          |            |                           |             | m093     |
| 12  | ListPrice                | real                  |          |            |                           |             | m073     |
| 13  | Size                     | character varying(50) |          |            |                           |             | m094     |
| 14  | SizeRange                | character varying(50) |          |            |                           |             | m095     |
| 15  | Weight                   | real                  |          |            |                           |             | m096     |
| 16  | DaysToManufacture        | integer               |          |            |                           |             | m097     |
| 17  | ProductLine              | character varying(2)  |          |            |                           |             | m098     |
| 18  | DealerPrice              | real                  |          |            |                           |             | m099     |
| 19  | Class                    | character varying(2)  |          |            |                           |             | m100     |
| 20  | Style                    | character varying(2)  |          |            |                           |             | m101     |
| 21  | ModelName                | character varying(50) |          |            |                           |             | m102     |
| 22  | Description              | character varying(400)|          |            |                           |             | m103     |
| 23  | StartDate                | date                  |          |            |                           |             | m104     |
| 24  | EndDate                  | date                  |          |            |                           |             | m105     |
| 25  | Status                   | character varying(7)  |          |            |                           |             | m106     |

   <p><br></p>  
 
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/zh8bxLN.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

  **_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**  

[PROWPI002 ETL (AdventureWorksDW2022 DB) :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)