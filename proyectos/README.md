# Poject: PROWPI002 (Project: World Population Indicators #002)

<!-- TOC -->
## Table of contents

<a id="table-of-contents"></a>

- [Executive Summary](#executive-summary)
    - [Business](#business)
    - [Project](#project)
    - [Contact](#contact)
    - [Problem of our client](#problem-of-our-client)
    - [Opportunity](#opportunity)
    - [Solution](#solution)
        - [Steps or methods](#steps-or-methods)
        - [Goals and objectives](#goals-and-objectives)
    - [Value proposition](#value-proposition)  
        - [Return on Investment (ROI) of the proposed solution](#return-on-investment-roi-of-the-proposed-solution)
        - [The improved service delivery and customer experience](#the-improved-service-delivery-and-customer-experience)  
    - [Conclusion](#conclusion)  
- [DE (Data Engineering)](#de)
- [DWH (Data Warehouse)](#dwh)
- [UX (User Experience)](#ux)
- [Data set sources](#data-set-sources)
- [Picture list](#picture-list)
- [Storytelling notice](#storytelling-notice)
- [Author](#author)
- [eof](#eof)
<!-- /TOC -->
---

## Executive Summary  

### **_Business_**  

We are 3DoWoCo (**_Data-Driven - Don't Worry Company, Inc._**), a **_Data Science_** company. Hereinafter in this document: 3DoWoCo = **_"3 D O"_**   

![#pic001](https://i.imgur.com/0OZ9JPU.jpg "DWCO logo")  
_DWCO logo_  

### **_Project_**  

**_PROWPI002_** (**_based on_** our well-known standard project, **_PROWPI001_**)  

Our client is **_Drinking Water for Planet Earth Company, Inc._** (**_DWPECO_**), which is one of the leading companies in the sector of obtaining and recirculating drinking water in desert areas, at risk of desertification, as well as in sea water purification  

![#pic002](https://i.imgur.com/bFZlNAi.png "DWPECO logo")  
_DWPECO logo_  

The guiding principle of its activity, unlike traditional water purification techniques, such as urban water purification, desalination using seawater reverse osmosis techniques, etc., or the purification of water resources, **_DWPECO_** achieves, with the minimum energy input, maximum water performance, through (generally) the use of renewable energy  

It could be said that exploiting all non-traditional resources, such as desalination of seawater or obtaining drinking water, is similar to the technologies used on the Moon and Mars and will soon be applied to other bodies in our Star System (other satellites, asteroids, etc.)  

The competitive difference, in the case of our client, is that it maximizes performance per unit of energy (Joule) invested. In this way, it manages to convert deserts and areas of extreme poverty on the Planet Earth into green areas  

In essence, **_DWPECO_** does not manufacture the technology but rather distributes and performs regular maintenance and user training  

This project is the construction of an **_ETL_** process (in **_PDI (Pentaho Data Integrator)_**), to feed a **_DWH (Data Warehouse)_** that will be the source to feed the decision-making systems on operational productivity, in a **_BI (Business Intelligence)_** system, as well as **_PBI (Power BI)_**, among other tools  

[Back to Table of contents :arrow_double_up:](#table-of-contents)

### **_Contact_**

email: its.a@joke.com  
[URL](htpps://maryhadalittlelambbullshit.htm)

[Back to Table of contents :arrow_double_up:](#table-of-contents)

### **_Problem of our client_**  

The problem with **_DWPECO_** is that its legacy system (which cannot, and should not be changed), because it works perfectly, for the purpose it was implemented, it's built on the tech stack:
- Java  
- SQL (Oracle), with non-normalized tables (because they're inherited from other non-RDB systems)  
- Batch processes for obtaining and disseminating (by email) information  

This system offered the following gaps, in the past:  

- The **_creation of tables and views is chaotic_** (names, locations, etc.)
- **_SQL quickly tends to be complicated and difficult to maintain_**. In addition, the volatility of the IT staff, it makes tables and views very difficult to maintain as well  
- The **_creation of automated systems_**, despite having a batch process standard, has proven to be **_inefficient, attending to the needs of DS (Data Science)_**  
- Also, **_IT staff_** is very professional and efficient, but too much especialized in their technology stack and **_resistance to change_** is expected  

[Back to Table of contents :arrow_double_up:](#table-of-contents)

### **_Opportunity_**  

KIS = Kepp It Simple. That is,

- **_non-data-driven companies = dead companies_**

What else?

- DS is not a luxury, but it is essential in today's business world
- **_ETL is like 80% not visble of an iceberg, but also its essential_**

![#pic003](https://i.imgur.com/arHXGzQ.png, "Iceberg")  
_DS is like an iceberg (80% not visible)_  

Understood?  

[Back to Table of contents :arrow_double_up:](#table-of-contents)

### **_Solution_**  

#### **_Steps or methods_**  

- ETL from **_PROWPI001_**, will be ported from **_Python ETL_** to **_PDI ETL_**  
- The operational data is in **_Oracle_**, but we will have to complete it with **_Excel_** tables. These tables will be part of **_PROWPI002_**  
- Some data will be exported from an HR (Human Resources) department in **_.CSV_** format. These files will be part of **_PROWPI002_**  
- Some data will be exported from the Maintenance department in **_.JSON_** format. These files will be part of **_PROWPI002_**  

[Back to Table of contents :arrow_double_up:](#table-of-contents)

#### **_Goals and objectives_**  

- **_ETL of PROWPI001_** and the same part in **_ETL of PROWPI002_**, must have to be **_the same result_**  
- The DWH (target) must have a **_star_** or **_snowflake schema_**  
- The **_Power BI_** data model will have **_many calculated fields_**, to avoid this, **_they will be fields of the final fact table in the DWH_**  
- The **_target must be reusable between different final systems_**, that is, they must incorporate metrics and measures that were previously in the BI  
- Some **_key data in Oracle_** data sources **_cannot change on the source_**, however it must change over time on the target system. With this, **_we must implement a system that includes this need in the DWH_** and this system must incorporate intelligence  
- The **_user acceptance test will be done on 2021 data_**. This document will be based on them  
- The **_system must be scalable_**  
- The **_DWH (target), will be mounted in Postgre SQL, freeing the Oracle DB_** from this  
- We will do the **_tests with local files and BD_**  

[Back to Table of contents :arrow_double_up:](#table-of-contents)

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

[Back to Table of contents :arrow_double_up:](#table-of-contents)

### **_Conclusion_**

The new system:  

- **_Join data that was not, or did not exist_**
- It is **_much more efficient_** than the previous system  
- **_It allows to make decisions_** and not make presentations or automate reports (only)  

By the way, as the British adage goes, "**_the proof of the pudding is in the eating!. That is, let's go_**"  

[Back to Table of contents :arrow_double_up:](#table-of-contents)

---

## DE  

### **_Prework_**

1. Conversion from **_ETL of PROWPI001_** (**_Python_**) to **_ETL of PROWPI001_** (**_PDI_**), and test results  

Datasets

| **_Kaggle, World Bank Indicators Collection_** | Format | Convert to |
| :--------------------------------------------- | :----- | :--------- |
| PopulationDataWorldBank                        | .XLSX  | .XLS       |


[Back to Table of contents :arrow_double_up:](#table-of-contents)

---

## DWH  

[Back to Table of contents :arrow_double_up:](#table-of-contents)

---

## UX  

[Back to Table of contents :arrow_double_up:](#table-of-contents)  

---

## Data set sources  

- Dataset #001: Based on [PROWPI001](https://github.com/ddasilva64/MTDPDN23001esp/tree/master/proyectos)  

[Back to Table of contents :arrow_double_up:](#table-of-contents)

---

## Picture list  

- **_#pic001_**: [Free pic "Matriz, Red y El intercambio de datos" in pixabay](https://pixabay.com/es/illustrations/matriz-red-el-intercambio-de-datos-1027571/), free pic by [**_Peggy\_Marco_**](https://pixabay.com/es/users/peggy_marco-1553824/)

- **_#pic002_**: ["Reciclar, Verde y Tierra" in pixabay](https://pixabay.com/es/vectors/reciclar-verde-tierra-29227/), free pic by [**_Clker-Free-Vector-Images_**](https://pixabay.com/es/users/clker-free-vector-images-3736/)

- **_#pic003_**: ["Iceberg, Encima y Agua" in pixabay](https://pixabay.com/es/illustrations/iceberg-encima-agua-blanco-fr%c3%ado-3273216/), free pic by [**_MoteOo_**](https://pixabay.com/es/users/moteoo-466065/)

[Back to Table of contents :arrow_double_up:](#table-of-contents)

---

## Storytelling notice  

All dataset sources are licensed in the public domain, but Drinking Water for Planet Earth Company, Inc. (**_DWPECO_**) is an invention (the same as **_3DoWoCo_**). It's a narrative to build project storytelling, containing data solutions, which the author sees in his lifetime professional  

**_Disclaimer!_**: DWPECO and 3DoWoCo are a fiction. Any similarities to companies living or dead, or something else is purely coincidental  

Many dataset sources are based on [PROWPI001]() project, built by xxxx Platzi course. The ETL were made, in this project, in **_Python_**, now we built ETL with **_PDI_** exclusively  

The present project **_PROWPI002_** is an exercise for xxx Platzi course, anyway  

By the way, today May 2023, the human being has shown that he can find, but not take advantage of, water, which is almost never found in a liquid state, in many bodies of our Star System (Moon, Mars, asteroids, and other satellites)  

Anyway, what can we get from data in this project? It can happen, as Forrest Gump said:  
> **_"Life is like a box of chocolates. You never know what you gonna get"_**  

That's all folks!!!  

[Back to Table of contents :arrow_double_up:](#table-of-contents)

---

## Author  

![Daniel da Silva Jarque (author)](https://i.imgur.com/2i0LPvN.png)

[Professional portfolio (Spanish/English/Catalan) - GitHub -](https://github.com/ddasilva64)\
[Professional profile (English) - LinkedIn -](https://linkedin.com/in/daniel-da-silva-jarque-863705206)

[Back to Table of contents :arrow_double_up:](#table-of-contents)

---

## eof

[Back to Table of contents :arrow_double_up:](#table-of-contents)

end of file