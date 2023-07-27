## **_Forecast_**

**_Warning!_**: **_Adventure Works Cycles, Inc._** currently does not have any forecasts. **_PROWPI002_** will build a first forecasting system based on the following principles:  
1. **_Ceteris paribus_**, that is, if everything else remains the same; all other things being equal. We only consider the sales figure, we do not imagine anything regarding the products (new, obsolete), nor regarding promotions, and so on    
2. In the case of **_Adventure Works Cycles, Inc._**, we will estimate a situation in which we multiply the sales of the year 2013 by a factor to obtain the sales in 2024. That is, we will not use any special technique for projecting future sales  
3. In the future we will consider forecasting techniques (including **_AI_**) and different scenarios (sales, employees, warehousing, distribution, etc.)  

That means that:  

1. We will have, in our **_Excel_** parameter file, the data of the factor by which we want to multiply sales  
2. In the **_Excel_** file, we will also have the parameter of the year, with which we want to make the forecasting (normally it will be the current year, at closing)  
3. We will execute an **_ETL_** process that will generate the forecast, and that we will compare with sales made in that same period  
3.1. Generating **_XML_** of FactInternetSales in **_PDI_**  
3.2. Transform **_XML_** with **_Python_** in **_Jupyter Notebook_**  
3.3. Export data to **_Postgre SQL_** in **_PDI_**  
4. Our **_BSC_** will allow us to estimate business strategies, to increase it, compared to the forecast  

<p><br></p> 

### Goals  

1. The table involved is **_FactInternetSales_**. The forecasting system tables will be **_FactInternetSalesForecast_**  
2. We will generate the new tables and in **_DWH_** we will check properties and values  

<p><br></p> 

### Proposed spreadsheet columns  

1. Sales factor: Usually greater than 1 and less than 2  
2. Accounting year: The accounting year that we will take for forecast  
3. Forecast year: Forecast year in which we will compare results. Normally it will be the year following the current year  

<p><br></p> 

### **_FORECAST\_FactInternetSales01.KTR_**  
  1. #staging_53: **_FactInternetSales_**          -> (Postgre SQL INPUT table) 
  2. #staging_08: **_XML\_FactInternetSales.XML_** -> (XML OUTPUT)   

   <p><br></p>  

  ![PDI transform](https://i.imgur.com/Ge2moBi.png)  
  _PDI transform_  

  <p><br></p>  

  ![XML output](https://i.imgur.com/b9m7iZ7.png)  
  _XML output_ 

### **_PROWPI002\_Forecast.ipynb_**  
  0. [PROWPI002_Forecast.ipynb](..\PROWPI002\PROWPI002_Forecast.ipynb)    
  1. #staging_07: **_staging\ISS\_param.XLS_**     -> FORECAST (INPUT)  
  2. #staging_08: **_XML\_FactInternetSales.XML_** -> (XML INPUT) 
  3. #staging_09: **_CSV\_FactInternetSales.CSV_** -> (CSV OUTPUT)  

  <p><br></p>  

  ![CSV output](https://i.imgur.com/VDD18sM.png)  
  _CSV output_ 

### **_FORECAST\_FactInternetSales02.KTR_**  
  1. #staging_09: **_CSV\_FactInternetSales.CSV_** -> (CSV INPUT)   
  2. #staging_56: **_FactInternetSalesForecast_**  -> (Postgre SQL OUTPUT table)  
   
<p><br></p>  

![PDI transform](https://i.imgur.com/6GrqLBW.png)  
_PDI transform_   

<p><br></p>  

![PDI execution](https://i.imgur.com/csOBMgt.png)  
_PDI execution_  

<p><br></p>  

![PDI metrics](https://i.imgur.com/BBJ0bBo.png)  
_PDI metrics_ 

  <p><br></p>  

![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/fC00j86.png)  
_Postgres SQL's transactions checking in PgAdmin_  

  <p><br></p>  

![Recalculated quantities for forecasting](https://i.imgur.com/6PzfD5Y.png)  
_Recalculated quantities for forecasting_  

  <p><br></p>  

![Recalculated dates for forecasting](https://i.imgur.com/2lI4OaG.png)  
_Recalculated dates for forecasting_  

<p><br></p> 

**_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**  

<p><br></p> 

[ChatGPT usage](../CHATGPT_USAGE.md)  

<p><br></p>

[PROWPI002 ETL :arrow_up:](prowpi002_etl.md)  

[Back to Table of contents :arrow_double_up:](../README.md)   