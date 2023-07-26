## **_Education.XML (XML staging file)_**

### **_PROWPI001\_Education.KTR_**
1. #raw_06: HDR21-22_Composite_indices_complete_time_series.CSV
2. #raw_02: countries_eng.CSV
3. #staging_05: **_staging\Education.XML_**

![PDI transform](https://i.imgur.com/E1pOonB.png)
_PDI transform_

![PDI execution](https://i.imgur.com/eczLhvU.png)
_PDI execution_

### **_Education.XML layout_**

| Key | Name        | Data type            | Not null | Attributes | References   | Description | Metadata |
| :-: | :---------- | :------------------: | :------: | :--------- | :----------- | :---------- | :------- |
| 1   | CountryCode | Character varying(3) | X        |            | DimCountries | PK, FK      | m001     |
| 2   | EYS         | real                 |          |            |              |             | m017     |
| 3   | FEYS        | real                 |          |            |              |             | m018     |
| 4   | MEYS        | real                 |          |            |              |             | m019     |
| 5   | FSSE        | real                 |          |            |              |             | m020     |
| 6   | MSSE        | real                 |          |            |              |             | m021     |

![XML file checking](https://i.imgur.com/zfeATj9.png)
_XML file checking_

**_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**  

### ChatGPT 3.5 usage  

[This project was checked using ChatGPT 3.5](../CHATGPT_USE.md)  

<p><br></p> 

[PROWPI001 ETL :arrow_up:](prowpi001_etl.md)  

[Back to Table of contents :arrow_double_up:](../README.md)