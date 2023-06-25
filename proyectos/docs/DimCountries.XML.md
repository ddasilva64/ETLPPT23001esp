## **_dbo.DimCountries (XML staging file)_**  

### **_PROWPI001\_Countries.KTR (PDI)_**   
1. #raw_01: PopulationDataWorldBank.XLSX  
2. #raw_02: countries_eng.CSV  
3. #raw_03: 2021_population.CSV  
4. #raw_04: arrangements/XML country areas not match input.XML  
5. #staging_01: arrangements/**_XML DimCountries.XML_** (staging file)  
 
   <p><br></p>  

  ![PDI transform](https://i.imgur.com/2H7IdFy.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/QQ5erJu.png)
  _PDI execution_  

### **_<p><br>DimCountries layout</p>_**  

  | Key | Name                  | Data type             | Not null | Attributes | References            | Description  | Metadata |
  | :-: | :-------------------- | :-------------------: | :------: | :--------- | :-------------------- | :----------- | :------- |
  | 1   | CountryCode           | Character variying(3) | X        |            |                       | PK           | m001     |  
  | 2   | Country               | Character variying(60)|          |            |                       |              | m002     |
  | 3   | Area                  | integer               |          |            |                       |              | m003     |
  | 4   | Region                | Character variying(30)|          |            |                       |              | m004     |

   <p><br></p>  
 
   ![XML file checking](https://i.imgur.com/ja9Mxa1.png)  
  _XML file checking_  

  <p><br></p>  

  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/5wh3IhK.png)  
  _Postgres SQL's transactions checking in PgAdmin_ 

  **_QA_**: You can download data sources, and **_PDI_** transformations to chek it  

[PROWPI001 ETL :arrow_up:](prowpi001_etl.md)  

[Back to Table of contents :arrow_double_up:](../README.md)