## Executive Summary  

### **_Business_**  

We are **_3DoWoCo_** (**_Data-Driven - Don't Worry Company, Inc., that is 3DoWoCo_**), a **_DS (Data Science)_** company  

![#pic001](https://i.imgur.com/0OZ9JPU.jpg "3DoWoCo logo")  
_3DoWoCo logo_  

[Back to Table of contents :arrow_double_up:](../README.md)

### **_Project_**  

**_PROWPI002_** (**_based on_** our worldwide well-known standard project, [**_PROWPI001_**](https://github.com/ddasilva64/MTDPDN23001esp/blob/master/proyectos/PROWPI001.ipynb))  

Our client is **_Adventure Works Cycles, Inc._**, which is a large, multinational manufacturing company that produces and distributes bicycles, parts, and accessories for commercial markets in North America, Europe, and Asia. The company employs 500 workers. Additionally, Adventure Works employs several regional sales teams throughout its market base. They want to expand their business worldwide, but they need the best good BI & DS to take good decisions   

![Adventure Works Cycles logo](https://i.imgur.com/8dpUmbD.png)  
_Adventure Works Cycles logo_  

Especially, as far as we (**_3DoWoCo_**) are concerned, our work must focus on the next objectives:  

1. We are taking, as a base our project [**_PROWPI001_**](https://github.com/ddasilva64/MTDPDN23001esp/blob/master/proyectos/PROWPI001.ipynb), and transform it, according to our client requirements. That is, firstly, we need to do the **_ETL (Extract, Transform & Load)_**, and quality assurance, **_according to their needs_**  

2. We need **_to transform the DB that is transferred to us (AdventureWorksDW2022)_**, into a system that integrates our DB (**_PROWPI002_**) and **_that is the base of their DS and BI system_**  

3. There will be **_parametric data_** in the form of sheets (tables) **_in Excel spreadsheets_**. **_This info not exists in the source DB_**, provided by our client  

4. There will be **_data in the parameters (Excel)_**, which will evolve (temporarily). That is, **_there will be historical data, outside the DB (AdventureWorksDW2022)_**  

5. All the **_ETL_** steps will be stored in a **_DWH (Data Warehouse)_**, which we will build with a different **_RDBS_** from the company's corporate **_RDBS_**. The reason for this is not to interfere with the normal functioning of the corporate database  

5. Also, they need that we **_create a tabular model for sales and marketing users to analyze Internet sales_** data in the **_AdventureWorksDW2022_** DB, to expand their business worldwide, and to other business models  

5. Finally, in the **_DWH_**, we will build a **_sales yearly forecast_** that we will compare with currents sales results  

6. Additionally, we commit ourselves to propose **_metrics_** and a **_BSC (Balanced Scorecard)_** to represent and verify the results  

**_Notice_**: **_AdventureWorksDW2022_** (2022 version), is a work DB of the original and is an adaptation to **_BI (Business Intelligence)_** & **_DS (Data Science)_**, which is made by themselves (**_Adventure Works Cycles, Inc._**). _Maybe in the future, if the current project success, we will be able to access the main BD & work together on new & exciting ones..._    

**_3DoWoCo_** undertakes with **_Adventure Works Cycles, Inc._**, through this document (**_covenant_**) to:

1. **_For each single step we will assure quality_**, and our client (**_Adventure Works Cycles, Inc._**), **_will be able to check it_**   

2. The **_ETL_** process will be built in **_PDI (Pentaho Data Integrator)_**. [**_PROWPI001_**](https://github.com/ddasilva64/MTDPDN23001esp/blob/master/proyectos/PROWPI001.ipynb) was built in Python, but current **_PROWPI001_** will be deployed in **_PDI_**  

3. **_AdventureWorksDW2022_** DB is built in **_Microsoft SQL Server_** (their corporate RDBS)  

4. Staged tables and final DB, that is the **_DWH_** will be built in **_Postgre SQL_** (to assure absolute independence between the two DB)

5. To compare forecast & current, in the **_DWH_**, forecast tables will be like **_snapshots_** of last year projection data. That is, **_forecast & current will have the same layout_**  

5. Final **_BSC (Balanced Scorecard)_** will be built in **_PBI (Microsoft Power BI)_**, and will collect the requested metrics  

[Back to Table of contents :arrow_double_up:](../README.md)

### **_3DoWoCo contact_**

- email: fake.it@till.you.make.it.com  
- URL: https://mary-had-a-little-lamb-what-the-fuck.htm

[Back to Table of contents :arrow_double_up:](../README.md)

### **_Client pains_**  

1. The problem with **_Adventure Works Cycles, Inc._** is that its **_legacy system_** (which cannot, and should not be changed), because it works perfectly, for the purpose it was implemented, **_it's built on the tech stack_**:  

   - **_C#_**  

   - **_SQL Server_**, not always with normalized tables (because they're inherited from other not RDB systems)  

   - **_Batch processes_** for obtaining and disseminating (by **_email_**) information  

   - The **_IT (information technology)_** staff of our client, is very busy with the classic **_Transactional System_**, and cannot respond to  **_BI_**, and **_DS_** needs   

2. Also, their system offers the following gaps:

   - The **_creation of tables and views is chaotic_** (names, locations, etc.). They (**_Adventure Works Cycles, Inc._**), are actively fighting against this  

   - **_SQL quickly tends to become complicated and difficult to maintain_**. Also, the volatile of **_IT_** staf, makes DB very difficult to maintain. They (**_Adventure Works Cycles, Inc._**), also are actively fighting against this  

   - The **_creation of automated systems_**, despite having a batch process standard, has proven to be **_inefficient, to meet the needs of DS_**

   - **_IT_** staff are very professional and efficient, but they are **_too specialized_** in their technology stack  

   - The management staff of our client, **_do not have the necessary skills_**, to face **_BI_**, and **_DS_** projects. To solve this problem, we have contacted **_Adventure Works Cycles, Inc._** with our training partner: [**_Platzi_**](https://en.wikipedia.org/wiki/Platzi) (**_may be, one of the better Technology of Information Systems Training company worldwide_**)  

![Platzi logo](https://i.imgur.com/sG9GhiB.jpg)  
_(Platzi logo, from [Platzi Team](https://courses.platzi.com/), [public domain](https://commons.wikimedia.org/w/index.php?curid=93410933))_

[Back to Table of contents :arrow_double_up:](../README.md)

### **_Opportunity_**  

The current project may be just the beginning of the **_BI_**, and **_DS_** collaboration between **_3DoWoCo_**, and **_Adventure Works Cycles, Inc._** **_There are 80% hidden needs to discover and new business opportunities (like a hide side of an iceberg), for our client, that we can help them to discover_**  

Also, the combination of **_Python_** and **_PDI_** will be a perfect set of tools to solve any customer's **_ETL_** needs in the future  

![#pic003](https://i.imgur.com/arHXGzQ.png, "Iceberg")  
_DS & BI needs are like an iceberg (80% not visible)_     

[Back to Table of contents :arrow_double_up:](../README.md)

### **_Solution_**  

#### **_Steps_**  

- **_ETL_** from **_PROWPI001_**, will be ported from **_Python_** to **_PDI_**  

- Each table from different **raw (raw data source files)_** of **_PROWPI001_**, will generate a **_.KTR_** file (**_Transformation file_**), that is our client will be able to check transformation results, easily. Later, we will integrate transform tables from **_PROWPI001_** project in a **_fact table_** or in a **_dimension table_** (only one)   

- The operational data, which as we have said, is in **_SQL Server_** (**_AdventureWorksDW2022_** DB), we will complete it with **_Excel_** parametric tables. These tables will be part of **_PROWPI002_**. Some of these parametric tables will be historic data   

- **_Adventure Works Cycles, Inc._** provided us, in the DB, **_dimension tables (Dim prefix)_** and **_fact tables (fact prefix)_**  

- They also need the following transformations:  

  1. Each table will be a different **_.KTR_** file, just as we will do in our **_PROWPI001 raw_**  

  2. All **_country data_** will be transformed to **_iso3 standard_** adopted in **_PROWPI001_** (**_more efficient and standard_**)  

  3. **_All other geographic data will be replaced_** by standard names and geographic coordinates, and nothing else  

  4. **_Each parametric table_** will be a different **_.KTR_** file, just as DB tables  

  5. **_All multilingual references will be removed from the DB_** for two reasons:  
    5.1. They will be external resources to the transactional applications, therefore, they must not be in the DB  
    5.2. In a DS or BI application, they are not required  

  6. For the same reasons, **_binary fields (such as images) will be removed from the DB_**  

- **_PROWPI002 will focus on obtaining the productivity metrics of the Sales Dept. (Sales Department)_**, which will be able to obtain **_KPI (Key Performance Indicatos)_** from the **_HR Dept. (Human Resources Department_**)  

- **_Sales Dept._** of **_Adventure Works Cycles, Inc._** commits to transfer, **_quickly and with absolute transparency_**, the **_data necessary to generate historical_** parametric data

- **_HR Dept._** of **_Adventure Works Cycles, Inc._** undertakes to transfer, **_quickly and with absolute transparency_**, the **_data necessary and metrics desired for the control of the productivity of the Sales Dept._**  

- The **_Adventure Works Cycles, Inc. Management_** agrees t**_o provide the necessary feedback_**, to obtain the best information and **_UX (User eXperience)_** of the final **_BSC_**. **_This will be done, as many times as it goes off_**  

- Meetings (in person or by **_Microsoft Teams_**), between **_Adventure Works Cycles, Inc._**, and **_3DoWoCo_**, including to concerned Managers or employees    

[Back to Table of contents :arrow_double_up:](../README.md)

#### **_Goals_**  

**_PROWPI001 ETL (from [PROWPI001](https://github.com/ddasilva64/MTDPDN23001esp/blob/master/proyectos/PROWPI001.ipynb) data sources)_**  

It will generate, and check **_QA_** of the next staging tables (**_Postgre SQL_**):  

  1. **_Countries_** (dimension and fact table)  
  2. **_Metadata_** (metadata table)  

**_Atention!_**: While the importance of metadata cannot be overstated, the reason to use it is to help drive reporting accuracy, validate data transformation, and ensure calculation accuracy. Metadata also imposes the definition of terms such as indicators, standards, etc. In the development of the DWH, metadata appears, and with it arises the need to create a table with this content  

**_PROWPI002 ETL (from AdventureWorksDW2022 DB)_**  

It will generate, and check **_QA_** of the next staging clean dimension tables (**_Postgre SQL_**):  

  1. **_Dates_**  
  2. **_Promotions_**  
  3. **_Currencies_**  
  4. **_Customers_**  
  5. **_Geographyc_** (main geographyc data will be in **_PROWPI001 ETL_**)  
  6. **_Sales_**  
  7. **_Products_**  
  8. **_Promotions_**  
  9. **_Employees_**  
  10. **_Resellers_**  

It will generate, and check **_QA_** of the next staging clean fact tables (**_Postgre SQL_**):   

  1. **_Internet sales_**  
  2. **_Reseller sales_**  
  3. **_Product inventory_**  

**_Notice_**: **_Adventure Works Cycles, Inc._** has decided that multilingual capabilities into the DB (in general) are pointless. In addition, specifically for DS, and BI, since the users are internal and at managerial level, they must have worldwide pro knowledge of English. Also, binary picture fields are deprecated in DB  

[Back to Table of contents :arrow_double_up:](../README.md)

### **_Value proposition_**  

#### **_Return on Investment (ROI) of the proposed solution_**

- We calculate the profit with **_cost/hour of development_** in the two systems. **_Errors_** are valued as a **_factor of 2.5 over the above_**  
- **_ROI_** is calculated by **_comparing the profit_** of the new system **_and the cost of the new system_** (our ETL solution in **_PDI_**)  

#### **_The improved service delivery and customer experience_**  

Competence in this business model is very hard, which is why **_our client needs very agile decision-making systems_**  

To avoid confusion, **_this system will not have as its objective_**:  

- **_Be the basis of presentations_**  
- **_Be an automated system to generate reports_**  

Although, the above may be a secondary objective  

[Back to Table of contents :arrow_double_up:](../README.md)

### **_Conclusion_**

The new system:  

- **_Join data that was not, or did not exist_**
- It is **_much more efficient_** than the previous system  
- **_It allows to make decisions_** and not make presentations or automate reports (only)  

By the way, as the British adage goes, "**_the proof of the pudding is in the eating!. That is, let's go_**"  

[Back to Table of contents :arrow_double_up:](../README.md)