## DE (Data Engineering)

### **_Prework_**

1. **_PDI_** settings
   1. **_Java JDK_**: Download and install the 64-bit edition of **_Java JDK 1.8_** or later.
   2. Define **_JAVA\_HOME_** environment variable. **_PDI_** will use the **_JAVA\_HOME_** environment variable for a **_JDK_** to run all of the components.

2. Download **_[AdventureWorksDW2022](https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksDW2022.bak)_** backup and restore it in **_SQL Server Express_**.

3. **_SQL Server Connection Settings in PDI_**
   1. **_Name_**: AdventureWorks
   2. **_Host name_**: [sql_server_name]\SQLEXPRESS
   3. **_DB name_**: AdventureWorksDW2022
   4. **_Instance name_**: SQLEXPRESS
   5. **_Port_**: 1433
   6. **_User name_**: [user_name]\XXXXX
   7. **_Password_**: [none]
   8. **_Use integrated security_**: Yes
   9. **_Native JDBC_**: True

   <p><br></p>

   ![Test connection to SQL Server in PDI](https://i.imgur.com/xAfQCsH.png)  
   _Test connection to SQL Server in PDI_

   <p><br></p>

   10. Additional settings (**_JDBC driver_**)
       1. Configure **_JDBC driver_**
          1. Copy the driver “sqljdbc.jar” to "[data-integration_home]\lib\JDBC".
          2. Restart **_PDI_** if it was already running.

       2. Enable standard authentication in **_SQL Server_**: This step is carried out so that when we try to establish the connection with the database, it does not throw the following error: User [user] login error. Reason: It is not associated with a trusted **_SQL Server_** connection.

          1. Open **_SQL Server Enterprise Manager_**.
          2. Right-click on the server, in our case: (local).
          3. Select the "Properties" option.
          4. Go to the "Security" tab and select the "SQL Server and Windows" option.
          5. Press the "OK" button and restart the service.

4. **_Postgre SQL_** Connection Settings in **_PDI_**
   1. **_Name_**: datawarehouse_target
   2. **_Host name_**: localhost
   3. **_DB name_**: datawarehouse
   4. **_Port_**: 5433 (5432 busy)
   5. **_User name_**: postgres
   6. **_Password_**: [password]
   7. **_Native JDBC_**: True

<p><br></p>

![Test connection to Postgre SQL in PDI](https://i.imgur.com/cMX1qei.png)  
_Test connection to Postgre SQL in PDI_  

<p><br></p> 

[ChatGPT usage](../CHATGPT_USAGE.md)  

<p><br></p>

[Back to Table of contents :arrow_double_up:](../README.md)