## **_Metadata (Postgre SQL table)_**  

**_Atention!_**: While the importance of metadata cannot be overstated, the reason to use it is to help drive reporting accuracy, validate data transformation, and ensure calculation accuracy. Metadata also imposes the definition of terms such as indicators, standards, etc. In the development of the DWH, metadata appears, and with it arises the need to create a table with this content  

### **_DimProduct\_Metadata.XML (values)_**  
  1. #staging_07: **_staging\DimProduct\_Metadata.XML_** (values, but not layout)  

### **_<p><br>DimProduct\_Metadata.XML layout</p>_**  

| Key  | Meaning                                 | Standard              | Formula                                                                  | Units |
| :--: | :-------------------------------------- | :-------------------: | :----------------------------------------------------------------------- | :---: |
| m084 | Primary key for Product records         |                       |                                                                          |       |
| m085 | Unique product identification number    |                       |                                                                          |       |
| m086 | Product is a member of this product subcategory. Foreign key to ProductSubCategory.ProductSubCategoryID | |                                |       |
| m087 | Unit of measure for weight              |                       |                                                                          |       |
| m088 | Unit of measure for size                |                       |                                                                          |       |
| m089 | Name of the product                     |                       |                                                                          |       |
| m072 | Standard cost of the product            |                       |                                                                          |       |
| m090 | Finished goods flag                     |                       | 0 = Product is not a salable item. 1 = Product is salable                |       |
| m091 | Product color                           |                       |                                                                          |       |
| m092 | Minimum inventory quantity              |                       |                                                                          |       |
| m093 | Inventory level that triggers a purchase order or work order |  |                                                                          |       |
| m073 | Selling price                           |                       |                                                                          |       |
| m094 | Product size                            |                       |                                                                          |       |
| m095 | Size range                              |                       |                                                                          |       |
| m096 | Product weight                          |                       |                                                                          |       |
| m097 | Number of days required to manufacture the product |            |                                                                          |       |
| m098 | Product line                            |                       | R = Road, M = Mountain, T = Touring, S = Standard                        |       |
| m099 | Dealer price for a given product on a particular order date  |                       |                                                     |       |
| m100 | Class                                   |                       | H = High, M = Medium, L = Low                                            |       |
| m101 | Style                                   |                       | W = Womens, M = Mens, U = Universal                                      |       |
| m102 | Product model description               |                       |                                                                          |       |
| m103 | Description of the product              |                       |                                                                          |       |
| m104 | Date the product was available for sale |                       |                                                                          |       |
| m105 | Date the product was no longer available for sale |             |                                                                          |       |
| m106 | Status                                  |                       | 0 = Product is purchased, 1 = Product is manufactured in-house           |       |

   <p><br></p>  
 
  ![XML file checking](https://i.imgur.com/HbAzMwp.png)  
  _XML file checking_  

  **_QA_**: You can download data sources, and **_PDI_** transformations to chek it  

[PROWPI001 ETL :arrow_up:](prowpi001_etl.md)  

[Back to Table of contents :arrow_double_up:](../README.md)  


### **_DimProduct\_Metadata.KTR_**  
  1. #staging_07: **_staging\DimProduct\_Metadata.XML_**  

   <p><br></p>  

  ![PDI transform](https://i.imgur.com/Ok5tYnQ.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/HZMJwRs.png)  
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
 
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/GBmz5AC.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

  **_QA_**: You can download data sources, and **_PDI_** transformations to chek it  

[PROWPI002 ETL :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)  