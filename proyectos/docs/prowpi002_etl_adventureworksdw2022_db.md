## DE (Data Engineering)  

### **_Source tables_**  
 
#### **_PROWPI002 ETL (AdventureWorksDW2022 DB)_**  

- **_[Source DB's ERD (SQL Server)](Source_SQL_Server_DB.md)_**  
**_Notice_**: **_ERD_** (Entity Relationship Diagram) is the best system to know the database design at a glance  

#### **_PROWPI002 ETL Internet Sales Subsystem_**  

- **_[Internet Sales Subsystem ERD](Internet_Sales_Subsystem_ERD.md)_**  

- **_Internet Sales Subsystem tables transformations_**   
  - **_[dbo.FactInternetSales](dbo.FactInternetSales.md)_**  
  - **_[dbo.DimDate](dbo.DimDate.md)_**  
  - **_[dbo.DimPromotion](dbo.DimPromotion.md)_**  
  - **_[dbo.DimCurrency](dbo.DimCurrency.md)_**  
  - **_[dbo.DimCustomer](dbo.DimCustomer.md)_**  
  - **_[dbo.DimGeography](dbo.DimGeography.md)_**  
  - **_[dbo.DimSalesTerritory](dbo.DimSalesTerritory.md)_**  
  - **_[dbo.DimProduct](dbo.DimProduct.md)_**  
  - **_[dbo.DimProductSubcategory](dbo.DimProductSubcategory.md)_**  
  - **_[dbo.DimProductCategory](dbo.DimProductCategory.md)_**  
  - **_[dbo.FactInternetSalesReason](dbo.FactInternetSalesReason.md)_**  
  - **_[dbo.FactResellerSales](dbo.FactResellerSales.md)_**  
  - **_[dbo.FactProductInventory](dbo.FactProductInventory.md)_**  
  - **_[dbo.DimEmployee](dbo.DimEmployee.md)_**  




  3.16. **_dbo.DimReseller_**  
  3.165.1. Columns  

| Key	| Name                     | Data type    | Not null | Attributes | References            | Description       |
| :-: | :----------------------- | :----------: | :------: | :--------- | :-------------------- | :---------------- |
| 1   | ResellerKey              | int          | X        | Identity   |                       | PK                |
| 2   | GeographyKey             | int          |          |            | dbo.DimGeography      | FK                |
| 3   | ResellerAlternateKey     | nvarchar(15) |          |            |                       |                   |
| 4   | Phone                    | nvarchar(25) |          |            |                       |                   |
| 5   | BusinessType             | nvarchar(20) | X        |            |                       |                   |
| 6   | ResellerName             | nvarchar(50) | X        |            |                       |                   |
| 7   | NumberEmployees          | int          |          |            |                       |                   |
| 8   | OrderFrequency           | char(1)      |          |            |                       |                   |
| 9   | OrderMonth               | tinyint      |          |            |                       |                   |
| 10  | FirstOrderYear           | int          |          |            |                       |                   |
| 11  | LastOrderYear            | int          |          |            |                       |                   |
| 12  | ProductLine              | nvarchar(50) |          |            |                       |                   |
| 13  | AddressLine1             | nvarchar(60) |          |            |                       |                   |
| 14  | AddressLine2             | nvarchar(60) |          |            |                       |                   |
| 15  | AnnualSales              | money        |          |            |                       |                   |
| 16  | BankName                 | nvarchar(50) |          |            |                       |                   |
| 17  | MinPaymentType           | tinyint      |          |            |                       |                   |
| 18  | MinPaymentAmount         | money        |          |            |                       |                   |
| 19  | AnnualRevenue            | money        |          |            |                       |                   |	
| 20  | YearOpened               | int          |          |            |                       |                   |	

**_Notice_**: **_Adventure Works Cycles, Inc._** has decided that multilingual capabilities into the DB (in general) are pointless. In addition, specifically for DS, and BI, since the users are internal and at managerial level, they must have worldwide pro knowledge of English. Also, binary picture fields are deprecated in DB.

[Back to Table of contents :arrow_double_up:](../README.md)