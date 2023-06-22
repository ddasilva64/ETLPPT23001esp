## **_dbo.FactInternetSales (SQL Server table)_**  

### Columns  

| Key	| Name                  | Data type    | Not null | Attributes | References            | Description  |
| :-: | :-------------------- | :----------: | :------: | :--------- | :-------------------- | :----------- |
| 1   | ProductKey            | int          | X        |            | dbo.DimProduct        | FK           |
| 2   | OrderDateKey          | int          | X        |            | dbo.DimDate	         | FK-deprecated|
| 3   | DueDateKey            | int          | X        |            | dbo.DimDate		      | FK-deprecated|
| 4   | ShipDateKey           | int          | X        |            | dbo.DimDate		      | FK-deprecated|
| 5   | CustomerKey           | int          | X        |            | dbo.DimCustomer       | FK           |
| 6   | PromotionKey          | int          | X        |            | dbo.DimPromotion      | FK           |
| 7   | CurrencyKey           | int          | X        |            | dbo.DimCurrency	      | FK           |
| 8   | SalesTerritoryKey     | int          | X        |            | dbo.DimSalesTerritory | FK           |
| 9   | SalesOrderNumber      | nvarchar(20) | X        |            |                       | PK           |
| 10  | SalesOrderLineNumber  | tinyint      | X        |            |                       | PK           |
| 11  | RevisionNumber        | tinyint      | X        |            |                       |              |
| 12  | OrderQuantity         | smallint     | X        |            |                       |              |
| 13  | UnitPrice             | money        | X        |            |                       |              |
| 14  | ExtendedAmount        | money        | X        |            |                       |              |
| 15  | UnitPriceDiscountPct  | float        | X        |            |                       |              |
| 16  | DiscountAmount        | float        | X        |            |                       |              |
| 17  | ProductStandardCost   | money        | X        |            |                       |              |
| 18  | TotalProductCost      | money        | X        |            |                       |              |
| 19  | SalesAmount           | money        | X        |            |                       |              |
| 20  | TaxAmt                | money        | X        |            |                       |              |
| 21  | Freight               | money        | X        |            |                       |              |
| 22  | CarrierTrackingNumber | nvarchar(25) |          |            |                       |              |
| 23  | CustomerPONumber      | nvarchar(25) |          |            |                       |              |
| 24  | OrderDate             | datetime     |          |            |                       |              |
| 25  | DueDate               | datetime     |          |            |                       |              |
| 26  | ShipDate              | datetime     |          |            |                       |              |  

   <p><br></p>  

![SQL Server source in SQL Server Management studio](https://i.imgur.com/Zdn6jCp.png)  
**_SQL Server source in SQL Server Management studio_**  

   <p><br></p>  

**_Warning!_**: In their database, **_Adventure Works Cycles, Inc._**, they count sales (in France and Germany), in € since January 1, 1999, but have not changed the value of CurrencyKey. At this time **_3DoWoCo_** will change **_"dem"_** and **_"frf"_** to **_"eur"_**

### **_PROWPI002\_FactInternetSales.KTR (PDI)_**   
1. #Table input: **_dbo.FactInternetSales_** (SQL Server)  
2. #Table input: **_dbo.DimCurrency_** (SQL Server)  
3. #raw_15: arrangements/XML currencies - euro.xml  
4. staging_08: **_FactInternetSales_** (Postgre SQL table)
 
   <p><br></p>  

  ![PDI transform](https://i.imgur.com/1m28Di2.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/3x62USi.png)  
  _PDI execution_ 

### **_<p><br>FactInternetSales layout (Postgre SQL)</p>_**  

  | Key | Name                  | Data type             | Not null | Attributes | References            | Description  | Metadata |
  | :-: | :-------------------- | :-------------------: | :------: | :--------- | :-------------------- | :----------- | :------- |
  | 1   | ProductKey            | integer               | X        |            | dbo.DimProduct        | FK           |          |
  | 2   | CustomerKey           | integer               | X        |            | dbo.DimCustomer       | FK           |          |
  | 3   | PromotionKey          | integer               | X        |            | dbo.DimPromotion      | FK           |          |
  | 4   | CurrencyKey           | integer               | X        |            | dbo.DimCurrency	     | FK           |          |
  | 5   | SalesTerritoryKey     | integer               | X        |            | dbo.DimSalesTerritory | FK           |          |
  | 6   | SalesOrderNumber      | Character variying(20)| X        |            |                       | PK           |          |
  | 7   | SalesOrderLineNumber  | integer               | X        |            |                       | PK           |          |
  | 8   | RevisionNumber        | integer               | X        |            |                       |              |          |
  | 9   | OrderQuantity         | integer               | X        |            |                       |              |          |
  | 10  | UnitPrice             | real                  | X        |            |                       |              |          |
  | 11  | ExtendedAmount        | real                  | X        |            |                       |              |          |
  | 12  | UnitPriceDiscountPct  | real                  | X        |            |                       |              |          |
  | 13  | DiscountAmount        | real                  | X        |            |                       |              |          |
  | 14  | ProductStandardCost   | real                  | X        |            |                       |              |          |
  | 15  | TotalProductCost      | real                  | X        |            |                       |              |          |
  | 16  | SalesAmount           | real                  | X        |            |                       |              |          |
  | 17  | TaxAmt                | real                  | X        |            |                       |              |          |
  | 18  | Freight               | real                  | X        |            |                       |              |          |
  | 19  | CarrierTrackingNumber | Character variying(25)|          |            |                       |              |          |
  | 20  | CustomerPONumber      | Character variying(25)|          |            |                       |              |          |
  | 21  | OrderDate             | date                  |          |            |                       |              |          |
  | 22  | DueDate               | date                  |          |            |                       |              |          |
  | 23  | ShipDate              | date                  |          |            |                       |              |          |
  
   <p><br></p>  
 
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/GQ64tqU.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

  **_QA_**: You can download data sources, **_SQL Server_** tables, and **_PDI_** transformations to chek it  

[PROWPI002 ETL (AdventureWorksDW2022 DB) :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)