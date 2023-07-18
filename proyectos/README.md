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
          - [DimCountries.XML](docs/DimCountries.XML.md)
          - [Demography.XML](docs/Demography.XML.md)  
          - [Ecology.XML](docs/Ecology.XML.md)  
          - [Economy.XML](docs/Economy.XML.md)  
          - [Education.XML](docs/Education.XML.md)  
          - [Health.XML](docs/Health.XML.md)  
          - [FactCountries](docs/FactCountries.md)  
          - [Metadata](docs/prowpi001_Metadata.md)  
        - [PROWPI002 ETL (AdventureWorksDW2022 DB)](docs/prowpi002_etl_adventureworksdw2022_db.md)  
          - **_SQL Server ERDs_**  
          1. [Source DB's ERD](docs/Source_SQL_Server_DB.md)  
          2. [Internet Sales Subsystem ERD](docs/Internet_Sales_Subsystem_ERD.md)  
          - **_SQL Server tables_**  
          1. [dbo.DimCurrency](docs/dbo.DimCurrency.md)  
          2. [dbo.DimCustomer](docs/dbo.DimCustomer.md)    
          3. [dbo.DimDate -deprecated-](docs/dbo.DimDate.md)  
          4. [dbo.DimEmployee](docs/dbo.DimEmployee.md)  
          5. [dbo.DimGeography](docs/dbo.DimGeography.md)    
          6. [dbo.DimProduct](docs/dbo.DimProduct.md)  
          7. [dbo.DimProductCategory](docs/dbo.DimProductCategory.md)  
          8. [dbo.DimProductSubcategory](docs/dbo.DimProductSubcategory.md)  
          9. [dbo.DimPromotion](docs/dbo.DimPromotion.md)  
          10. [dbo.DimReseller](docs/dbo.DimReseller.md)  
          11. [dbo.DimSalesTerritory](docs/dbo.DimSalesTerritory.md)  
          12. [dbo.FactInternetSales](docs/dbo.FactInternetSales.md)  
          13. [dbo.FactInternetSalesReason](docs/dbo.FactInternetSalesReason.md)  
          14. [dbo.FactProductInventory](docs/dbo.FactProductInventory.md)  
          15. [dbo.FactResellerSales](docs/dbo.FactResellerSales.md)  
          - **_Metadata_**
          1. [DimCurrencies Metadata](docs/DimCurrencies_Metadata.md)  
          2. [DimCustomer Metadata](docs/DimCustomer_Metadata.md)  
          3. [DimDate Metadata](docs/DimDate_Metadata.md)  
          4. [DimEmployees Metadata](docs/DimEmployees_Metadata.md)  
          5. [DimGeography Metadata](docs/DimGeography_Metadata.md) 
          6. [DimProduct Metadata](docs/DimProduct_Metadata.md)  
          7. [DimProductCategory Metadata](docs/DimProductCategory_Metadata.md)  
          8. [DimProductSubcategory Metadata](docs/DimProductSubcategory_Metadata.md)  
          9. [DimPromotion Metadata](docs/DimPromotion_Metadata.md)  
          10. [DimReseller Metadata](docs/DimReseller_Metadata.md)  
          11. [DimSalesTerritory Metadata](docs/DimSalesTerritory_Metadata.md)  
          12. [FactInternetSales Metadata](docs/FactInternetSales_Metadata.md)  
          13. [FactInternetSalesReason Metadata](docs/FactInternetSalesReason_Metadata.md)  
          14. [FactProductInventory Metadata](docs/FactProductInventory_Metadata.md)  
          15. [FactResellerSales  Metadata](docs/FactResellerSales_Metadata.md)  
          - **_Postgre SQL ERDs_**  
          1. [Internet Sales Subsystem - DWH - ERD](docs/ISS_DWH_ERD.md)  
          2. [Additional tables - DWH - ERD](https://i.imgur.com/Hx93TgT.png)    
        - [PROWPI002 ETL (parametric data)](docs/prowpi002_etl_parametric_data.md)  
          1. [Foreign Exchange](docs/factexchanges.md)
- [DWH (Data Warehouse)](docs/dwh.md)
- [Metrics](docs/metrics.md)
- [UX (User Experience)](docs/ux.md)
- [Picture list](docs/pictures.md)
- [Storytelling notice](#storytelling-notice)
- [Author](#author)
- [License](#license)
- [eof](#eof)
<!-- /TOC -->

## Storytelling notice  

All dataset sources are licensed in the public domain, but **_Adventure Works Cycles, Inc._**, and **_AdventureWorksDW2022_** are, both of them, fiction created by Microsoft Corp. It's a narrative to build project storytelling, containing data solutions, which is based on the author experience or knowledge  

**_Disclaimer!_**: **_Adventure Works Cycles, Inc._** and **_3DoWoCo_** are a fiction. Any similarities to companies living or dead, or something else is purely coincidental  

Many dataset sources are based on [**_PROWPI001_**](https://github.com/ddasilva64/MTDPDN23001esp/blob/master/proyectos/PROWPI001.ipynb) project, built by "Data Manipulation and Analysis with Pandas and Python" Platzi course. The **_ETL_** were made, in this project, in **_Python_**, now we built **_ETL_** with **_PDI_** exclusively  

The present project **_PROWPI002_** is an exercise for "ETL with Python and Pentaho fundamentals" Platzi course  

Anyway, what can we get from data in this project? It can happen, as Forrest Gump said:  
> **_"Life is like a box of chocolates. You never know what you gonna get"_**  

That's all folks!!!  

[Back to Table of contents :arrow_double_up:](#table-of-contents)

## Author  

![Daniel da Silva Jarque (author)](https://i.imgur.com/2i0LPvN.png)

[Professional portfolio (Spanish/English/Catalan) - GitHub -](https://github.com/ddasilva64)\
[Professional profile (English) - LinkedIn -](https://linkedin.com/in/daniel-da-silva-jarque-863705206)

[Back to Table of contents :arrow_double_up:](#table-of-contents)

##  License  

[This project is under MIT license](LICENSE.md)

## eof

[Back to Table of contents :arrow_double_up:](#table-of-contents)

end of file