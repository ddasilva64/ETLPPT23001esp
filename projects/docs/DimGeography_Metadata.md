## **_Metadata (Postgre SQL)_**  

**_Atention!_**: While the importance of metadata cannot be overstated, the reason to use it is to help drive reporting accuracy, validate data transformation, and ensure calculation accuracy. Metadata also imposes the definition of terms such as indicators, standards, etc. In the development of the DWH, metadata appears, and with it arises the need to create a table with this content  

<p><br></p>

### **_DimStatesProvinces\_Metadata.XML (values)_**  
  1. #staging_07: **_staging\DimStatesProvinces\_Metadata.XML_** (values, but not layout)  

<p><br></p>

### **_DimStatesProvinces\_Metadata.XML layout_**  

| Key      	| Meaning                                 | Standard              | Formula                                                                  | Units |
| :-------: | :-------------------------------------- | :-------------------: | :----------------------------------------------------------------------- | :---: |
| m139      | Primary key for States-provinces records| ISO standard state or province code                    |                                                                           |       |
| m001      | Country code                            | Standard ISO3         |                                                                          |       |
| m140      | State or province description           |                       |                                                                          |       |

<p><br></p>  

![XML file checking](https://i.imgur.com/Mcmx71C.png)  
_XML file checking_  

<p><br></p>

**_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**  

<p><br></p> 

[ChatGPT usage](../CHATGPT_USAGE.md)  

<p><br></p>

[PROWPI002 ETL :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)  

<p><br></p>  

### **_DimStatesProvinces\_Metadata.KTR_**  
  1. #staging_07: **_staging\DimStatesProvinces\_Metadata.XML_**  

<p><br></p>  

![PDI transform](https://i.imgur.com/oxukr9x.png)  
_PDI transform_  

<p><br></p>  

![PDI execution](https://i.imgur.com/3CfGC1L.png)  
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

![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/e2S3DtX.png)  
_Postgres SQL's transactions checking in PgAdmin_  

<p><br></p> 

**_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**  

<p><br></p> 

[ChatGPT usage](../CHATGPT_USAGE.md)  

<p><br></p>

[PROWPI002 ETL :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)  

### **_DimGeography\_Metadata.XML (values)_**  
  1. #staging_07: **_staging\DimGeography\_Metadata.XML_** (values, but not layout)  

<p><br></p> 

### **_DimGeography\_Metadata.XML layout_**  

| Key      	| Meaning                                 | Standard              | Formula                                                                  | Units |
| :-------: | :-------------------------------------- | :-------------------: | :----------------------------------------------------------------------- | :---: |
| m141      | Primary key for Geography records       |                       |                                                                          |       |
| m001      | Country code                            | Standard ISO3         |                                                                          |       |
| m139      | Primary key for States-provinces records| ISO standard state or province code                    |                                                                           |       |
| m142      | Primary key for SalesTerritory records  |                       |                                                                          |       |
| m143      | City                                    |                       |                                                                          |       |
| m144      | Postal Code                             |                       |                                                                          |       |

<p><br></p>  

![XML file checking](https://i.imgur.com/EQWRj60.png)  
_XML file checking_  

<p><br></p> 

**_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**  

<p><br></p> 

[ChatGPT usage](../CHATGPT_USAGE.md)  

<p><br></p>

[PROWPI002 ETL :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)  

<p><br></p> 

### **_DimGeography\_Metadata.KTR_**  
  1. #staging_07: **_staging\DimGeography\_Metadata.XML_**  

<p><br></p>  

![PDI transform](https://i.imgur.com/wVkyxDR.png)  
_PDI transform_  

<p><br></p>  

![PDI execution](https://i.imgur.com/iGnLYoL.png)  
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

![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/33zvtJk.png)  
_Postgres SQL's transactions checking in PgAdmin_  

<p><br></p> 

**_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**  

<p><br></p> 

[ChatGPT usage](../CHATGPT_USAGE.md)  

<p><br></p> 

[PROWPI002 ETL :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)  