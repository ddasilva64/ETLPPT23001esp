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






  3.11. **_dbo.FactInternetSalesReason_**  
  3.11.1. Columns  

| Key	| Name                     | Data type    | Not null | Attributes | References            | Description |
| :-: | :----------------------- | :----------: | :------: | :--------- | :-------------------- | :-----------|
| 1   | SalesOrderNumber         | nvarchar(20) | X        |            | dbo.FactInternetSales | PK,FK       |
| 2   | SalesOrderLineNumber     | tinyint      | X        |            | dbo.FactInternetSales | PK,FK       |
| 3   | SalesReasonKey           | int          | X        |            | dbo.DimSalesReason    | PK,FK       |

  3.12. **_dbo.FactResellerSales_**  
  3.12.1. Columns  

| Key	| Name                     | Data type    | Not null | Attributes | References            | Description |
| :-: | :----------------------- | :----------: | :------: | :--------- | :-------------------- | :-----------|
| 1   | ProductKey               | int          | X        |            | dbo.DimProduct        | FK          |
| 2   | OrderDateKey             | int          | X        |            | dbo.DimDate           | FK          |
| 3   | DueDateKey               | int          | X        |            | dbo.DimDate           | FK          |
| 4   | ShipDateKey              | int          | X        |            | dbo.DimDate           | FK          |
| 5   | ResellerKey              | int          | X        |            | dbo.DimReseller       | FK          |
| 6   | EmployeeKey              | int          | X        |            | dbo.DimEmployee       | FK          |
| 7   | PromotionKey             | int          | X        |            | dbo.DimPromotion      | FK          |
| 8   | CurrencyKey              | int          | X        |            | dbo.DimCurrency       | FK          |
| 9   | SalesTerritoryKey        | int          | X        |            | dbo.DimSalesTerritory | FK          |
| 10  | SalesOrderNumber         | nvarchar(20) | X        |            |                       | PK          |
| 11  | SalesOrderLineNumber     | tinyint      | X        |            |                       | PK          |
| 12  | RevisionNumber           | tinyint      | X        |            |                       |             |
| 13  | OrderQuantity            | smallint     | X        |            |                       |             |
| 14  | UnitPrice                | money        | X        |            |                       |             |
| 15  | ExtendedAmount           | money        | X        |            |                       |             |
| 16  | UnitPriceDiscountPct     | float        | X        |            |                       |             |
| 17  | DiscountAmount           | float        | X        |            |                       |             |
| 18  | ProductStandardCost      | money        | X        |            |                       |             |
| 19  | TotalProductCost         | money        | X        |            |                       |             |
| 20  | SalesAmount              | money        | X        |            |                       |             |
| 21  | TaxAmt                   | money        | X        |            |                       |             |
| 22  | Freight                  | money        | X        |            |                       |             |
| 23  | CarrierTrackingNumber    | nvarchar(25) |          |            |                       |             |
| 24  | CustomerPONumber         | nvarchar(25) |          |            |                       |             |
| 25  | OrderDate                | datetime     |          |            |                       |             |
| 26  | DueDate                  | datetime     |          |            |                       |             |
| 27  | ShipDate                 | datetime     |          |            |                       |             |

  3.13. **_dbo.FactProductInventory_**  
  3.13.1. Columns  

| Key	| Name                     | Data type    | Not null | Attributes | References            | Description |
| :-: | :----------------------- | :----------: | :------: | :--------- | :-------------------- | :-----------|
| 1   | ProductKey               | int          | X        |            | dbo.DimProduct        | PK,FK       |
| 2   | DateKey                  | int          | X        |            | dbo.DimDate           | PK,FK       |
| 3   | MovementDate             | date         | X        |            |                       |             |
| 4   | UnitCost                 | money        | X        |            |                       |             |
| 5   | UnitsIn                  | int          | X        |            |                       |             |
| 6   | UnitsOut                 | int          | X        |            |                       |             |
| 7   | UnitsBalance             | int          | X        |            |                       |             |

  3.14. **_dbo.DimPromotion_**  
  3.14.1. Columns  

| Key	| Name                     | Data type    | Not null | Attributes | References            | Description       |
| :-: | :----------------------- | :----------: | :------: | :--------- | :-------------------- | :---------------- |
| 1   | PromotionKey             | int          | X        | Identity   |                       | PK                |
| 2   | PromotionAlternateKey    | int          |          |            |                       |                   |
| 3   | EnglishPromotionName     | nvarchar(255)|          |            |                       | PromotionName     |
| 4   | SpanishPromotionName     | nvarchar(255)|          |            |                       | deprecated        |
| 5   | FrenchPromotionName      | nvarchar(255)|          |            |                       | deprecated        |
| 6   | DiscountPct              | float        |          |            |                       |                   |
| 7   | EnglishPromotionType     | nvarchar(50) |          |            |                       | PromotionType     |
| 8   | SpanishPromotionType     | nvarchar(50) |          |            |                       | deprecated        |
| 9   | FrenchPromotionType      | nvarchar(50) |          |            |                       | deprecated        |
| 10  | EnglishPromotionCategory | nvarchar(50) |          |            |                       | PromotionCategory |
| 11  | SpanishPromotionCategory | nvarchar(50) |          |            |                       | deprecated        |
| 12  | FrenchPromotionCategory  | nvarchar(50) |          |            |                       | deprecated        |
| 13  | StartDate                | datetime     |          |            |                       |                   |
| 14  | EndDate                  | datetime     |          |            |                       |                   |
| 15  | MinQty                   | int          |          |            |                       |                   |
| 16  | MaxQty                   | int          |          |            |                       |                   |

  3.15. **_dbo.DimEmployee_**  
  3.15.1. Columns  

| Key	| Name                                 | Data type      | Not null | Attributes | References            | Description       |
| :-: | :----------------------------------- | :------------: | :------: | :--------- | :-------------------- | :---------------- |
| 1   | EmployeeKey                          | int            | X        | Identity   |                       | PK                |
| 2   | ParentEmployeeKey                    | int            |          |            | dbo.DimEmployee       | FK                |
| 3   | EmployeeNationalIDAlternateKey       | nvarchar(15)   |          |            |                       |                   |
| 4   | ParentEmployeeNationalIDAlternateKey | nvarchar(15)   |          |            |                       |                   |
| 5   | SalesTerritoryKey                    | int            |          |            | dbo.DimSalesTerritory | FK                | 
| 6   | FirstName                            | nvarchar(50)   | X        |            |                       |                   |
| 7   | LastName                             | nvarchar(50)   | X        |            |                       |                   |
| 8   | MiddleName                           | nvarchar(50)   |          |            |                       |                   |
| 9   | NameStyle                            | bit            | X        |            |                       |                   |
| 10  | Title                                | nvarchar(50)   |          |            |                       |                   |
| 11  | HireDate                             | date           |          |            |                       |                   |
| 12  | BirthDate                            | date           |          |            |                       |                   |
| 13  | LoginID                              | nvarchar(256)  |          |            |                       |                   |
| 14  | EmailAddress                         | nvarchar(50)   |          |            |                       |                   |
| 15  | Phone                                | nvarchar(25)   |          |            |                       |                   |
| 16  | MaritalStatus                        | nchar(1)       |          |            |                       |                   |
| 17  | EmergencyContactName                 | nvarchar(50)   |          |            |                       |                   |
| 18  | EmergencyContactPhone                | nvarchar(25)   |          |            |                       |                   |
| 19  | SalariedFlag                         | bit            |          |            |                       |                   |
| 20  | Gender                               | nchar(1)       |          |            |                       |                   |
| 21  | PayFrequency                         | tinyint        |          |            |                       |                   |
| 22  | BaseRate                             | money          |          |            |                       |                   |
| 23  | VacationHours                        | smallint       |          |            |                       |                   |
| 24  | SickLeaveHours                       | smallint       |          |            |                       |                   |
| 25  | CurrentFlag                          | bit            |          |            |                       |                   |
| 26  | SalesPersonFlag                      | bit            |          |            |                       |                   |
| 27  | DepartmentName                       | nvarchar(50)   |          |            |                       |                   |
| 28  | StartDate                            | date           |          |            |                       |                   |
| 29  | EndDate                              | date           |          |            |                       |                   |
| 30  | Status                               | nvarchar(50)   |          |            |                       |                   |
| 31  | EmployeePhoto                        | varbinary(MAX) |          |            |                       | deprecated        |

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