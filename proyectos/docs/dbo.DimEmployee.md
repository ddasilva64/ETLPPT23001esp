## **_dbo.DimEmployee (SQL Server table)_**  

### Columns  

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

   <p><br></p>  

![SQL Server source in SQL Server Management studio](https://i.imgur.com/OXdTbQt.png)  
_SQL Server source in SQL Server Management studio_  

   <p><br></p>   

### **_PROWPI002\_DimEmployee.KTR (PDI)_**   
1. #Table input: **_dbo.DimEmployee_** (SQL Server)  
2. staging_16: **_DimEmployee_** (Postgre SQL table)
 
   <p><br></p>  

  ![PDI transform](https://i.imgur.com/zNZQe71.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/ZPtSCO0.png)  
  _PDI execution_ 

### **_<p><br>DimEmployee layout (Postgre SQL)</p>_**  

| Key	| Name                                 | Data type             | Not null | Attributes | References            | Description       |
| :-: | :----------------------------------- | :-------------------: | :------: | :--------- | :-------------------- | :---------------- |
| 1   | EmployeeKey                          | integer               | X        |            |                       | PK                |
| 2   | ParentEmployeeKey                    | integer               |          |            | dbo.DimEmployee       | FK                |
| 3   | EmployeeNationalIDAlternateKey       | character varying(15) |          |            |                       |                   |
| 4   | ParentEmployeeNationalIDAlternateKey | character varying(15) |          |            |                       |                   |
| 5   | SalesTerritoryKey                    | integer               |          |            | dbo.DimSalesTerritory | FK                | 
| 6   | FirstName                            | character varying(50) | X        |            |                       |                   |
| 7   | LastName                             | character varying(50) | X        |            |                       |                   |
| 8   | MiddleName                           | character varying(50) |          |            |                       |                   |
| 9   | NameStyle                            | boolean               | X        |            |                       |                   |
| 10  | Title                                | character varying(50) |          |            |                       |                   |
| 11  | HireDate                             | date                  |          |            |                       |                   |
| 12  | BirthDate                            | date                  |          |            |                       |                   |
| 13  | LoginID                              | character varying(256)|          |            |                       |                   |
| 14  | EmailAddress                         | character varying(50) |          |            |                       |                   |
| 15  | Phone                                | character varying(25) |          |            |                       |                   |
| 16  | MaritalStatus                        | character varying(1)  |          |            |                       |                   |
| 17  | EmergencyContactName                 | character varying(50) |          |            |                       |                   |
| 18  | EmergencyContactPhone                | character varying(25) |          |            |                       |                   |
| 19  | SalariedFlag                         | boolean               |          |            |                       |                   |
| 20  | Gender                               | character varying(1)  |          |            |                       |                   |
| 21  | PayFrequency                         | integer               |          |            |                       |                   |
| 22  | BaseRate                             | real                  |          |            |                       |                   |
| 23  | VacationHours                        | integer               |          |            |                       |                   |
| 24  | SickLeaveHours                       | integer               |          |            |                       |                   |
| 25  | CurrentFlag                          | boolean               |          |            |                       |                   |
| 26  | SalesPersonFlag                      | boolean               |          |            |                       |                   |
| 27  | DepartmentName                       | character varying(50) |          |            |                       |                   |
| 28  | StartDate                            | date                  |          |            |                       |                   |
| 29  | EndDate                              | date                  |          |            |                       |                   |
| 30  | Status                               | character varying(50) |          |            |                       |                   |

   <p><br></p>  
 
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/k4oWdG0.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

  **_QA_**: You can download data sources, **_SQL Server_** tables, and **_PDI_** transformations to chek it  

[PROWPI002 ETL (AdventureWorksDW2022 DB) :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)