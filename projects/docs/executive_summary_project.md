## Executive Summary  

### **_Project_**  

**_PROWPI002_** (**_based on_** our worldwide well-known standard project, [**_PROWPI001_**](https://github.com/ddasilva64/MTDPDN23001esp/blob/master/proyectos/PROWPI001.ipynb))  

Our client is **_Adventure Works Cycles, Inc._**, which is a large, multinational manufacturing company that produces and distributes bicycles, parts, and accessories for commercial markets in North America, Europe, and Asia. The company employs 500 workers. Additionally, Adventure Works employs several regional sales teams throughout its market base. They want to expand their business worldwide, but they need the best good **_BI_** & **_DS_** to take good decisions   

![Adventure Works Cycles logo](https://i.imgur.com/8dpUmbD.png)  
_Adventure Works Cycles logo_  

Especially, as far as we (**_3DoWoCo_**) are concerned, our work must focus on the next objectives:  

1. We are taking, as a base our project [**_PROWPI001_**](https://github.com/ddasilva64/MTDPDN23001esp/blob/master/proyectos/PROWPI001.ipynb), and transform it, according to our client requirements. That is, firstly, we need to do the **_ETL (Extract, Transform & Load)_**, and quality assurance, **_according to their needs_**  

2. We need **_to transform the DB that is transferred to us (AdventureWorksDW2022)_**, into a system that integrates our DB (**_PROWPI002_**) and **_that is the base of their DS and BI system_**  

3. There will be **_parametric data_** in the form of sheets (tables) **_in spreadsheets_**. **_This info not exists in the source DB_**, provided by our client  

4. There will be **_data in the parameters (spreadsheets)_**, which will evolve (temporarily). That is, **_there will be historical data, outside the DB (AdventureWorksDW2022)_**  

5. All the **_ETL_** steps will be stored in a **_DWH (Data Warehouse)_**, which we will build with a different **_RDBMS_** from the company's corporate **_RDBMS_**. The reason for this is not to interfere with the normal functioning of the corporate DB  

5. Also, they need that we **_create a tabular model for sales and marketing users to analyze Internet sales_** data in the **_AdventureWorksDW2022_** DB, to expand their business worldwide, and to other business models  

5. Finally, in the **_DWH_**, we will build a **_sales yearly forecast_** that we will compare with currents sales results  

6. Additionally, we commit ourselves to propose **_metrics_** and a **_BSC (Balanced Scorecard)_** to represent and verify the results  

**_Notice_**: **_AdventureWorksDW2022_** (2022 version), is a work DB of the original and is an adaptation to **_BI (Business Intelligence)_** & **_DS (Data Science)_**, which is made by themselves (**_Adventure Works Cycles, Inc._**). _Maybe in the future, if the current project success, we will be able to access the main BD & work together on new & exciting ones..._    

**_3DoWoCo_** undertakes with **_Adventure Works Cycles, Inc._**, through this document (**_covenant_**) to:

1. **_For each single step we will assure quality_**, and our client (**_Adventure Works Cycles, Inc._**), **_will be able to check it_**   

2. The **_ETL_** process will be built in **_PDI (Pentaho Data Integrator)_**. [**_PROWPI001_**](https://github.com/ddasilva64/MTDPDN23001esp/blob/master/proyectos/PROWPI001.ipynb) was built in Python, but current **_PROWPI001_** will be deployed in **_PDI_**  

3. **_AdventureWorksDW2022_** DB is built in **_Microsoft SQL Server_** (their corporate **_RDBMS_**)  

4. Staged tables and final DB, that is the **_DWH_** will be built in **_Postgre SQL_** (to assure absolute independence between the two DB)

5. To compare forecast & current, in the **_DWH_**, forecast tables will be like **_snapshots_** of last year projection data. That is, **_forecast & current will have the same layout_**  

5. Final **_BSC (Balanced Scorecard)_** will be built in **_PBI (Microsoft Power BI)_**, and will collect the requested metrics  

**_Notice_**: A small part of this project (**_ETL_** Currency Exchanges and Forecast), will be done in **_Python_** on **_Jupyter Notebooks_** on **_Google Colaboratory_**  

[Back to Table of contents :arrow_double_up:](../README.md)