## **_dbo.DimProductCategory (SQL Server table)_**  

### Columns  

| Key	| Name                        | Data type    | Not null | Attributes | References            | Description         |
| :-: | :-------------------------- | :----------: | :------: | :--------- | :-------------------- | :------------------ |
| 1   | ProductCategoryKey          | int          | X        | Identity   |                       | PK                  |
| 2   | ProductCategoryAlternateKey | int          |          |            |                       | deprecated          |
| 3   | EnglishProductCategoryName  | nvarchar(50) | X        |            |                       | ProductCategory     |
| 4   | SpanishProductCategoryName  | nvarchar(50) | X        |            |                       | deprecated          |
| 5   | FrenchProductCategoryName   | nvarchar(50) | X        |            |                       | deprecated          |

   <p><br></p>  

![SQL Server source in SQL Server Management studio](https://i.imgur.com/BzXnn1j.png)  
**_SQL Server source in SQL Server Management studio_**  

   <p><br></p>  

**_Notice!_**: **_SizeRange_**, and **_Color_** fields have NA value, of course deprecated  

### **_PROWPI002\_DimProductCategory.KTR (PDI)_**   
1. #Table input: **_dbo.DimProductCategory_** (SQL Server)  
2. staging_13: **_DimProductCategory_** (Postgre SQL table)
 
   <p><br></p>  

  ![PDI transform](https://i.imgur.com/BYYxdL5.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/Dnt3Y9P.png)  
  _PDI execution_ 

### **_<p><br>DimProductCategory layout (Postgre SQL)</p>_**  

| Key	| Name                        | Data type             | Not null | Attributes | References            | Description         |
| :-: | :-------------------------- | :-------------------: | :------: | :--------- | :-------------------- | :------------------ |
| 1   | ProductCategoryKey          | integer               | X        |            |                       | PK                  |
| 2   | ProductCategory             | character varying(50) | X        |            |                       |                     |

   <p><br></p>  
 
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/qZCAYXX.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

  **_QA_**: You can download data sources, **_SQL Server_** tables, and **_PDI_** transformations to chek it  

[PROWPI002 ETL (AdventureWorksDW2022 DB) :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)