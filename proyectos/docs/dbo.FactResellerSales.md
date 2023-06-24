## **_dbo.FactResellerSales (SQL Server table)_**  

### Columns  

| Key	| Name                     | Data type    | Not null | Attributes | References            | Description  |
| :-: | :----------------------- | :----------: | :------: | :--------- | :-------------------- | :----------- |
| 1   | ProductKey               | int          | X        |            | dbo.DimProduct        | FK           |
| 2   | OrderDateKey             | int          | X        |            | dbo.DimDate           | FK-deprecated|
| 3   | DueDateKey               | int          | X        |            | dbo.DimDate           | FK-deprecated|
| 4   | ShipDateKey              | int          | X        |            | dbo.DimDate           | FK-deprecated|
| 5   | ResellerKey              | int          | X        |            | dbo.DimReseller       | FK           |
| 6   | EmployeeKey              | int          | X        |            | dbo.DimEmployee       | FK           |
| 7   | PromotionKey             | int          | X        |            | dbo.DimPromotion      | FK           |
| 8   | CurrencyKey              | int          | X        |            | dbo.DimCurrency       | FK           |
| 9   | SalesTerritoryKey        | int          | X        |            | dbo.DimSalesTerritory | FK           |
| 10  | SalesOrderNumber         | nvarchar(20) | X        |            |                       | PK           |
| 11  | SalesOrderLineNumber     | tinyint      | X        |            |                       | PK           |
| 12  | RevisionNumber           | tinyint      | X        |            |                       |              |
| 13  | OrderQuantity            | smallint     | X        |            |                       |              |
| 14  | UnitPrice                | money        | X        |            |                       |              |
| 15  | ExtendedAmount           | money        | X        |            |                       |              |
| 16  | UnitPriceDiscountPct     | float        | X        |            |                       |              |
| 17  | DiscountAmount           | float        | X        |            |                       |              |
| 18  | ProductStandardCost      | money        | X        |            |                       |              |
| 19  | TotalProductCost         | money        | X        |            |                       |              |
| 20  | SalesAmount              | money        | X        |            |                       |              |
| 21  | TaxAmt                   | money        | X        |            |                       |              |
| 22  | Freight                  | money        | X        |            |                       |              |
| 23  | CarrierTrackingNumber    | nvarchar(25) |          |            |                       |              |
| 24  | CustomerPONumber         | nvarchar(25) |          |            |                       |              |
| 25  | OrderDate                | datetime     |          |            |                       |              |
| 26  | DueDate                  | datetime     |          |            |                       |              |
| 27  | ShipDate                 | datetime     |          |            |                       |              |

   <p><br></p>  

![SQL Server source in SQL Server Management studio](https://i.imgur.com/dKALxGH.png)  
_SQL Server source in SQL Server Management studio_  

   <p><br></p>   

### **_PROWPI002\_FactResellerSales.KTR (PDI)_**   
1. #Table input: **_dbo.FactResellerSales_** (SQL Server)  
2. staging_14: **_FactResellerSales_** (Postgre SQL table)
 
   <p><br></p>  

  ![PDI transform](https://i.imgur.com/vnjRSHD.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/zL66SMC.png)  
  _PDI execution_ 

### **_<p><br>FactResellerSales layout (Postgre SQL)</p>_**  

| Key	| Name                     | Data type             | Not null | Attributes | References            | Description  |
| :-: | :----------------------- | :-------------------: | :------: | :--------- | :-------------------- | :----------- |
| 1   | ProductKey               | integer               | X        |            | dbo.DimProduct        | FK           |
| 2   | ResellerKey              | integer               | X        |            | dbo.DimReseller       | FK           |
| 3   | EmployeeKey              | integer               | X        |            | dbo.DimEmployee       | FK           |
| 4   | PromotionKey             | integer               | X        |            | dbo.DimPromotion      | FK           |
| 5   | CurrencyKey              | character varying(3)  | X        |            | dbo.DimCurrency       | FK           |
| 6   | SalesTerritoryKey        | integer               | X        |            | dbo.DimSalesTerritory | FK           |
| 7   | SalesOrderNumber         | character varying(20) | X        |            |                       | PK           |
| 8   | SalesOrderLineNumber     | integer               | X        |            |                       | PK           |
| 9   | RevisionNumber           | integer               | X        |            |                       |              |
| 10  | OrderQuantity            | integer               | X        |            |                       |              |
| 11  | UnitPrice                | real                  | X        |            |                       |              |
| 12  | ExtendedAmount           | real                  | X        |            |                       |              |
| 13  | UnitPriceDiscountPct     | real                  | X        |            |                       |              |
| 14  | DiscountAmount           | real                  | X        |            |                       |              |
| 15  | ProductStandardCost      | real                  | X        |            |                       |              |
| 16  | TotalProductCost         | real                  | X        |            |                       |              |
| 17  | SalesAmount              | real                  | X        |            |                       |              |
| 18  | TaxAmt                   | real                  | X        |            |                       |              |
| 19  | Freight                  | real                  | X        |            |                       |              |
| 20  | CarrierTrackingNumber    | character varying(25) |          |            |                       |              |
| 21  | CustomerPONumber         | character varying(25) |          |            |                       |              |
| 22  | OrderDate                | date                  |          |            |                       | FK           |
| 23  | DueDate                  | date                  |          |            |                       | FK           |
| 24  | ShipDate                 | date                  |          |            |                       | FK           |

   <p><br></p>  
 
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/dK2rjRe.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

  **_QA_**: You can download data sources, **_SQL Server_** tables, and **_PDI_** transformations to chek it  

[PROWPI002 ETL (AdventureWorksDW2022 DB) :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)