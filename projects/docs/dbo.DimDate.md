## **_dbo.DimDate (SQL Server)_** (deprecated)  

### Columns   

| Key	| Name                  | Data type    | Not null | Attributes | References  | Description  | Metadata |
| :-: | :-------------------- | :----------: | :------: | :--------- | :---------- | :----------- | :------: |
| 1   | DateKey               | int          | X        |            |             | PK           |          |
| 2   | FullDateAlternateKey  | date         | X        |            |             |              | m123     |
| 3   | DayNumberOfWeek       | tinyint      | X        |            |             |              | m124     |
| 4   | EnglishDayNameOfWeek  | nvarchar(10) | X        |            |             |              | m125     |
| 5   | SpanishDayNameOfWeek  | nvarchar(10) | X        |            |             |              | deprecated |
| 6   | FrenchDayNameOfWeek   | nvarchar(10) | X        |            |             |              | deprecated |
| 7   | DayNumberOfMonth      | tinyint      | X        |            |             |              | m126     |
| 8   | DayNumberOfYear       | smallint     | X        |            |             |              | m127     |
| 9   | WeekNumberOfYear      | tinyint      | X        |            |             |              | m128     |
| 10  | EnglishMonthName      | nvarchar(10) | X        |            |             |              | m129     |
| 11  | SpanishMonthName      | nvarchar(10) | X        |            |             |              | deprecated |
| 12  | FrenchMonthName       | nvarchar(10) | X        |            |             |              | deprecated |
| 13  | MonthNumberOfYear     | tinyint      | X        |            |             |              | m130     |
| 14  | CalendarQuarter       | tinyint      | X        |            |             |              | m131     |
| 15  | CalendarYear          | smallint     | X        |            |             |              | m132     |
| 16  | CalendarSemester      | tinyint      | X        |            |             |              | m133     |
| 17  | FiscalQuarter         | tinyint      | X        |            |             |              | m134     |
| 18  | FiscalYear            | smallint     | X        |            |             |              | m135     |
| 19  | FiscalSemester        | tinyint      | X        |            |             |              | m136     |

<p><br></p> 

**_Warning_**: This table is deprecated because in **_PBI_** (e.g.), the **time intelligence functions** provide more powerful functions. In other **_DS_** systems, such as those based on **_Python_**, we must do the same ourselves. We will not create this entity in the **_DWH_**

<p><br></p>  

![SQL Server source in SQL Server Management studio](https://i.imgur.com/4LEOXd3.png)  
_SQL Server source in SQL Server Management studio_  

<p><br></p> 

[ChatGPT usage](../CHATGPT_USAGE.md)  

<p><br></p>

[PROWPI002 ETL (AdventureWorksDW2022 DB) :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)