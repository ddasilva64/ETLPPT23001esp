## **_Metadata (Postgre SQL table)_**  

**_Atention!_**: While the importance of metadata cannot be overstated, the reason to use it is to help drive reporting accuracy, validate data transformation, and ensure calculation accuracy. Metadata also imposes the definition of terms such as indicators, standards, etc. In the development of the DWH, metadata appears, and with it arises the need to create a table with this content  

### **_FactInternetSales\_Metadata.XML (values)_**  
  1. #staging_07: **_staging\FactInternetSales\_Metadata.XML_** (values, but not layout)  

### **_<p><br>FactInternetSales\_Metadata.XML layout</p>_**  

| Key      	| Meaning                                 | Standard              | Formula                                                                  | Units |
| :-------: | :-------------------------------------- | :-------------------: | :----------------------------------------------------------------------- | :---: |
| m059      | Primary key for Product records         |                       |                                                                          |       |
| m060      | Primary key for Customer records        |                       |                                                                          |       |
| m061      | Primary key for Promotion records       |                       |                                                                          |       |
| m062      | Primary key for Currency records        | The ISO code for the Currency |                                                                          |       |
| m063      | Primary key for SalesTerritory records  |                       |                                                                          |       |
| m064      | Primary key. Unique sales order identification number |                       |                                                                          |       |
| m065      | Primary key. One incremental unique number per product sold |                       |                                                                          |       |
| m066      | Incremental number to track changes to the sales order over time |                       |                                                                          |       |
| m067      | Quantity ordered per product            |                       |                                                                          |       |
| m068      | Selling price of a single product       |                       |                                                                          |       |
| m069      | Per product subtotal                    |                       | UnitPrice * (1 - UnitPriceDiscount) * OrderQty                           |       |
| m070      | Unit price discount                     |                       |                                                                          |       |
| m071      | Discount amount                         |                       |                                                                          |       |
| m072      | Standard cost of the product            |                       |                                                                          |       |
| m073      | Selling price                           |                       |                                                                          |       |
| m074      | Sales subtotal                          |                       | SUM(SalesOrderDetail.LineTotal)for the appropriate SalesOrderID          |       |
| m075      | Tax amount                              |                       |                                                                          |       |
| m076      | Shipping cost                           |                       |                                                                          |       |
| m077      | Shipment tracking number supplied by the shipper |                       |                                                                          |       |
| m078      | Customer purchase order number reference|                       |                                                                          |       |
| m079      | Dates the sales order was created       |                       |                                                                          |       |
| m080      | Date the order is due to the customer   |                       |                                                                          |       |
| m081      | Date the order was shipped to the customer |                       |                                                                          |       |

   <p><br></p>  
 
  ![XML file checking](https://i.imgur.com/ksAS4qY.png)  
  _XML file checking_  

  **_QA_**: You can download data sources, and **_PDI_** transformations to chek it  

[PROWPI001 ETL :arrow_up:](prowpi001_etl.md)  

[Back to Table of contents :arrow_double_up:](../README.md)  


### **_FactInternetSales\_Metadata.KTR_**  
  1. #staging_07: **_staging\FactInternetSales\_Metadata.XML_**  

   <p><br></p>  

  ![PDI transform](https://i.imgur.com/l3MrxAD.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/Fo6pta5.png)  
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
 
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/SFTWk5L.png)  
  _Postgres SQL's transactions checking in PgAdmin_  

  **_QA_**: You can download data sources, and **_PDI_** transformations to chek it  

[PROWPI002 ETL :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)  