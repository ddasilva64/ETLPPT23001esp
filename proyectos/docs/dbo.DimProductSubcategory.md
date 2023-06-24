## **_dbo.DimProductSubcategory (SQL Server table)_**  

### Columns  

| Key	| Name                           | Data type    | Not null | Attributes | References            | Description            |
| :-: | :----------------------------- | :----------: | :------: | :--------- | :-------------------- | :--------------------- |
| 1   | ProductSubcategoryKey          | int          | X        | Identity   |                       | PK                     |
| 2   | ProductSubcategoryAlternateKey | int          |          |            |                       | deprecated             |
| 3   | EnglishProductSubcategoryName  | nvarchar(50) | X        |            |                       | ProductSubcategoryName |
| 4   | SpanishProductSubcategoryName  | nvarchar(50) | X        |            |                       | deprecated             |
| 5   | FrenchProductSubcategoryName   | nvarchar(50) | X        |            |                       | deprecated             |
| 6   | ProductCategoryKey             | int          |          |            | dbo.DimProductCategory| FK                     |	

   <p><br></p>  

![SQL Server source in SQL Server Management studio](https://i.imgur.com/zIPgD0x.png)  
**_SQL Server source in SQL Server Management studio_**  

   <p><br></p>  

**_Notice!_**: **_SizeRange_**, and **_Color_** fields have NA value, of course deprecated  

### **_PROWPI002\_DimProductSubcategory.KTR (PDI)_**   
1. #Table input: **_dbo.DimProductSubcategory_** (SQL Server)  
2. staging_12: **_DimProductSubcategory_** (Postgre SQL table)
 
   <p><br></p>  

  ![PDI transform](https://i.imgur.com/eqxcJFk.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/Tti91Ot.png)  
  _PDI execution_ 

### **_<p><br>DimProductSubcategory layout (Postgre SQL)</p>_**  

| Key	| Name                           | Data type             | Not null | Attributes | References            | Description            |
| :-: | :----------------------------- | :-------------------: | :------: | :--------- | :-------------------- | :--------------------- |
| 1   | ProductSubcategoryKey          | integer               | X        |            |                       | PK                     |
| 2   | ProductSubcategory             | character varying(50) | X        |            |                       |                        |
| 3   | ProductCategoryKey             | integer               |          |            | dbo.DimProductCategory| FK                     |	

   <p><br></p>  
 
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/sPsJ5uZ.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

  **_QA_**: You can download data sources, **_SQL Server_** tables, and **_PDI_** transformations to chek it  

[PROWPI002 ETL (AdventureWorksDW2022 DB) :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)