## DWH (Data Warehouse)  

### **_DWH testing_**  

The first step after **_ETL_**, is the **_DWH_** test, and if we identify any issues, we will repeat ETL until we fix it  

This is the process of creating and executing end-to-end test cases, to ensure that data in the **_DWH_** has integrity and is reliable, accurate, and consistent with the organization's data framework  

### **_Testing templates_**  

#### **_ETL results testing_**  

**_Table name_**:  
**_Data Mart name_**:  

| Test                                                                                  | Check | Bug                               | Fix                               |
| :------------------------------------------------------------------------------------ | :---: | :-------------------------------- | :-------------------------------- |
| Metadata is completed (no one field empty)                                            |       |                                   |                                   |
| No repeating metadata content                                                         |       |                                   |                                   |
| Primary Keys are well defined                                                         |       |                                   |                                   |
| Foreign keys are well defined                                                         |       |                                   |                                   |


#### **_DWH testing checklist_**  

**_Table name_**:  
**_Data Mart name_**:  

| Type            | Test                                                                | Check | Bug                               | Fix                               |
| :-------------: | :------------------------------------------------------------------ | :---: | :-------------------------------- | :-------------------------------- |
| Completeness    | number of records in data sources = number of records in DWH table  |       |                                   |                                   |
|                 | data loaded into each DW field = data loaded into each source field |       |                                   |                                   |
| Quality         | type of fields in data sources = type of fields in DWH table        |       |                                   |                                   |
| User Acceptance | data into DWH is complete and consistent with business rules        |       |                                   |                                   |
|                 | all is OK                                                           |       |                                   |                                   |

#### **_Target system testing checklist_**  

**_Table name_**:  
**_Data Mart name_**:  

| Type            | Test                                                                | Check | Bug                               | Fix                               |
| :-------------: | :------------------------------------------------------------------ | :---: | :-------------------------------- | :-------------------------------- |
| Metrics         | all metrics and KPI desired can be built with DWH data              |       |                                   |                                   |

### Tests

### [**_Test #001_**](tests/#001)

[Back to Table of contents :arrow_double_up:](../README.md)