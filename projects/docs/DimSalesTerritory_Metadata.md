## **_Metadata (Postgre SQL table)_**  

**_Atention!_**: While the importance of metadata cannot be overstated, the reason to use it is to help drive reporting accuracy, validate data transformation, and ensure calculation accuracy. Metadata also imposes the definition of terms such as indicators, standards, etc. In the development of the DWH, metadata appears, and with it arises the need to create a table with this content  

<p><br></p> 

### **_DimSalesTerritory\_Metadata.XML (values)_**  
  1. #staging_07: **_staging\DimSalesTerritory\_Metadata.XML_** (values, but not layout)  

<p><br></p> 

### **_DimSalesTerritory\_Metadata.XML layout_**  

| Key      	| Meaning                                 | Standard              | Formula                                                                  | Units |
| :-------: | :-------------------------------------- | :-------------------: | :----------------------------------------------------------------------- | :---: |
| m063      | Primary key for SalesTerritory records  |                       |                                                                          |       |
| m173      | Region sales name                       |                       |                                                                          |       |
| m174      | Country sales name                      |                       |                                                                          |       |
| m175      | Geographic area to which the sales territory belong |                       |                                                                          |       |

<p><br></p>  

![XML file checking](https://i.imgur.com/S5iITTT.png)  
_XML file checking_  

<p><br></p> 

**_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**  

<p><br></p> 

[ChatGPT usage](../CHATGPT_USAGE.md)  

<p><br></p>

[PROWPI002 ETL :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)  

<p><br></p>

### **_DimSalesTerritory\_Metadata.KTR_**  
  1. #staging_07: **_staging\DimSalesTerritory\_Metadata.XML_**  

<p><br></p>  

![PDI transform](https://i.imgur.com/3KAYtUj.png)  
_PDI transform_  

<p><br></p>  

![PDI execution](https://i.imgur.com/5msWSYs.png)  
_PDI execution_ 

<p><br></p>

### **_Metadata layout_**  

| Key	| Name                  | Data type              | Not null | Attributes | References            | Description |
| :-: | :-------------------- | :--------------------: | :------: | :--------- | :-------------------- | :-----------| 
| 1   | Key                   | Character variying(4)  | X        |            |                       | PK,FK       |
| 2   | Meaning               | Character variying(60) | X        |            |                       |             |
| 3   | Standard              | Character variying(20) |          |            |                       |             |
| 4   | Formula               | Character variying(500)|          |            |                       |             |
| 5   | Units                 | Character variying(10) |          |            |                       |             |

<p><br></p>  

![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/dRH7vu0.png)  
_Postgres SQL's transactions checking in PgAdmin_  

<p><br></p> 

**_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**  

<p><br></p> 

[ChatGPT usage](../CHATGPT_USAGE.md)  

<p><br></p>

[PROWPI002 ETL :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)  