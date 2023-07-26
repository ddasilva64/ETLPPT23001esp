## Executive Summary

### **_Project_**

**_PROWPI002_** (**_based on_** our worldwide well-known standard project, [**_PROWPI001_**](https://github.com/ddasilva64/MTDPDN23001esp/blob/master/proyectos/PROWPI001.ipynb))

Our client is **_Adventure Works Cycles, Inc._**, which is a large, multinational manufacturing company that produces and distributes bicycles, parts, and accessories for commercial markets in North America, Europe, and Asia. The company employs 500 workers. Additionally, Adventure Works employs several regional sales teams throughout its market base. They want to expand their business worldwide, but they need the best **_BI_** (Business Intelligence) & **_DS_** (Data Science) to make informed decisions.

![Adventure Works Cycles logo](https://i.imgur.com/8dpUmbD.png)  
_Adventure Works Cycles logo_

In particular, as far as we (**_3DoWoCo_**) are concerned, our work must focus on the following objectives:

1. We are starting with our project [**_PROWPI001_**](https://github.com/ddasilva64/MTDPDN23001esp/blob/master/proyectos/PROWPI001.ipynb) as a base and transforming it to meet our client's requirements. Firstly, we need to perform the **_ETL (Extract, Transform & Load)_** process and ensure quality assurance according to their needs.

2. We need to transform the database transferred to us (**_AdventureWorksDW2022_**) into a system that integrates our own database (**_PROWPI002_**) and serves as the foundation for their Data Science and Business Intelligence system.

3. There will be parametric data in the form of sheets (tables) in spreadsheets that do not exist in the source database provided by our client.

4. There will be data in the parameters (spreadsheets) that will evolve temporarily, including historical data that exists outside the **_AdventureWorksDW2022_** database.

5. All the **_ETL_** steps will be stored in a **_Data Warehouse (DWH)_**, which we will build with a different **_Relational Database Management System (RDBMS)_** from the company's corporate **_RDBMS_**. The reason for this is to avoid interfering with the normal functioning of the corporate database.

6. Additionally, they need us to create a tabular model for sales and marketing users to analyze Internet sales data in the **_AdventureWorksDW2022_** database, enabling them to expand their business worldwide and explore other business models.

7. Finally, in the **_DWH_**, we will build a sales yearly forecast that we will compare with current sales results.

8. Additionally, we commit ourselves to propose metrics and a **_Balanced Scorecard (BSC)_** to represent and verify the results.

**_Notice_**: **_AdventureWorksDW2022_** (2022 version) is a work database made by **_Adventure Works Cycles, Inc._**, and adapted to **_Business Intelligence (BI) & Data Science (DS)_**. If the current project succeeds, there may be opportunities to access the main database and collaborate on new and exciting projects in the future.

**_3DoWoCo_** undertakes with **_Adventure Works Cycles, Inc._**, through this document (**_covenant_**), to:

1. Ensure quality for each step, and our client (**_Adventure Works Cycles, Inc._**) will have the opportunity to verify it.

2. The **_ETL_** process will be built in **_Pentaho Data Integrator (PDI)_**. [**_PROWPI001_**](https://github.com/ddasilva64/MTDPDN23001esp/blob/master/proyectos/PROWPI001.ipynb) was built in **_Python_**, but the current **_PROWPI001_** will be deployed in **_PDI_**.

3. **_AdventureWorksDW2022_** database is built in **_Microsoft SQL Server_**, their corporate **_RDBMS_**.

4. Staged tables and the final **_Data Warehouse (DWH)_** will be built in **_Postgre SQL_** to ensure complete independence between the two databases.

5. To compare forecast and current data in the **_DWH_**, forecast tables will be like snapshots of last year's projection data, ensuring a consistent layout for both forecast and current data.

6. The final **_Balanced Scorecard (BSC)_** will be built in **_Microsoft Power BI (PBI)_** and will collect the requested metrics.

**_Notice_**: A small part of this project (**_ETL_** Foreign Exchanges and Forecast), will be done in **_Python_** on **_Jupyter Notebooks_** on **_Google Colaboratory_**.

### ChatGPT 3.5 usage  

[This project was checked using ChatGPT 3.5](../CHATGPT_USE.md)

<p><br></p> 

[Back to Table of contents :arrow_double_up:](../README.md)