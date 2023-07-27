## **_dbo.DimEmployee (SQL Server)_**  

**_Warning!_**: In this case, **_Adventure Works Cycles, Inc._** had **_NA_** values for empty **_SalesTerritoryKey_**. This is a wrong strategy; we will replace it with a **_null string_** because it will be an **_FK_** in **_DWH_**, and we do not need **_NA_** in **_DS_** or **_BI_** target system for proper operation.

### Columns  

| Key	| Name                                 | Data type             | Not null | Attributes | References            | Description       | Metadata |
| :-: | :----------------------------------- | :-------------------: | :------: | :--------- | :-------------------- | :---------------- | :------- |
| 1   | EmployeeKey                          | int                   | X        | Identity   |                       | PK                | m029     |
| 2   | ParentEmployeeKey                    | int                   |          |            | dbo.DimEmployee       | FK                | m030     |
| 3   | EmployeeNationalIDAlternateKey       | nvarchar(15)          |          |            |                       |                   | m031     |
| 4   | ParentEmployeeNationalIDAlternateKey | nvarchar(15)          |          |            |                       |                   | m032     |
| 5   | SalesTerritoryKey                    | int                   |          |            | dbo.DimSalesTerritory | FK                | m033     |
| 6   | FirstName                            | nvarchar(50)          | X        |            |                       |                   | m034     |
| 7   | LastName                             | nvarchar(50)          | X        |            |                       |                   | m035     |
| 8   | MiddleName                           | nvarchar(50)          |          |            |                       |                   | m036     |
| 9   | NameStyle                            | bit                   | X        |            |                       |                   | m037     |
| 10  | Title                                | nvarchar(50)          |          |            |                       |                   | m038     |
| 11  | HireDate                             | date                  |          |            |                       |                   | m039     |
| 12  | BirthDate                            | date                  |          |            |                       |                   | m040     |
| 13  | LoginID                              | nvarchar(256)         |          |            |                       |                   | m041     |
| 14  | EmailAddress                         | nvarchar(50)          |          |            |                       |                   | m042     |
| 15  | Phone                                | nvarchar(25)          |          |            |                       |                   | m043     |
| 16  | MaritalStatus                        | nchar(1)              |          |            |                       |                   | m044     |
| 17  | EmergencyContactName                 | nvarchar(50)          |          |            |                       |                   | m045     |
| 18  | EmergencyContactPhone                | nvarchar(25)          |          |            |                       |                   | m046     |
| 19  | SalariedFlag                         | bit                   |          |            |                       |                   | m047     |
| 20  | Gender                               | nchar(1)              |          |            |                       |                   | m048     |
| 21  | PayFrequency                         | tinyint               |          |            |                       |                   | m049     |
| 22  | BaseRate                             | money                 |          |            |                       |                   | m050     |
| 23  | VacationHours                        | smallint              |          |            |                       |                   | m051     |
| 24  | SickLeaveHours                       | smallint              |          |            |                       |                   | m052     |
| 25  | CurrentFlag                          | bit                   |          |            |                       |                   | m053     |
| 26  | SalesPersonFlag                      | bit                   |          |            |                       |                   | m054     |
| 27  | DepartmentName                       | nvarchar(50)          |          |            |                       |                   | m055     |
| 28  | StartDate                            | date                  |          |            |                       |                   | m056     |
| 29  | EndDate                              | date                  |          |            |                       |                   | m057     |
| 30  | Status                               | nvarchar(50)          |          |            |                       |                   | m058     |

<p><br></p>  

![SQL Server source in SQL Server Management studio](https://i.imgur.com/OXdTbQt.png)  
_SQL Server source in SQL Server Management studio_  

<p><br></p>   

### **_PROWPI002\_DimEmployee.KTR (PDI)_**   
1. #Table input: **_dbo.DimEmployee_** (SQL Server)  
2. staging_16: **_DimEmployee_** (Postgre SQL table)
 
<p><br></p>  

![PDI transform](https://i.imgur.com/TBdZX5j.png)  
_PDI transform_  

<p><br></p>  

![PDI execution](https://i.imgur.com/WIP4TZJ.png)  
_PDI execution_ 

<p><br></p>  

### **_DimEmployee layout (Postgre SQL)_**  

| Key	| Name                                 | Data type             | Not null | Attributes | References            | Description       | Metadata |
| :-: | :----------------------------------- | :-------------------: | :------: | :--------- | :-------------------- | :---------------- | :------- |
| 1   | EmployeeKey                          | integer               | X        |            |                       | PK                | m029     |
| 2   | ParentEmployeeKey                    | integer               |          |            | DimEmployee           | FK                | m030     |
| 3   | EmployeeNationalIDAlternateKey       | character varying(15) |          |            |                       |                   | m031     |
| 4   | ParentEmployeeNationalIDAlternateKey | character varying(15) |          |            |                       |                   | m032     |
| 5   | SalesTerritoryKey                    | integer               |          |            | DimSalesTerritory     | FK                | m033     |
| 6   | FirstName                            | character varying(50) | X        |            |                       |                   | m034     |
| 7   | LastName                             | character varying(50) | X        |            |                       |                   | m035     |
| 8   | MiddleName                           | character varying(50) |          |            |                       |                   | m036     |
| 9   | NameStyle                            | boolean               | X        |            |                       |                   | m037     |
| 10  | Title                                | character varying(50) |          |            |                       |                   | m038     |
| 11  | HireDate                             | date                  |          |            |                       |                   | m039     |
| 12  | BirthDate                            | date                  |          |            |                       |                   | m040     |
| 13  | LoginID                              | character varying(256)|          |            |                       |                   | m041     |
| 14  | EmailAddress                         | character varying(50) |          |            |                       |                   | m042     |
| 15  | Phone                                | character varying(25) |          |            |                       |                   | m043     |
| 16  | MaritalStatus                        | character varying(1)  |          |            |                       |                   | m044     |
| 17  | EmergencyContactName                 | character varying(50) |          |            |                       |                   | m045     |
| 18  | EmergencyContactPhone                | character varying(25) |          |            |                       |                   | m046     |
| 19  | SalariedFlag                         | boolean               |          |            |                       |                   | m047     |
| 20  | Gender                               | character varying(1)  |          |            |                       |                   | m048     |
| 21  | PayFrequency                         | integer               |          |            |                       |                   | m049     |
| 22  | BaseRate                             | real                  |          |            |                       |                   | m050     |
| 23  | VacationHours                        | integer               |          |            |                       |                   | m051     |
| 24  | SickLeaveHours                       | integer               |          |            |                       |                   | m052     |
| 25  | CurrentFlag                          | boolean               |          |            |                       |                   | m053     |
| 26  | SalesPersonFlag                      | boolean               |          |            |                       |                   | m054     |
| 27  | DepartmentName                       | character varying(50) |          |            |                       |                   | m055     |
| 28  | StartDate                            | date                  |          |            |                       |                   | m056     |
| 29  | EndDate                              | date                  |          |            |                       |                   | m057     |
| 30  | Status                               | character varying(50) |          |            |                       |                   | m058     |

<p><br></p>  
 
![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/3GM3vhj.png)  
_Postgres SQL's transactions checking in PgAdmin_  

<p><br></p> 

**_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**  

<p><br></p> 

[ChatGPT usage](../CHATGPT_USAGE.md)  

<p><br></p>

[PROWPI002 ETL (AdventureWorksDW2022 DB) :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)