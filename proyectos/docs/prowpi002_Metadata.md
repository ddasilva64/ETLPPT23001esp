## **_Metadata (Postgre SQL table)_**  

**_Atention!_**: While the importance of metadata cannot be overstated, the reason to use it is to help drive reporting accuracy, validate data transformation, and ensure calculation accuracy. Metadata also imposes the definition of terms such as indicators, standards, etc. In the development of the DWH, metadata appears, and with it arises the need to create a table with this content  

### **_DimEmployee\_Metadata.XML (values)_**  
  1. #staging_07: **_staging\DimEmployee\_Metadata.XML_** (values, but not layout)  

### **_<p><br>DimEmployee\_Metadata.XML layout</p>_**  

| Key      	| Meaning                                 | Standard              | Formula                                                                  | Units |
| :-------: | :-------------------------------------- | :-------------------: | :----------------------------------------------------------------------- | :---: |
| m029      | Primary key for Employee records        |                       |                                                                          |       |
| m030      | Parent employee key                     |                       |                                                                          |       |
| m031      | Unique national identification number such as a social security number |                       |                                                                          |       |
| m032      | Parent unique national identification number such as a social security number |                       |                                                                          |       |
| m033      | Territory currently assigned to. Foreign key to SalesTerritory.SalesTerritoryID |                       |                                                                          |       |
| m034      | First name                              |                       |                                                                          |       |
| m035      | Last name                               |                       |                                                                          |       |
| m036      | Middle name                             |                       |                                                                          |       |
| m037      | Name style                              |                       | 0 = The data in FirstName and LastName are stored in western style (first name, last name) order. 1 = Eastern style (last name, first name) order |       |
| m038      | Work title                              |                       | Such as Buyer or Sales Representative                                                    |       |
| m039      | Employee hired on this date             |                       |                                                                          |       |
| m040      | Date of birth                           |                       |                                                                          |       |
| m041      | Network login                           |                       |                                                                          |       |
| m042      | Email address                           |                       |                                                                          |       |
| m043      | Phone                                   |                       |                                                                          |       |
| m044      | Marital status                          |                       | M = Married, S = Single                                                  |       |
| m045      | Emergency contact name                  |                       |                                                                          |       |
| m046      | Emergency contact phone                 |                       |                                                                          |       |
| m047      | Salaried flag                           |                       | Job classification. 0 = Hourly, not exempt from collective bargaining. 1 = Salaried, exempt from collective bargaining |       |
| m048      | Gender                                  |                       | M = Male, F = Female                                                     |       |
| m049      | PayFrequency                            |                       | 1 = Salary received monthly, 2 = Salary received biweekly                |       |
| m050      | Salary hourly rate                      |                       |                                                                          |       |
| m051      | Number of available vacation hours      |                       |                                                                          |       |
| m052      | Number of available sick leave hours    |                       |                                                                          |       |
| m053      | Current flag                            |                       | 0 = Inactive, 1 = Active                                                 |       |
| m054      | Sales person flag                       |                       | 0 = No, 1 = Yes                                                          |       |
| m055      | Department name                         |                       |                                                                          |       |
| 056       | Date the employee started work in the department |                       |                                                                          |       |
| m057      | Date the employee left the department   |                       | NULL = Current department                                                |       |
| m058      | Status                                  |                       | Current or empty                                                         |       |

   <p><br></p>  
 
  ![XML file checking](https://i.imgur.com/p7zDyhq.png)  
  _XML file checking_  

  **_QA_**: You can download data sources, and **_PDI_** transformations to chek it  

[PROWPI001 ETL :arrow_up:](prowpi001_etl.md)  

[Back to Table of contents :arrow_double_up:](../README.md)  


### **_DimEmployee\_Metadata.KTR_**  
  1. #staging_07: **_staging\PROWPI002\_Metadata.XML_**  

   <p><br></p>  

  ![PDI transform](https://i.imgur.com/MGbrGYe.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/7djiMsi.png)  
  _PDI execution_ 

### **_<p><br>Metadata layout</p>_**  

| Key	| Name                  | Data type              | Not null | Attributes | References            | Description |
| :-: | :-------------------- | :--------------------: | :------: | :--------- | :-------------------- | :-----------| 
| 1   | Key                   | Character variying(4)  | X        |            |                       | PK,FK       |
| 2   | Meaning               | Character variying(60) | X        |            |                       |             |
| 3   | Standard              | Character variying(20) |          |            |                       |             |
| 4   | Formula               | Character variying(500)|          |            |                       |             |
| 5   | Units                 | Character variying(10) |          |            |                       |             |

   <p><br></p>  
 
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/d574Yyf.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

  **_QA_**: You can download data sources, and **_PDI_** transformations to chek it  

[PROWPI002 ETL :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)  