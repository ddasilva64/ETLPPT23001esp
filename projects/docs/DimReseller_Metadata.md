## **_Metadata (Postgre SQL table)_**  

**_Atention!_**: While the importance of metadata cannot be overstated, the reason to use it is to help drive reporting accuracy, validate data transformation, and ensure calculation accuracy. Metadata also imposes the definition of terms such as indicators, standards, etc. In the development of the DWH, metadata appears, and with it arises the need to create a table with this content  

### **_DimReseller\_Metadata.XML (values)_**  
  1. #staging_07: **_staging\DimReseller\_Metadata.XML_** (values, but not layout)  

### **_<p><br>DimReseller\_Metadata.XML layout</p>_**  

| Key      	| Meaning                                 | Standard              | Formula                                                                  | Units |
| :-------: | :-------------------------------------- | :-------------------: | :----------------------------------------------------------------------- | :---: |
| m159      | Primary key of Reseller records         |                       |                                                                          |       |
| m141      | Primary key for Geography record        |                       |                                                                          |       |
| m043      | Phone                                   |                       |                                                                          |       |
| m160      | Business type                           |                       |                                                                          |       |
| m161      | Reseller name                           |                       |                                                                          |       |
| m162      | Number of employees                     |                       |                                                                          |       |
| m163      | Order frequency                         |                       |                                                                          |       |
| m164      | Order month                             |                       |                                                                          |       |
| m165      | First order year                        |                       |                                                                          |       |
| m166      | Last order year                         |                       |                                                                          |       |
| m098      | Product line                            |                       | R = Road, M = Mountain, T = Touring, S = Standard                        |       |
| m117      | First street address line               |                       |                                                                          |       |
| m118      | Second street address line              |                       |                                                                          |       |
| m167      | Annual sales                            |                       |                                                                          |       |
| m168      | Bank name                               |                       |                                                                          |       |
| m169      | Min payment type                        |                       |                                                                          |       |
| m170      | Min payment amount                      |                       |                                                                          |       |
| m171      | Annual revenue                          |                       |                                                                          |       |
| m172      | Year opened                             |                       |                                                                          |       |

   <p><br></p>  
 
  ![XML file checking](https://i.imgur.com/7qoSNpS.png)  
  _XML file checking_  

  **_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**  

[PROWPI002 ETL :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)  


### **_DimReseller\_Metadata.KTR_**  
  1. #staging_07: **_staging\DimReseller\_Metadata.XML_**  

   <p><br></p>  

  ![PDI transform](https://i.imgur.com/VcoHd3e.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/llL8A2U.png)  
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
 
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/p0RZeaJ.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

  **_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**  

[PROWPI002 ETL :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)  