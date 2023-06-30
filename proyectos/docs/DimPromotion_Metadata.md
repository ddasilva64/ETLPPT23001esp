## **_Metadata (Postgre SQL table)_**  

**_Atention!_**: While the importance of metadata cannot be overstated, the reason to use it is to help drive reporting accuracy, validate data transformation, and ensure calculation accuracy. Metadata also imposes the definition of terms such as indicators, standards, etc. In the development of the DWH, metadata appears, and with it arises the need to create a table with this content  

### **_DimPromotion\_Metadata.XML (values)_**  
  1. #staging_07: **_staging\DimPromotion\_Metadata.XML_** (values, but not layout)  

### **_<p><br>DimPromotion\_Metadata.XML layout</p>_**  

| Key      	| Meaning                                 | Standard              | Formula                                                                  | Units |
| :-------: | :-------------------------------------- | :-------------------: | :----------------------------------------------------------------------- | :---: |
| m150      | Primary key for SpecialOffer records    |                       |                                                                          |       |
| m151      | Discount description                    |                       |                                                                          |       |
| m152      | Discount precentage                     |                       |                                                                          |       |
| m153      | Discount type category                  |                       |                                                                          |       |
| m154      | Group the discount applies to such as Reseller or Customer |                       |                                                                          |       |
| m155      | Discount start date                     |                       |                                                                          |       |
| m156      | Discount end date                       |                       |                                                                          |       |
| m157      | Minimum discount percent allowed        |                       |                                                                          |       |
| m158      | Maximum discount percent allowed        |                       |                                                                          |       |

   <p><br></p>  
 
  ![XML file checking](https://i.imgur.com/smrCLf9.png)  
  _XML file checking_  

  **_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**  

[PROWPI002 ETL :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)  


### **_DimPromotion\_Metadata.KTR_**  
  1. #staging_07: **_staging\DimPromotion\_Metadata.XML_**  

   <p><br></p>  

  ![PDI transform](https://i.imgur.com/OeGauFn.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/G5n6qyF.png)  
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
 
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/46IQGUR.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

  **_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**  

[PROWPI002 ETL :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)  