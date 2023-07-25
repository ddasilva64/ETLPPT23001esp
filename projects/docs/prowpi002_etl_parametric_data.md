## DE (Data Engineering)  

### **_Source tables_**  

#### **_PROWPI002 ETL (parametric data)_**  

**_Notice_**: As we have said repeatedly, parametric data has two characteristics  
1. **_They are not contained in the DWH data sources_**. They can even add features or create aggregations that don't exist at the source  
2. They make data static data in data sources vary over time, that is, **_they convert static data into historical_**, because the source applications do not allow it  

By the way, we always build parametric data according to the needs of our clients  

[Back to Table of contents :arrow_double_up:](../README.md)