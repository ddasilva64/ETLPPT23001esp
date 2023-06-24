# Poject: PROWPI002 (Project: World Population Indicators #002)

<!-- TOC -->
## Table of contents

<a id="table-of-contents"></a>

- [Executive Summary](docs/executive_summary.md)
    - [Business](docs/executive_summary.md#business)
    - [Project](docs/executive_summary.md#project)
    - [3DoWoCo contact](docs/executive_summary.md#3dowoco-contact)
    - [Client pains](docs/executive_summary.md#client-pains)
    - [Opportunity](docs/executive_summary.md#opportunity)
    - [Solution](docs/executive_summary.md#solution)
        - [Steps](docs/executive_summary.md#steps)
        - [Goals](docs/executive_summary.md#goals)
    - [Value proposition](docs/executive_summary.md#value-proposition)  
        - [Return on Investment (ROI) of the proposed solution](docs/executive_summary.md#return-on-investment-roi-of-the-proposed-solution)
        - [The improved service delivery and customer experience](docs/executive_summary.md#the-improved-service-delivery-and-customer-experience)  
    - [Conclusion](docs/executive_summary.md#conclusion)  
- [DE (Data Engineering)](#poject-prowpi002-project-world-population-indicators-002)  
    - [Prework](docs/prework.md)  
    - [Source tables](#poject-prowpi002-project-world-population-indicators-002)  
        - [PROWPI001 ETL](docs/prowpi001_etl.md)  
        - [PROWPI002 ETL (AdventureWorksDW2022 DB)](docs/prowpi002_etl_adventureworksdw2022_db.md)  
          - [Source DB's ERD (SQL Server)](docs/Source_SQL_Server_DB.md)  
          - [Internet Sales Subsystem ERD](docs/Internet_Sales_Subsystem_ERD.md)  
          - [dbo.FactInternetSales](docs/dbo.FactInternetSales.md)  
          - [dbo.DimDate](docs/dbo.DimDate.md)  
          - [dbo.DimPromotion](docs/dbo.DimPromotion.md)  
          - [dbo.DimCurrency](docs/bo.DimCurrency.md)  
          - [dbo.DimCustomer](docs/dbo.DimCustomer.md)  
          - [dbo.DimGeography](docs/dbo.DimGeography.md)    
          - [dbo.DimSalesTerritory](docs/dbo.DimSalesTerritory.md)  
          - [dbo.DimProduct](docs/dbo.DimProduct.md)  
          - [dbo.DimProductSubcategory](docs/dbo.DimProductSubcategory.md)  
          - [dbo.DimProductCategory](docs/dbo.DimProductCategory.md)  
          - [dbo.FactInternetSalesReason](docs/dbo.FactInternetSalesReason.md)  
          - [dbo.FactResellerSales](docs/dbo.FactResellerSales.md)  
          - [dbo.FactProductInventory](docs/dbo.FactProductInventory.md)  
          - [dbo.DimEmployee](docs/dbo.DimEmployee.md)  
          - [dbo.DimReseller](docs/bo.DimReseller.md)  
        - [PROWPI002 ETL (parametric data)](docs/prowpi002_etl_parametric_data.md)  
- [DWH (Data Warehouse)](docs/dwh.md)
- [Metrics](docs/metrics.md)
- [UX (User Experience)](docs/ux.md)
- [Picture list](docs/pictures.md)
- [Storytelling notice](#storytelling-notice)
- [Author](#author)
- [eof](#eof)
<!-- /TOC -->

## Storytelling notice  

All dataset sources are licensed in the public domain, but **_Adventure Works Cycles, Inc._**, and **_AdventureWorksDW2022_** are, both of them, fiction created by Microsoft Corp. It's a narrative to build project storytelling, containing data solutions, which the author sees in his lifetime professional  

**_Disclaimer!_**: **_Adventure Works Cycles, Inc._** and **_3DoWoCo_** are a fiction. Any similarities to companies living or dead, or something else is purely coincidental  

Many dataset sources are based on [**_PROWPI001_**](https://github.com/ddasilva64/MTDPDN23001esp/blob/master/proyectos/PROWPI001.ipynb) project, built by "Data Manipulation and Analysis with Pandas and Python" Platzi course. The **_ETL_** were made, in this project, in **_Python_**, now we built **_ETL_** with **_PDI_** exclusively  

The present project **_PROWPI002_** is an exercise for "ETL with Python and Pentaho fundamentals" Platzi course, anyway  

Anyway, what can we get from data in this project? It can happen, as Forrest Gump said:  
> **_"Life is like a box of chocolates. You never know what you gonna get"_**  

That's all folks!!!  

[Back to Table of contents :arrow_double_up:](#table-of-contents)

## Author  

![Daniel da Silva Jarque (author)](https://i.imgur.com/2i0LPvN.png)

[Professional portfolio (Spanish/English/Catalan) - GitHub -](https://github.com/ddasilva64)\
[Professional profile (English) - LinkedIn -](https://linkedin.com/in/daniel-da-silva-jarque-863705206)

[Back to Table of contents :arrow_double_up:](#table-of-contents)

## eof

[Back to Table of contents :arrow_double_up:](#table-of-contents)

end of file