## DE (Data Engineering)  

### **_Source tables_**  
 
#### **_PROWPI002 ETL (AdventureWorksDW2022 DB)_**  

- **_[Source DB's ERD (SQL Server)](Source_SQL_Server_DB.md)_**  
**_Notice_**: **_ERD_** (Entity Relationship Diagram) is the best system to know the database design at a glance  

#### **_PROWPI002 ETL Internet Sales Subsystem_**  

- **_[Internet Sales Subsystem ERD](Internet_Sales_Subsystem_ERD.md)_**  

- **_Internet Sales Subsystem tables transformations_** 
  - **_SQL Server tables_**  
  1. **_[dbo.DimCurrency](dbo.DimCurrency.md)_**    
  2. **_[dbo.DimCustomer](dbo.DimCustomer.md)_**  
  3. **_[dbo.DimDate -deprecated-](dbo.DimDate.md)_**  
  4. **_[dbo.DimEmployee](dbo.DimEmployee.md)_**  
  5. **_[dbo.DimGeography](dbo.DimGeography.md)_**  
  6. **_[dbo.DimProduct](dbo.DimProduct.md)_**  
  7. **_[dbo.DimProductCategory](dbo.DimProductCategory.md)_**  
  8. **_[dbo.DimProductSubcategory](dbo.DimProductSubcategory.md)_**  
  9. **_[dbo.DimPromotion](dbo.DimPromotion.md)_**  
  10. **_[dbo.DimSalesTerritory](dbo.DimSalesTerritory.md)_**  
  11. **_[dbo.DimReseller](dbo.DimReseller.md)_**  
  12. **_[dbo.FactInternetSales](dbo.FactInternetSales.md)_**  
  13. **_[dbo.FactInternetSalesReason](dbo.FactInternetSalesReason.md)_**  
  14. **_[dbo.FactProductInventory](dbo.FactProductInventory.md)_**  
  15. **_[dbo.FactResellerSales](dbo.FactResellerSales.md)_**  
  - **_Metadata_**
  1. **_[DimCurrencies Metadata](DimCurrencies_Metadata.md)_**  
  2. **_[DimCustomer Metadata](DimCustomer_Metadata.md)_**  
  3. **_[DimDate Metadata](DimDate_Metadata.md)_**  
  4. **_[DimEmployees Metadata](DimEmployees_Metadata.md)_**  
  5. **_[DimGeography Metadata](DimGeography_Metadata.md)_**  
  6. **_[DimProduct Metadata](DimProduct_Metadata.md)_**  
  7. **_[DimProductCategory Metadata](DimProductCategory_Metadata.md)_**  
  8. **_[DimProductSubcategory Metadata](DimProductSubcategory_Metadata.md)_**
  9. **_[DimPromotion Metadata](DimPromotion_Metadata.md)_**  
  10. **_[DimSalesTerritory Metadata](DimSalesTerritory_Metadata.md)_**  
  11. **_[DimReseller Metadata](DimReseller_Metadata.md)_**  
  12. **_[FactInternetSales Metadata](FactInternetSales_Metadata.md)_**  
  13. **_[FactInternetSalesReason Metadata](FactInternetSalesReason_Metadata.md)_**
  14. **_[FactProductInventory Metadata](FactProductInventory_Metadata.md)_**
  15. **_[FactResellerSales Metadata](FactResellerSales_Metadata.md)_**

  **_Warning_**!: Remember that field names are standard (the first character of the word is uppercase, and no spaces between words). That means that in the output table name and table field names (in POI), we need to write them (table and fields) in double quotes  

![Be atention in standard names in Postgre SQL output tables](https://i.imgur.com/bHgo76C.png)  
_Be atention in standard names in Postgre SQL output tables_  

**_Notice_**: **_Adventure Works Cycles, Inc._** has decided that multilingual capabilities into the DB (in general) are pointless. In addition, specifically for DS, and BI, since the users are internal and at managerial level, they must have worldwide pro knowledge of English. Also, binary picture fields are deprecated in DB.

[Back to Table of contents :arrow_double_up:](../README.md)