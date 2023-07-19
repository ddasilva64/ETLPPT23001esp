## **_FactExchanges (Parameters of currency value exchanges)_**

**_Warning!_**: **_Adventure Works Cycles, Inc._** currently does not have any forecasts. **_PROWPI002_** will build a first forecasting system based on the following principles:  
1. **_Ceteris paribus_**, that is, if everything else remains the same; all other things being equal. We only consider the sales figure, we do not imagine anything regarding the products (new, obsolete), nor regarding promotions, and so on    
2. In the case of **_Adventure Works Cycles, Inc._**, we will estimate a situation in which we multiply the sales of the year 2013 by a factor to obtain the sales in 2024. That is, we will not use any special technique for projecting future sales  
3. In the future we will consider forecasting techniques (including **_AI_**) and different scenarios (sales, employees, warehousing, distribution, etc.)  

That means that:  

1. We will have, in our **_Excel_** parameter file, the data of the factor by which we want to multiply sales  
2. In the **_Excel_** file, we will also have the parameter of the year, with which we want to make the forecasting (normally it will be the current year, at closing)  
3. We will execute an **_ETL_** process that will generate the forecast, and that we will compare with sales made in that same period  
4. Our **_BSC_** will allow us to estimate business strategies, to increase it, compared to the forecast  

### Goals  

1. The tables involved are **_FactInternetSales_**, and **_DimReseller_**. The forecasting system tables will be FactInternetSalesForecast, and DimResellerForecast  
2. We will generate the new tables and in **_DWH_** we will check properties and values  

### Proposed spreadsheet columns  

1. Sales factor: Usually greater than 1 and less than 2  
2. Accounting year: The accounting year that we will take for forecast  
3. Forecast year: Forecast year in which we will compare results. Normally it will be the year following the current year  
4. Months difference: (Forecast year - Accounting year) * 12

### **_PROWPI002\_FORECAST\_FactInternetSales.KTR_**  
  1. #staging_53: staging\ISS_param.XLS           -> FORECAST (INPUT)  
  2. #staging_54: **_FactInternetSales_**         -> (Postgre SQL INPUT table) 
  2. #staging_08: **_FactInternetSalesForecast_** -> (Postgre SQL OUTPUT table)  
   
   <p><br></p>  

  ![PDI transform](https://i.imgur.com/guLtrFI.png)  
  _PDI transform_  

  <p><br></p>  

  ![PDI execution](https://i.imgur.com/vOVSVVx.png)  
  _PDI execution_ 

   <p><br></p>  
 
  ![Postgres SQL's transactions checking in PgAdmin](https://i.imgur.com/PgP0TQ1.png) 
  _Postgres SQL's transactions checking in PgAdmin_  

  **_QA_**: Go to **_[DWH (Data Warehouse)](dwh.md)_**  

[PROWPI002 ETL :arrow_up:](prowpi002_etl.md)  

[Back to Table of contents :arrow_double_up:](../README.md)   