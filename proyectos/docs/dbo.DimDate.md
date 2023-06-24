## **_dbo.DimDate (SQL Server table)_** (deprecated)  

### Columns   

| Key	| Name                  | Data type    | Not null | Attributes | References            | Description   |
| :-: | :-------------------- | :----------: | :------: | :--------- | :-------------------- | :------------ |
| 1   | DateKey               | int          | X        |            |                       | PK            |
| 2   | FullDateAlternateKey  | date         | X        |            |                       |               |
| 3   | DayNumberOfWeek       | tinyint      | X        |            |                       |               |
| 4   | EnglishDayNameOfWeek  | nvarchar(10) | X        |            |                       |               |
| 5   | SpanishDayNameOfWeek  | nvarchar(10) | X        |            |                       |               |
| 6   | FrenchDayNameOfWeek   | nvarchar(10) | X        |            |                       |               |
| 7   | DayNumberOfMonth      | tinyint      | X        |            |                       |               |
| 8   | DayNumberOfYear       | smallint     | X        |            |                       |               |
| 9   | WeekNumberOfYear      | tinyint      | X        |            |                       |               |
| 10  | EnglishMonthName      | nvarchar(10) | X        |            |                       |               |
| 11  | SpanishMonthName      | nvarchar(10) | X        |            |                       |               |
| 12  | FrenchMonthName       | nvarchar(10) | X        |            |                       |               |
| 13  | MonthNumberOfYear     | tinyint      | X        |            |                       |               |
| 14  | CalendarQuarter       | tinyint      | X        |            |                       |               |
| 15  | CalendarYear          | smallint     | X        |            |                       |               |	
| 16  | CalendarSemester      | tinyint      | X        |            |                       |               |
| 17  | FiscalQuarter         | tinyint      | X        |            |                       |               |
| 18  | FiscalYear            | smallint     | X        |            |                       |               |
| 19  | FiscalSemester        | tinyint      | X        |            |                       |               |

**_Warning_**!: This table is deprecated, because in **_Power BI_** (e.g.), the **_time intelligence functions_** provide more powerful functions. In other **_DS_** systems, such as those based on Python, we must do the same ourselves. We will not create this entity in the **_DWH_**

   <p><br></p>  

![SQL Server source in SQL Server Management studio](https://i.imgur.com/4LEOXd3.png)  
_SQL Server source in SQL Server Management studio_  

[PROWPI002 ETL (AdventureWorksDW2022 DB) :arrow_up:](prowpi002_etl_adventureworksdw2022_db.md)  

[Back to Table of contents :arrow_double_up:](../README.md)