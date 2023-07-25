## **_Metadata (Postgre SQL table)_**  

**_Atention!_**: While the importance of metadata cannot be overstated, the reason to use it is to help drive reporting accuracy, validate data transformation, and ensure calculation accuracy. Metadata also imposes the definition of terms such as indicators, standards, etc. In the development of the DWH, metadata appears, and with it arises the need to create a table with this content  

### **_FactProductInventory\_Metadata.XML (values)_**  
  1. #staging_07: **_staging\FactProductInventory\_Metadata.XML_** (values, but not layout)  

### **_<p><br>FactProductInventory\_Metadata.XML layout</p>_**  

| Key      	| Meaning                                 | Standard              | Formula                                                                  | Units |
| :-------: | :-------------------------------------- | :-------------------: | :----------------------------------------------------------------------- | :---: |
| m084      | Primary key for Product records         |                       |                                                                          |       |
| m176      | Date the record was last updated        |                       |                                                                          |       |
| m177      | Standard cost of the product            |                       |                                                                          |       |
| m178      | Units in                                |                       |                                                                          |       |
| m179      | Units out                               |                       |                                                                          |       |
| m180      | Quantity of products in the inventory   |                       |                                                                          |       |

   <p><br></p>  
 
  ![XML file checking](https://i.imgur.com/8TESDKx.png)  
  _XML file checking_  

  **_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**  

[PROWPI002 ETL :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)  


### **_FactProductInventory\_Metadata.KTR_**  
  1. #staging_07: **_staging\FactProductInventory\_Metadata.XML_**  

   <p><br></p>  

  ![PDI transform](https://i.imgur.com/zmgC5Cx.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/re6d9Id.png)  
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
 
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/3tsUWND.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

  **_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**  

[PROWPI002 ETL :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)  