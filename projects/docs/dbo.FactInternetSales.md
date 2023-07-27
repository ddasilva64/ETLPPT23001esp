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
_SQL Server source in SQL Server Management studio_  

<p><br></p>  

**_Warning!_**: In their database, **_Adventure Works Cycles, Inc._**, they count sales (in France and Germany), in € since January 1, 1999, but have not changed the value of CurrencyKey. At this time **_3DoWoCo_** will change **_"dem"_** and **_"frf"_** to **_"eur"_**

<p><br></p> 

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

<p><br></p> 

### **_FactInternetSales layout (Postgre SQL)_**  

  | Key | Name                  | Data type             | Not null | Attributes | References            | Description  | Metadata |
  | :-: | :-------------------- | :-------------------: | :------: | :--------- | :-------------------- | :----------- | :------- |
  | 1   | ProductKey            | integer               | X        |            | DimProduct            | FK           | m059     |
  | 2   | CustomerKey           | integer               | X        |            | DimCustomer           | FK           | m060     |
  | 3   | PromotionKey          | integer               | X        |            | DimPromotion          | FK           | m061     |
  | 4   | CurrencyKey           | integer               | X        |            | DimCurrencies 	     | FK           | m062     |
  | 5   | SalesTerritoryKey     | integer               | X        |            | DimSalesTerritory     | FK           | m063     |
  | 6   | SalesOrderNumber      | Character variying(20)| X        |            |                       | PK           | m064     |
  | 7   | SalesOrderLineNumber  | integer               | X        |            |                       | PK           | m065     |
  | 8   | RevisionNumber        | integer               | X        |            |                       |              | m066     |
  | 9   | OrderQuantity         | integer               | X        |            |                       |              | m067     |
  | 10  | UnitPrice             | real                  | X        |            |                       |              | m068     |
  | 11  | ExtendedAmount        | real                  | X        |            |                       |              | m069     |
  | 12  | UnitPriceDiscountPct  | real                  | X        |            |                       |              | m070     |
  | 13  | DiscountAmount        | real                  | X        |            |                       |              | m071     |
  | 14  | ProductStandardCost   | real                  | X        |            |                       |              | m072     |
  | 15  | TotalProductCost      | real                  | X        |            |                       |              | m073     |
  | 16  | SalesAmount           | real                  | X        |            |                       |              | m074     |
  | 17  | TaxAmt                | real                  | X        |            |                       |              | m075     |
  | 18  | Freight               | real                  | X        |            |                       |              | m076     |
  | 19  | CarrierTrackingNumber | Character variying(25)|          |            |                       |              | m077     |
  | 20  | CustomerPONumber      | Character variying(25)|          |            |                       |              | m078     |
  | 21  | OrderDate             | date                  |          |            |                       |              | m079     |
  | 22  | DueDate               | date                  |          |            |                       |              | m080     |
  | 23  | ShipDate              | date                  |          |            |                       |              | m081     |
  
<p><br></p>  

![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/GQ64tqU.png)  
_Postgres SQL's transactions checking in PgAdmin_  

<p><br></p>  

**_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**  

<p><br></p> 

[ChatGPT usage](../CHATGPT_USAGE.md)  

<p><br></p> 

[PROWPI002 ETL (AdventureWorksDW2022 DB) :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)