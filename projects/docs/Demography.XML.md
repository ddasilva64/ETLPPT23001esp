## **_Demography.XML (XML staging file)_**

### **_PROWPI001\_Demography.KTR_**
1. #raw_03: 2021_population.CSV
2. #raw_02: countries_eng.CSV
3. #raw_05: arrangements/XML country demography not match input.XML
4. #staging_02: **_staging\demography.XML_**

![PDI transform](https://i.imgur.com/U6U8y0p.png)
_PDI transform_

![PDI execution](https://i.imgur.com/9VYrTCl.png)
_PDI execution_

### **_Demography.XML layout_**

| Key | Name        | Data type            | Not null | Attributes | References   | Description | Metadata |
| :-: | :---------- | :------------------: | :------: | :--------- | :----------- | :---------- | :------- |
| 1   | CountryCode | Character varying(3) | X        |            | DimCountries | PK, FK      | m001     |
| 2   | Population  | integer              |          |            |              |             | m005     |
| 3   | PDR         | real                 |          |            |              |             | m006     |
| 4   | PGR         | real                 |          |            |              |             | m007     |

![XML file checking](https://i.imgur.com/p7KbdVZ.png)
_XML file checking_

**_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**  

### ChatGPT 3.5 usage  

[This project was checked using ChatGPT 3.5](../CHATGPT_USE.md)  

<p><br></p> 

[PROWPI001 ETL :arrow_up:](prowpi001_etl.md)  

[Back to Table of contents :arrow_double_up:](../README.md)