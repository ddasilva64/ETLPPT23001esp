## DWH (Data Warehouse)  

<p><br></p>

### **_DWH testing_**  

The first step after **_ETL_**, is the **_DWH_** test, and if we identify any issues, we will repeat ETL until we fix it  

This is the process of creating and executing end-to-end test cases, to ensure that data in the **_DWH_** has integrity and is reliable, accurate, and consistent with the organization's data framework  

<p><br></p>

### **_Testing templates_**  

<p><br></p>

#### **_ETL results testing_**  

<p><br></p>

| Test item             | Value                          |
| :-------------------- | :----------------------------- |
| **_Table name_**      |                                |
| **_Data Mart name_**  |                                |

<p><br></p>

| Test                                                                                  | Check | Bug                               | Fix                               |
| :------------------------------------------------------------------------------------ | :---: | :-------------------------------- | :-------------------------------- |
| Metadata is completed (no one field empty)                                            |       |                                   |                                   |
| There is no repeated metadata content                                                 |       |                                   |                                   |
| Primary Keys are well defined                                                         |       |                                   |                                   |
| Foreign keys are well defined                                                         |       |                                   |                                   |
| Relationships are well defined                                                        |       |                                   |                                   |

<p><br></p>

#### **_DWH testing checklist_**  

<p><br></p>

| Test item             | Value                          |
| :-------------------- | :----------------------------- |
| **_Table name_**      |                                |
| **_Data Mart name_**  |                                | 

<p><br></p>

| Type            | Test                                                                | Check | Bug                               | Fix                               |
| :-------------: | :------------------------------------------------------------------ | :---: | :-------------------------------- | :-------------------------------- |
| Completeness    | number of records in data sources = number of records in DWH table  |       |                                   |                                   |
|                 | data loaded into each DW field = data loaded into each source field |       |                                   |                                   |
| Quality         | type of fields in data sources = type of fields in DWH table        |       |                                   |                                   |
| User Acceptance | data into DWH is complete and consistent with business rules        |       |                                   |                                   |
|                 | all is OK                                                           |       |                                   |                                   |

<p><br></p>

#### **_Target system testing checklist_**  

<p><br></p>

| Test item             | Value                          |
| :-------------------- | :----------------------------- |
| **_Table name_**      |                                |
| **_Data Mart name_**  |                                |

<p><br></p>

| Type            | Test                                                                | Check | Bug                               | Fix                               |
| :-------------: | :------------------------------------------------------------------ | :---: | :-------------------------------- | :-------------------------------- |
| Metrics         | all metrics and KPI desired can be built with DWH data              |       |                                   |                                   |

<p><br></p>

### Tests

### [**_Test #001_**](tests/t001.md)
### [**_Test #002_**](tests/t002.md)
### [**_Test #003_**](tests/t003.md)
### [**_Test #004_**](tests/t004.md)
### [**_Test #005_**](tests/t005.md)
### [**_Test #006_**](tests/t006.md)

<p><br></p> 

**_DWH creation SQL (.SQL)_**

1. [BD]((../PROWPI002/dwh/BD_datawarehouse.sql))  
2. [Schema]((../PROWPI002/dwh/target_schema.sql))  

**_Warning!_**: Language in BD creation is **_Catalan_**, change it for your country language, before run  

<p><br></p> 

**_DWH tables SQL (.SQL)_**

1. [DimCountries](../PROWPI002/dwh/DimCountries.sql)  
2. [DimCurrencies](../PROWPI002/dwh/DimCurrencies.sql)  
3. [DimCustomer](../PROWPI002/dwh/DimCustomer.sql)  
4. [DimEmployee](../PROWPI002/dwh/DimEmployee.sql)  
5. [DimGeography](../PROWPI002/dwh/DimGeography.sql)  
6. [DimProduct](../PROWPI002/dwh/DimProduct.sql)  
7. [DimProductCategory](../PROWPI002/dwh/DimProductCategory.sql)  
8. [DimProductSubcategory](../PROWPI002/dwh/DimProductSubcategory.sql)  
9. [DimPromotion](../PROWPI002/dwh/DimPromotion.sql)  
10. [DimRegions](../PROWPI002/dwh/DimRegions.sql)  
11. [DimSalesTerritory](../PROWPI002/dwh/DimSalesTerritory.sql)  
12. [DimStatesProvinces](../PROWPI002/dwh/DimStatesProvinces.sql)  
13. [DimSubregions](../PROWPI002/dwh/DimSubregions.sql)  
14. [Available FactCountries SQL](../PROWPI002/dwh/FactCountries.sql)  
15. [FactInternetSales](../PROWPI002/dwh/FactInternetSales.sql)  
16. [FactInternetSalesReason](../PROWPI002/dwh/FactInternetSalesReason.sql)  
17. [FactProductInventory](../PROWPI002/dwh/FactProductInventory.sql)  
18. [Available Metadata SQL](../PROWPI002/dwh/Metadata.sql)  

**_DWH tables running (.CSV)_**

1. [DimCountries](../PROWPI002/dwh/DimCountries.csv)  
2. **_DimCurrencies available running by original cloud backup_**  
3. **_DimCustomer available running by original cloud backup_**  
4. **_DimEmployee available running by original cloud backup_**  
5. **_DimGeography available running by original cloud backup_**  
6. **_DimProduct available running by original cloud backup_**  
7. **_DimProductCategory available running by original cloud backup_**  
8. **_DimProductSubcategory available running by original cloud backup_**  
9. **_DimPromotion available running by original cloud backup_**  
10. **_DimRegions available running by original cloud backup_**  
11. **_DimSalesTerritory available running by original cloud backup_**  
12. **_DimStatesProvinces available running by original cloud backup_**  
13. **_DimSubregions available running by original cloud backup_**  
14. [Available FactCountries run](../PROWPI002/dwh/DFactCountriesWH.csv)  
15. **_FactInternetSales available running by original cloud backup_**  
16. **_FactInternetSalesReason available running by original cloud backup_**  
17. **_FactProductInventory available running by original cloud backup_**  
18. [Available Metadata run](../PROWPI002/dwh/Metadata.csv)  

**_DWH parameter tables (.SQL)_**

1. [FactInternetSalesForecast](../PROWPI002/dwh/FactInternetSalesForecast.sql)  

<p><br></p>

[Back to Table of contents :arrow_double_up:](../README.md)