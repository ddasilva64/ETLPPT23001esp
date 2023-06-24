## **_dbo.FactInternetSalesReason (SQL Server table)_**  

### Columns  

| Key	| Name                     | Data type    | Not null | Attributes | References            | Description |
| :-: | :----------------------- | :----------: | :------: | :--------- | :-------------------- | :-----------|
| 1   | SalesOrderNumber         | nvarchar(20) | X        |            | dbo.FactInternetSales | PK,FK       |
| 2   | SalesOrderLineNumber     | tinyint      | X        |            | dbo.FactInternetSales | PK,FK       |
| 3   | SalesReasonKey           | int          | X        |            | dbo.DimSalesReason    | PK,FK       |

   <p><br></p>  

![SQL Server source in SQL Server Management studio](https://i.imgur.com/O1WaAPr.png)  
_SQL Server source in SQL Server Management studio_  

   <p><br></p>  

### **_PROWPI002\_FactInternetSalesReason.KTR (PDI)_**   
1. #Table input: **_dbo.FactInternetSalesReason_** (SQL Server)  
2. staging_14: **_FactInternetSalesReason_** (Postgre SQL table)
 
   <p><br></p>  

  ![PDI transform](https://i.imgur.com/bycJZt2.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/MRoO6tx.png)  
  _PDI execution_ 

### **_<p><br>FactInternetSalesReason layout (Postgre SQL)</p>_**  

| Key	| Name                        | Data type             | Not null | Attributes | References            | Description         |
| :-: | :-------------------------- | :-------------------: | :------: | :--------- | :-------------------- | :------------------ |
| 1   | SalesOrderNumber            | character varying(20) | X        |            | dbo.FactInternetSales | PK,FK               |
| 2   | SalesOrderLineNumber        | integer               | X        |            | dbo.FactInternetSales | PK,FK               |
| 3   | SalesReasonKey              | integer               | X        |            | dbo.DimSalesReason    | PK,FK               |

   <p><br></p>  
 
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/RH3LXWY.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

  **_QA_**: You can download data sources, **_SQL Server_** tables, and **_PDI_** transformations to chek it  

[PROWPI002 ETL (AdventureWorksDW2022 DB) :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)