## DE (Data Engineering)  

### **_Source tables_**  
 
#### **_PROWPI002 ETL (AdventureWorksDW2022 DB)_**  

- **_[Source DB's ERD (SQL Server)](Source_SQL_Server_DB.md)_**  
**_Notice_**: **_ERD_** (Entity Relationship Diagram) is the best system to know the database design at a glance  

#### **_PROWPI002 ETL Internet Sales Subsystem_**  

- **_[Internet Sales Subsystem ERD](Internet_Sales_Subsystem_ERD.md)_**  

- **_Internet Sales Subsystem tables transformations_**   
  - **_[dbo.FactInternetSales](dbo.FactInternetSales.md)_**  
  - **_[FactInternetSales Metadata](FactInternetSales_Metadata.md)_**  
  - **_[dbo.DimDate](dbo.DimDate.md)_**  
  - **_[dbo.DimPromotion](dbo.DimPromotion.md)_**  
  - **_[dbo.DimCurrency](dbo.DimCurrency.md)_**  
  - **_[DimCurrencies Metadata](DimCurrencies_Metadata.md)_**  
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
  - **_[DimEmployees Metadata](DimEmployees_Metadata.md)_**  
  - **_[dbo.DimReseller](dbo.DimReseller.md)_**  

  **_Warning_**!: Remember that field names are standard (the first character of the word is uppercase, and no spaces between words). That means that in the output table name and table field names (in POI), we need to write them (table and fields) in double quotes  

![Be atention in standard names in Postgre SQL output tables](https://i.imgur.com/bHgo76C.png)  
_Be atention in standard names in Postgre SQL output tables_  

**_Notice_**: **_Adventure Works Cycles, Inc._** has decided that multilingual capabilities into the DB (in general) are pointless. In addition, specifically for DS, and BI, since the users are internal and at managerial level, they must have worldwide pro knowledge of English. Also, binary picture fields are deprecated in DB.

[Back to Table of contents :arrow_double_up:](../README.md)