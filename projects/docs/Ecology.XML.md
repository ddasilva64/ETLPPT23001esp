## **_Ecology.XML (XML staging file)_**

### **_PROWPI001\_Ecology.KTR_**
1. #raw_06: HDR21-22_Composite_indices_complete_time_series.CSV
2. #raw_02: countries_eng.CSV
3. #staging_03: **_staging\Ecology.XML_**

<p><br></p> 

![PDI transform](https://i.imgur.com/ROtuoqS.png)
_PDI transform_

<p><br></p> 

![PDI execution](https://i.imgur.com/xmuK1GA.png)
_PDI execution_

<p><br></p> 

### **_Ecology.XML layout_**

| Key | Name        | Data type            | Not null | Attributes | References   | Description | Metadata |
| :-: | :---------- | :------------------: | :------: | :--------- | :----------- | :---------- | :------- |
| 1   | CountryCode | Character varying(3) | X        |            | DimCountries | PK, FK      | m001     |
| 2   | CO2PC       | real                 |          |            |              |             | m008     |
| 3   | MFPC        | real                 |          |            |              |             | m009     |

![XML file checking](https://i.imgur.com/6HS55VU.png)
_XML file checking_

<p><br></p> 

**_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**

<p><br></p> 

[ChatGPT usage](../CHATGPT_USAGE.md)  

<p><br></p>

[PROWPI001 ETL :arrow_up:](prowpi001_etl.md)  

[Back to Table of contents :arrow_double_up:](../README.md)