## **_Metadata (Postgre SQL table)_**  

**_Atention!_**: While the importance of metadata cannot be overstated, the reason to use it is to help drive reporting accuracy, validate data transformation, and ensure calculation accuracy. Metadata also imposes the definition of terms such as indicators, standards, etc. In the development of the DWH, metadata appears, and with it arises the need to create a table with this content  

### **_DimProductSubcategory\_Metadata.XML (values)_**  
  1. #staging_07: **_staging\DimProductSubcategory\_Metadata.XML_** (values, but not layout)  

### **_<p><br>DimProductSubcategory\_Metadata.XML layout</p>_**  

| Key      	| Meaning                                 | Standard              | Formula                                                                  | Units |
| :-------: | :-------------------------------------- | :-------------------: | :----------------------------------------------------------------------- | :---: |
| m145      | Primary key for ProductSubcategory records |                    |                                                                          |       |
| m146      | Subcategory description                 |                       |                                                                          |       |
| m121      | Primary key for ProductCategory records |                       |                                                                          |       |


   <p><br></p>  
 
  ![XML file checking](https://i.imgur.com/kOBZm6q.png)  
  _XML file checking_  

  **_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**  

[PROWPI002 ETL :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)  


### **_DimProductSubcategory\_Metadata.KTR_**  
  1. #staging_07: **_staging\DimProductSubcategory\_Metadata.XML_**  

   <p><br></p>  

  ![PDI transform](https://i.imgur.com/5m0fWoJ.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/QgkXTHu.png)  
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
 
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/z7XKoqc.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

  **_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**  

[PROWPI002 ETL :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)  