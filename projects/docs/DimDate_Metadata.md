## **_Metadata (Postgre SQL table)_**  

**_Atention!_**: While the importance of metadata cannot be overstated, the reason to use it is to help drive reporting accuracy, validate data transformation, and ensure calculation accuracy. Metadata also imposes the definition of terms such as indicators, standards, etc. In the development of the DWH, metadata appears, and with it arises the need to create a table with this content  

**_Warning!_**: **_DimDate_** table is deprecated, but we will get the same date info into **_DWH_**. That is, we will need the same metadata  

### **_DimDate\_Metadata.XML (values)_**  
  1. #staging_07: **_staging\DimDate\_Metadata.XML_** (values, but not layout)  

### **_<p><br>DimDate\_Metadata.XML layout</p>_**  

| Key      	| Meaning                                 | Standard              | Formula                                                                  | Units |
| :-------: | :-------------------------------------- | :-------------------: | :----------------------------------------------------------------------- | :---: |
| m123      | Full date                               |                       |                                                                          |       |
| m124      | Day number of week                      |                       |                                                                          |       |
| m125      | Day name of week                        |                       |                                                                          |       |
| m126      | Day number of month                     |                       |                                                                          |       |
| m127      | Day number of year                      |                       |                                                                          |       |
| m128      | Week number of year                     |                       |                                                                          |       |
| m129      | Month name                              |                       |                                                                          |       |
| m130      | Month number of year                    |                       |                                                                          |       |
| m131      | Calendar quarter                        |                       |                                                                          |       |
| m132      | Calendar year                           |                       |                                                                          |       |
| m133      | Calendar semester                       |                       |                                                                          |       |
| m134      | Fiscal quarter                          |                       |                                                                          |       |
| m135      | Fiscal year                             |                       |                                                                          |       |
| m136      | Fiscal semester                         |                       |                                                                          |       |
| m137      | Weekend                                 |                       |                                                                          |       |
| m138      | Holiday weekend                         |                       |                                                                          |       |
 
   <p><br></p>  
 
  ![XML file checking](https://i.imgur.com/dybnBBB.png)  
  _XML file checking_  

  **_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**  

[PROWPI002 ETL :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)  


### **_DimDate\_Metadata.KTR_**  
  1. #staging_07: **_staging\DimDate\_Metadata.XML_**  

   <p><br></p>  

  ![PDI transform](https://i.imgur.com/3nkzkx5.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/O1kc8WX.png)  
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
 
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/S0udjbT.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

  **_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**  

[PROWPI002 ETL :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)  