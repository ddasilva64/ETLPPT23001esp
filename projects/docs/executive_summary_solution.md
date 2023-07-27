## Executive Summary

### **_Solution_**

The **_ETL_** process will generate tables (**_Facts_**, **_Dimensions_**, and **_Metadata_**) in an **_OLTP DB_** (**_Postgre SQL_**). This will be our **_DWH_**.

The reason to build the **_DWH_** in **_Postgre SQL_**, but not **_SQL Server_** (corporate **_DB_**), is because they will not interfere and will live separately.

The **_Metadata_** content will encompass the necessary **_business rules_**.

The **_DWH_** will follow the rules of a **_DBMS_**, although it will have a **_snowflake_** structure.

The **_DWH_** will also pull parametric data from a **_spreadsheet_** file (**_ISS\_param.XLS_**). These data may change over time (historical).

Additionally, there will be a system of tables that will make it possible to forecast the future, to see how it has evolved, and if the forecast has been fulfilled.

In the future, advanced **_AI_** modules will be incorporated into the **_ISS (Internet Sales Subsystem)_** as a **_Forecasting Subsystem_**. For now, we will incorporate forecasts elaborated by **_Adventure Works Cycles, Inc._**.

The metrics shown in the output **_Dashboard_** will help **_Adventure Works Cycles, Inc._** to make decisions to project the company internationally and quickly increase sales in new markets worldwide.

Necessary **_QA (Quality Assurance)_** will be reflected in the **_DWH_**.

All departments of **_Adventure Works Cycles, Inc._** undertake to transfer, quickly and with absolute transparency, the data necessary for the current process.

Also, the management of **_Adventure Works Cycles, Inc._** agrees to provide the necessary feedback to obtain the best information and **_UX (User eXperience)_** of the final **_BSC (Balanced Scorecard)_**. This will be done as many times as necessary.

Meetings will be held (in person or by **_Microsoft Teams_**), between **_Adventure Works Cycles, Inc._** and **_3DoWoCo_**, including the administrators and concerned employees.

<p><br></p> 

#### **_Steps_**

1. Get data from data sources **_PROWPI001_**. Not categorical (like [**_PROWPI001_**](https://github.com/ddasilva64/MTDPDN23001esp/blob/master/proyectos/PROWPI001.ipynb) project), but numerical.
2. Get data from **_AdventureWorksDW2022_** (only from **_ISS - Internet Sales Subsystem -_**), and integrate production of **_PROWPI001_**. This will be **_PROWPI002_**.
3. Get data from **_ISS\_param.XLS_** (from a shared server folder), and it will be integrated into **_PROWPI002_**.
4. **_Power BI BSC_**, called **_ISS.pbix_**, will get data from **_PROWPI002_**, and it will show metrics based on data.
5. **_ISS.pbix_** will be deployed in the corporate **_Power BI Service_** of **_Adventure Works Cycles, Inc._**.  

<p><br></p> 

[ChatGPT usage](../CHATGPT_USAGE.md)  

<p><br></p>

[Back to Table of contents :arrow_double_up:](../README.md)

<p><br></p>

#### **_Goals_**

1. **_PROWPI001 ETL_**
2. **_PROWPI002 ETL_**
3. **_DWH QA & optimizations_**
   - **_-> Meeting_**
4. **_Parametric data ETL_**
5. **_DWH QA & optimizations_**
   - **_-> Meeting_**
6. **_Metrics definitions (from the data contained in the fact tables)_**
   - **_-> Meeting_**
7. **_Build BSC in Power BI_**
8. **_BSC deployment in Power BI Service_**
   - **_-> Deployment presentation_**
9. **_Final acceptance_**

<p><br></p>

**_Notice_**: **_DWH_** optimizations will be done through dimensional reductions in DB views, but not in tables directly. The reason is because of information traceability.
  
<p><br></p> 

[ChatGPT usage](../CHATGPT_USAGE.md)  

<p><br></p> 

[Back to Table of contents :arrow_double_up:](../README.md)