## **_Economy.XML (XML staging file)_**  

### **_PROWPI001\_Economy.KTR_**  
  1. #raw_07: API_NY.GDP.MKTP.KD.ZG_DS2_en_csv_v2_4701072.CSV 
  2. #raw_06: HDR21-22_Composite_indices_complete_time_series.CSV  
  3. #raw_02: countries_eng.CSV  
  4. #raw_08: WEO_Data_01.CSV  
  5. #raw_09: WEO_Data_02.CSV  
  6. #staging_04: **_staging\Economy.XML_**  
 
   <p><br></p>  

  ![PDI transform](https://i.imgur.com/GZ8ZExc.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/XXMKcs1.png)  
  _PDI execution_ 

### **_<p><br>Economy.XML layout</p>_**  

  | Key	| Name                  | Data type             | Not null | Attributes | References            | Description | Metadata |
  | :-: | :-------------------- | :-------------------: | :------: | :--------- | :-------------------- | :-----------| :------- |
  | 1   | CountryCode           | Character variying(3) | X        |            |                       | PK,FK       | m001     |
  | 2   | GDPG                  | real                  |          |            |                       |             | m010     |
  | 3   | GNIPC                 | real                  |          |            |                       |             | m011     |
  | 4   | FGNIPC                | real                  |          |            |                       |             | m012     |
  | 5   | MGNIPC                | real                  |          |            |                       |             | m013     |
  | 6   | FLFPR                 | real                  |          |            |                       |             | m014     |
  | 7   | MLFPR                 | real                  |          |            |                       |             | m015     |
  | 8   | PDGDP                 | real                  |          |            |                       |             | m016     |

   <p><br></p>  
 
   ![XML file checking](https://i.imgur.com/LJmQj4T.png)  
  _XML file checking_

  **_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**  

[PROWPI001 ETL :arrow_up:](prowpi001_etl.md)  

[Back to Table of contents :arrow_double_up:](../README.md)