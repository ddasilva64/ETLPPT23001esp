## **_FactCountries (Postgre SQL table)_**  

### **_PROWPI001\_FactCountries.KTR_**  
  1. #staging_02: staging\demography  
  2. #staging_03: staging\ecology  
  3. #staging_04: staging\economy  
  4. #staging_05: staging\education  
  5. #staging_06: staging\FactCountries 
  6. #staging_07: **_FactCountries_** (Postgre SQL table)  

   <p><br></p>  

  ![PDI transform](https://i.imgur.com/x1cya1l.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/DBRLP8z.png)  
  _PDI execution_ 

### **_<p><br>FactCountries layout</p>_**  

  | Key	| Name                  | Data type             | Not null | Attributes | References            | Description  | Metadata |
  | :-: | :-------------------- | :-------------------: | :------: | :--------- | :-------------------- | :----------- | :------- |
  | 1   | CountryCode           | Character variying(3) | X        |            |                       | PK,FK        | m001     |
  | 2   | Population            | integer               |          |            |                       |              | m005     |
  | 3   | PDR                   | real                  |          |            |                       |              | m006     |
  | 4   | PGR                   | real                  |          |            |                       |              | m007     |  
  | 5   | CO2PC                 | real                  |          |            |                       |              | m008     |
  | 6   | MFPC                  | real                  |          |            |                       |              | m009     | 
  | 7   | GDPG                  | real                  |          |            |                       |              | m010     |
  | 8   | GNIPC                 | real                  |          |            |                       |              | m011     |
  | 9   | FGNIPC                | real                  |          |            |                       |              | m012     |
  | 10  | MGNIPC                | real                  |          |            |                       |              | m013     |
  | 11  | FLFPR                 | real                  |          |            |                       |              | m014     |
  | 12  | MLFPR                 | real                  |          |            |                       |              | m015     |
  | 13  | PDGDP                 | real                  |          |            |                       |              | m016     | 
  | 14  | EYS                   | real                  |          |            |                       |              | m017     |
  | 15  | FEYS                  | real                  |          |            |                       |              | m018     |
  | 16  | MEYS                  | real                  |          |            |                       |              | m019     |
  | 17  | FSSE                  | real                  |          |            |                       |              | m020     |
  | 18  | MSSE                  | real                  |          |            |                       |              | m021     |
  | 19  | CHEGDP                | real                  |          |            |                       |              | m022     | 
  | 20  | CHEPCUSD              | real                  |          |            |                       |              | m023     |
  | 21  | LE                    | real                  |          |            |                       |              | m024     |
  | 22  | FLE                   | real                  |          |            |                       |              | m025     |
  | 23  | MLE                   | real                  |          |            |                       |              | m026     |
  | 24  | MMR                   | integer               |          |            |                       |              | m027     |
  | 25  | TBR                   | real                  |          |            |                       |              | m028     |

   <p><br></p>  
 
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/kmDllqX.png) 
  _Postgres SQL's transactions checking in PgAdmin_  

  **_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**  

[PROWPI001 ETL :arrow_up:](prowpi001_etl.md)  

[Back to Table of contents :arrow_double_up:](../README.md)   