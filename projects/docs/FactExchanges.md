## **_FactExchanges (Parameters of currency value exchanges)_**

**_Warning!_**: Currently, each user who needs to calculate the change from a local currency to the US dollar, does the calculation manually, in an **_Excel_** file, and without any control  

That means that:  

1. n employees do the same job without knowing it  
2. Each employee who does this job spends m hours doing it  
3. Since there is no supervision, the result that the work produces is almost always different, depending on the department or branch that does it  
4. When the results are collected, at the company headquarters, all the work must always be redone, which implies h more hours  
5. When the results are shared (currency changes), with the board of directors, they are already obsolete  

### Goals  

1. The data of the changes will be updated monthly. The Board of Directors has established this minimum frequency, but it may be reduced, if deemed appropriate  
2. The data will be published in the corporate DWH and will be unique for all employees worldwide  
3. The system must allow automatically calculating the changes between a minimum and maximum date  
4. The system should be able to be fully automated in the future, but currently, it should take minutes (at most)  
5. The work of 1 single employee should be reduced to the maximum, in the preparation of the basic **_Excel_** file. At most, it should be 1  
6. These data have to be parametric, and have to be fully related to the rest **_DWH_** data  

### Proposed spreadsheet columns  

1. Period start date: usually the first day of the month  
2. Period end date: normally the last day of the month  
3. Exchange fluctuations of 1 currency, with respect to the US dollar, in each period determined by the two previous columns  

### Proposed spreadsheet rows 

1. The system will generate for each period (generally the first and last day of the month) the changes, repeating the values of the first day of the period  
2. The above means that changes will be generated between the beginning date of the first period and the end of the last  
3. The process will generate a .CSV file that will be the data source for an ETL Pentaho process, which will load the data appropriately into the DWH  

### Example  

* **_INPUT_**

| Begin      | End        | eur        | cad        | aud        | gbp        |
| :--------: | :--------: | :--------: | :--------: | :--------: | :--------: |
| 01/12/2010 | 31/12/2010	| 1,3379	   | 1,0027	    | 1,0217	   | 1,5601     |
| 01/01/2010 | 31/01/2011 | 1,3686     | 0,9984     | 0,9963     | 1,6015     |

* **_OUTPUT_**

| Date       | eur        | cad        | aud        | gbp        |
| :--------: | :--------: | :--------: | :--------: | :--------: |
| 01/12/2010 | 1,3379	    | 1,0027	   | 1,0217	    | 1,5601     |
| 02/12/2010 | 1,3379	    | 1,0027	   | 1,0217	    | 1,5601     |
| ...        | 1,3379	    | 1,0027	   | 1,0217	    | 1,5601     |
| 31/12/2010 | 1,3379	    | 1,0027	   | 1,0217	    | 1,5601     |
| 01/01/2011 | 1,3686     | 0,9984     | 0,9963     | 1,6015     |
| 02/01/2011 | 1,3686     | 0,9984     | 0,9963     | 1,6015     |
| ...        | 1,3686     | 0,9984     | 0,9963     | 1,6015     |
| 31/01/2011 | 1,3686     | 0,9984     | 0,9963     | 1,6015     |

### Framework  

* Python & Pandas,  
* Notebook, and 
* Google Colab.


### **_PROWPI002\_Exchanges.IPYNB_**  
  1. #staging_51: staging\ISS_param.XLS -> EXCHANGES (INPUT)  
  2. #staging_52: staging\ISS_param.CSV -> EXCHANGES (OUTPUT)  

![PROWPI002_Exchanges.IPYNB (before)](https://i.imgur.com/TAvGhwU.png)  
_PROWPI002\_Exchanges.IPYNB  (before)_  

![PROWPI002_Exchanges.IPYNB (after)](https://i.imgur.com/Nequm7a.png)  
_PROWPI002\_Exchanges.IPYNB (after)_  

![ISS_param.CSV](https://i.imgur.com/8cgtHog.png)  
_ISS\_param.CSV_

### **_PROWPI002\_FactExchanges.KTR_**  
  1. #staging_52: staging\ISS_param.CSV -> EXCHANGES  
  2. #staging_07: **_FactExchanges_** (Postgre SQL table)  
   
   <p><br></p>  

  ![PDI transform](https://i.imgur.com/Cga7qaC.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/gUtavES.png))  
  _PDI execution_ 

### **_<p><br>FactExchanges layout</p>_**  

  | Key	| Name                  | Data type             | Not null | Attributes | References            | Description  | Metadata |
  | :-: | :-------------------- | :-------------------: | :------: | :--------- | :-------------------- | :----------- | :------- |
  | 1   | CurrencyKey           | Character variying(3) | X        |            | DimCurrencies         | PK,FK        | m082     |
  | 2   | Date                  | Date                  | X        |            |                       | PK           | m205     |
  | 3   | Exchange              | real                  |          |            |                       |              | m206     |

   <p><br></p>  
 
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/gUtavES.png) 
  _Postgres SQL's transactions checking in PgAdmin_  

  **_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**  

[PROWPI002 ETL :arrow_up:](prowpi002_etl.md)  

[Back to Table of contents :arrow_double_up:](../README.md)   