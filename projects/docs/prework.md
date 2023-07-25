## DE (Data Engineering)  

### **_Prework_**  

1. PDI settings
1.1. **_Java JDK_**:Download and install the 64-bit edition of **_Java JDK 1.8_** or later  
1.2. Define **_JAVA\_HOME_** environment variable. PDI will use the **_JAVA\_HOME_** environment variable for a **_JDK_** to run all of the components  

2. Download **_[AventureWorksDW2022](https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksDW2022.bak)_** backup, and restore in **_SQL Server Express_**  

3. **_SQL Server conection settings in PDI_**  
3.1.**_ Name_**: AdventureWorks  
3.2. **_Host name_**: [sql_server_name]\SQLEXPRESS  
3.3. **_DB name_**: AdventureWorksDW2022  
3.4. **_Instance name_**: SQLEXPRESS  
3.5. **_Port_**: 1433  
3.6. **_User name_**: [user_name]\Daniel  
3.7. **_Password_**: [none]  
3.8. **_Use integrated security_**: Yes  
3.9.**_Native JDBC_**: True  

![Test connection to SQL Server in PDI](https://i.imgur.com/xAfQCsH.png)  
_Test connection to SQL Server in PDI_  

3.a. Additonal settings (JDBC driver)

3.a.1. Configure JDBC driver  

3.a.1.1. Copy the driver “sqljdbc.jar” in "[data-integration_home]\lib\JDBC"  
3.a.1.2. Restart Pentaho Data Integration if it was already running  

3.a.2. Enable standard authentication in SQL Server: This step is carried out so that when we try to establish the connection with the database it does not throw the following error: User [user] login error. Reason: It is not associated with a trusted SQL Server connection  

3.a.2.1. Open **_SQL Server Enterprise Manager_**  
3.a.2.2. Right click on the server, in our case: (local)  
3.a.2.3. Select the "Properties" option  
3.a.2.4. Go to the "Security" tab and select the "SQL Server and Windows" option  
3.a.2.5. Press the "OK" button and restart the service  

4. Postgre SQL conection settings in PDI  
4.1.**_ Name_**: datawarehouse_target  
4.2. **_Host name_**: localhost  
4.3. **_DB name_**: datawarehouse  
4.4. **_Port_**: 5433 (5432 busy)  
4.5. **_User name_**: postgres  
4.6. **_Password_**: [password]  
3.7.**_Native JDBC_**: True  

![Test connection to Postgre SQL in PDI](https://i.imgur.com/cMX1qei.png)  
_Test connection to Postgre SQL in PDI_  

[Back to Table of contents :arrow_double_up:](../README.md)