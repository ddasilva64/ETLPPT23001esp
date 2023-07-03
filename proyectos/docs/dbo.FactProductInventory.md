## **_dbo.FactProductInventory (SQL Server table)_**  

### Columns  

| Key	| Name                     | Data type    | Not null | Attributes | References            | Description      |
| :-: | :----------------------- | :----------: | :------: | :--------- | :-------------------- | :--------------- |
| 1   | ProductKey               | int          | X        |            | dbo.DimProduct        | PK,FK            |
| 2   | DateKey                  | int          | X        |            | dbo.DimDate           | PK,FK-deprecated |
| 3   | MovementDate             | date         | X        |            |                       |                  |
| 4   | UnitCost                 | money        | X        |            |                       |                  |
| 5   | UnitsIn                  | int          | X        |            |                       |                  |
| 6   | UnitsOut                 | int          | X        |            |                       |                  |
| 7   | UnitsBalance             | int          | X        |            |                       |                  |

   <p><br></p>  

![SQL Server source in SQL Server Management studio](https://i.imgur.com/VBjkFc0.png)  
_SQL Server source in SQL Server Management studio_  

   <p><br></p>   

### **_PROWPI002\_FactProductInventory.KTR (PDI)_**   
1. #Table input: **_dbo.FactProductInventory_** (SQL Server)  
2. staging_15: **_FactProductInventory_** (Postgre SQL table)
 
   <p><br></p>  

  ![PDI transform](https://i.imgur.com/E0Y7nA4.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/zXfPnoN.png)  
  _PDI execution_ 

### **_<p><br>FactProductInventory layout (Postgre SQL)</p>_**  

| Key	| Name                     | Data type    | Not null | Attributes | References            | Description      | Metadata |
| :-: | :----------------------- | :----------: | :------: | :--------- | :-------------------- | :--------------- | :------: |
| 1   | ProductKey               | integer      | X        |            | dbo.DimProduct        | PK,FK            | m084     |
| 2   | MovementDate             | date         | X        |            |                       | PK               | m176     |
| 3   | UnitCost                 | real         | X        |            |                       |                  | m177     |
| 4   | UnitsIn                  | integer      | X        |            |                       |                  | m178     |
| 5   | UnitsOut                 | integer      | X        |            |                       |                  | m179     |
| 6   | UnitsBalance             | integer      | X        |            |                       |                  | m180     |             

   <p><br></p>  
 
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/hTBF0bl.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

  **_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**  

[PROWPI002 ETL (AdventureWorksDW2022 DB) :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)