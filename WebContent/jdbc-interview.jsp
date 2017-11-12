<%@include file="java-header.jsp"%>

<%@include file="jdbc-leftbar.jsp"%>
	<article>
	<div id="textbox">
  <p class="alignleft"><a href="core-java.jsp" class="previous">&laquo; Previous</a></p>
  <p class="alignright"><a href="history-of-java.jsp" class="next">Next &raquo;</a></p>
</div>
<p> <h1>JDBC Interview Questions</h1>
<p><br>Q: What is the JDBC?<br>
Ans: Java Database Connectivity (JDBC) is a standard Java API to interact with relational databases form Java. JDBC has set of classes and interfaces which can use from Java application and talk to database without learning RDBMS details and using Database Specific JDBC Drivers. <br>
<br>Q: What are the new features added to JDBC 4.0?<br>
Ans:The major features added in JDBC 4.0 include :<br>
1- Auto-loading of JDBC driver class<br>
2- Connection management enhancements<br>
3- Support for RowId SQL type<br>
4- DataSet implementation of SQL using Annotations<br>
5- SQL exception handling enhancements SQL XML support<br>
<br>Q: Explain Basic Steps in writing a Java program using JDBC?<br>
Ans:JDBC makes the interaction with RDBMS simple and intuitive. When a Java application needs to access database :<br>
Load the RDBMS specific JDBC driver because this driver actually communicates with the database (Incase of JDBC 4.0 this is automatically loaded).<br>
Open the connection to database which is then used to send SQL statements and get results back.<br>
Create JDBC Statement object. This object contains SQL query.<br>
Execute statement which returns resultset(s). ResultSet contains the tuples of database table as a result of SQL query.<br>
Process the result set.<br>
Close the connection.<br>
<br>Q: What are the main components of JDBC ?<br>
Ans: The life cycle of a servlet consists of the following phases:<br> DriverManager:<br> Manages a list of database drivers. Matches connection requests from the java application with the proper database driver using communication subprotocol. The first driver that recognizes a certain subprotocol under JDBC will be used to establish a database Connection. <br>
Driver:<br> The database communications link, handling all communication with the database. Normally, once the driver is loaded, the developer need not call it explicitly.
Connection :<br> Interface with all methods for contacting a database.The connection object represents communication context, i.e., all communication with database is through connection object only.
Statement :<br> Encapsulates an SQL statement which is passed to the database to be parsed, compiled, planned and executed.<br>
ResultSet:<br> The ResultSet represents set of rows retrieved due to query execution.<br>
<br>Q: How do I load a database driver with JDBC 4.0 / Java 6?<br>
Ans: Provided the JAR file containing the driver is properly configured, just place the JAR file in the classpath. Java developers NO longer need to explicitly load JDBC drivers using code like Class.forName() to register a JDBC driver.The DriverManager class takes care of this by automatically locating a suitable driver when the DriverManager.getConnection() method is called. This feature is backward-compatible, so no changes are needed to the existing JDBC code.
<br>Q: What is JDBC Driver interface?<br>
Ans: The JDBC Driver interface provides vendor-specific implementations of the abstract classes provided by the JDBC API. Each vendor driver must provide implementations of the java.sql.Connection,Statement,PreparedStatement, CallableStatement, ResultSet and Driver.<br>
<br>Q: What does the connection object represents?<br>
Ans: The connection object represents communication context, i.e., all communication with database is through connection object only.
<br>Q: What is Statement ?<br>
Ans: Statement acts like a vehicle through which SQL commands can be sent. Through the connection object we create statement kind of objects. Through the connection object we create statement kind of objects.
Statement stmt = conn.createStatement();
<br>Q: What is PreparedStatement?<br>
Ans: A prepared statement is an SQL statement that is precompiled by the database. Through precompilation, prepared statements improve the performance of SQL commands that are executed multiple times (given that the database supports prepared statements). Once compiled, prepared statements can be customized prior to each execution by altering predefined SQL parameters.
<br><br>Q: What are callable statements ?<br>
Ans: Callable statements are used from JDBC application to invoke stored procedures and functions.<br>
<br>Q: Does the JDBC-ODBC Bridge support multiple concurrent open statements per connection?<br>
Ans:No. You can open only one Statement object per connection when you are using the JDBC-ODBC Bridge.<br>
<br>Q: Which is the right type of driver to use and when?<br>
Ans: Type I driver is handy for prototyping Type III driver adds security, caching, and connection control Type III and Type IV drivers need no pre-installation<br>
<br>Q: What are the standard isolation levels defined by JDBC?<br>
Ans: The values are defined in the class java.sql.Connection and are:<br>
TRANSACTION_NONE<br>
TRANSACTION_READ_COMMITTED<br>
TRANSACTION_READ_UNCOMMITTED<br>
TRANSACTION_REPEATABLE_READ<br>
TRANSACTION_SERIALIZABLE<br>
<br>Q: What is resultset ?<br>
Ans: The ResultSet represents set of rows retrieved due to query execution.<br>
ResultSet rs = stmt.executeQuery(sqlQuery);<br>
<br>Q: What are the types of resultsets?<br>
Ans: The values are defined in the class java.sql.Connection and are:<br>
TYPE_FORWARD_ONLY specifies that a resultset is not scrollable, that is, rows within it can be advanced only in the forward direction.<br>
TYPE_SCROLL_INSENSITIVE specifies that a resultset is scrollable in either direction but is insensitive to changes committed by other transactions or other statements in the same transaction.
TYPE_SCROLL_SENSITIVE specifies that a resultset is scrollable in either direction and is affected by changes committed by other transactions or statements within the same transaction.
Note:<br> A TYPE_FORWARD_ONLY resultset is always insensitive.<br>
<br>Q: What is rowset?<br>
Ans: A RowSet is an object that encapsulates a set of rows from either Java Database Connectivity (JDBC) result sets or tabular data sources like a file or spreadsheet. RowSets support component-based development models like JavaBeans, with a standard set of properties and an event notification mechanism.
<br>Q: What are the different types of RowSet ?<br>
Ans: There are two types of RowSet are there. They are:<br>
Connected – A connected RowSet object connects to the database once and remains connected until the application terminates.
Disconnected – A disconnected RowSet object connects to the database, executes a query to retrieve the data from the database and then closes the connection. A program may change the data in a disconnected RowSet while it is disconnected. Modified data can be updated in the database after a disconnected RowSet reestablishes the connection with the database.
<br>Q: What is a DataSource?<br>
Ans: A DataSource object is the representation of a data source in the Java programming language. In basic terms,
A DataSource is a facility for storing data.
DataSource can be referenced by JNDI.
Data Source may point to RDBMS, file System , any DBMS etc..
<br>Q: What are the advantages of DataSource?<br>
Ans: The few advantages of data source are :<br>
1- An application does not need to hardcode driver information, as it does with the DriverManager.
2- The DataSource implementations can easily change the properties of data sources. For example:<br> There is no need to modify the application code when making changes to the database details.
3- The DataSource facility allows developers to implement a DataSource class to take advantage of features like connection pooling and distributed transactions.
What are the types of statements in JDBC?<br>
JDBC API has 3 Interfaces and their key features of these are as follows:<br>
Statement:<br> which is used to run simple SQL statements like select and update. Statement interfaces use for general-purpose access to your database. It is useful when you are using static SQL statements at runtime. The Statement interface cannot accept parameters.
Prepared Statement:<br> A SQL statement is pre-compiled and stored in a Prepared Statement object. It is used to run Pre compiled SQL. This object can then be used to efficiently execute this statement multiple times. The object of Prepared Statement class can be created using Connection.prepareStatement() method. This extends Statement interface.
Callable Statement:<br> This interface is used to execute the stored procedures. This extends Prepared Statement interface. The object of Callable Statement class can be created using Connection.prepareCall() method.
What causes No suitable driver error?<br>
"No suitable driver" is occurs during a call to the DriverManager.getConnection method, may be of any of the following reason:<br>
<br>&#9830;&nbsp;&nbsp;Due to failing to load the appropriate JDBC drivers before calling the getConnection method. 
<br>&#9830;&nbsp;&nbsp;It can be specifying an invalid JDBC URL, one that is not recognized by JDBC driver. 
<br>&#9830;&nbsp;&nbsp;This error can occur if one or more the shared libraries needed by the bridge cannot be loaded
What does setAutoCommit do?<br>
setAutoCommit() invoke the commit state query to the database. To perform batch updation we use the setAutoCommit() which enable us to execute more than one statement together, which in result minimize the database call and send all statement in one batch. 

setAutoCommit() allowed us to commit the transaction commit state manually the default values of the setAutoCommit() is true.
Why Prepared Statements are faster?<br>
Prepared execution is faster than direct execution for statements executed more than three or four times because the statement is compiled only once. Prepared statements and JDBC driver are linked with each other. We can bind drivers with columns by triggering the query into the database. When we execute Connection.prepareStatement(), all the columns bindings take place, in oder to reduce the time.
What restrictions are placed on method overriding?<br>
The restriction on method overloading is the signature of the method. 
<br>&#9830;&nbsp;&nbsp;The signature is the number, type, and order of the arguments passed to a method. 
<br>&#9830;&nbsp;&nbsp;Overridden methods must have the same name, argument list, and return type. 
<br>&#9830;&nbsp;&nbsp;Any method which has the same name cannot have the same signature. 
<br>&#9830;&nbsp;&nbsp;They can have the same return types in the same scope. 
<br>&#9830;&nbsp;&nbsp;The compiler uses the signature to detect which overloaded method to refer when a overloaded method is called. 
<br>&#9830;&nbsp;&nbsp;If two methods have the same name and signature the compiler will throw a runtime error.
What are types of JDBC drivers?<br>
There are four types of drivers defined by JDBC as follows:<br>
<br>&#9830;&nbsp;&nbsp;JDBC/ODBC:<br> These require an ODBC (Open Database Connectivity) driver for the database to be installed. It is used for local connection. 
<br>&#9830;&nbsp;&nbsp;Native API (partly-Java driver):<br> This type of driver uses a database API to interact with the database. It also provides no host redirection. 
<br>&#9830;&nbsp;&nbsp;Network Protocol Driver:<br> It makes use of a middle-tier between the calling program and the database. The client driver communicates with the net server using a database-independent protocol and the net server translates this protocol into database calls. 
<br>&#9830;&nbsp;&nbsp;Native Protocol Drive:<br> This has a same configuration as a type 3 driver but uses a wire protocol specific to a particular vendor and hence can access only that vendor's database. 
Is it possible to connect to multiple databases simultaneously?<br> Using single statement can one update or extract data from multiple databases?<br>
Yes, it is possible but it depends upon the capabilities of the specific driver implementation, we can connect to multiple databases at the same time. We doing following steps:<br>
<br>&#9830;&nbsp;&nbsp;Minimum one driver will be used to handle the commits transaction for multiple connections. 
<br>&#9830;&nbsp;&nbsp;To update and extract data from the different database we use single statement for this we need special middleware to deal with multiple databases in a single statement or to effectively treat them as one database.
What are the differences between setMaxRows(int) and SetFetchSize(int)?<br>
The difference between setFetchSize and setMaxRow are:<br>
<br>&#9830;&nbsp;&nbsp;setFetchSize(int) defines the number of rows that will be read from the database when the ResultSet needs more rows whereas setMaxRows(int) method of the ResultSet specifies how many rows a ResultSet can contain at a time. 
<br>&#9830;&nbsp;&nbsp;In setFetchSize(int), method in the java.sql.Statement interface will set the 'default' value for all the ResultSet derived from that Statement whereas in setMaxRow(int) default value is 0, i.e. all rows will be included in the ResultSet. 
<br>&#9830;&nbsp;&nbsp;the setMaxRows affects the client side JDBC object while the setFetchSize affects how the database returns the ResultSet data.
How can I manage special characters when I execute an INSERT query?<br> 
The special characters meaning in SQL can be preceded with a special escape character in strings, e.g. "\". In order to specify the escape character used to quote these characters, include the following syntax on the end of the query:<br>
{escape 'escape-character'}

For example, the query

SELECT NAME FROM IDENTIFIERS WHERE ID LIKE '\_%' {escape '\'}
finds identifier names that begin with an underscore.
What is the benefit of having JdbcRowSet implementation?<br> Why do we need a JdbcRowSet like wrapper around ResultSet?<br>
The JdbcRowSet implementation is a wrapper around a ResultSet object has following advantages over ResultSet:<br>
<br>&#9830;&nbsp;&nbsp;It makes possible to use the ResultSet object as a JavaBeans component. 
<br>&#9830;&nbsp;&nbsp;A JdbcRowSet can be used as a JavaBeans component, thus it can be created and configured at design time and executed at run time. 
<br>&#9830;&nbsp;&nbsp;It can be used to make a ResultSet object scrollable and updatable. All RowSet objects are by default scrollable and updatable.
Explain Basic Steps in writing a Java program using JDBC.<br>
JDBC makes the interaction with RDBMS simple and intuitive. When a Java application needs to access database :<br>
<br>&#9830;&nbsp;&nbsp;Load the RDBMS specific JDBC driver because this driver actually communicates with the database. <br>
<br>&#9830;&nbsp;&nbsp;Open the connection to database, for sending SQL statements and get results back. <br>
<br>&#9830;&nbsp;&nbsp;Create JDBC Statement object containing SQL query. <br>
<br>&#9830;&nbsp;&nbsp;Execute statement which returns result set. ResultSet contains the tuples of database table as a result of SQL query. <br>
<br>&#9830;&nbsp;&nbsp;Process the result set. <br>
<br>&#9830;&nbsp;&nbsp;Close the connection.<br>
I have the choice of manipulating database data using a byte[] or a java.sql.Blob. Which has best performance?<br>
We use java.sql.Blob, because of following reason:<br>
<br>&#9830;&nbsp;&nbsp;It does not extract any data from the database until we trigger a query to the databse. 
<br>&#9830;&nbsp;&nbsp;We use byte[] for inserting data in the database when data is not upload in the database till yet. 
<br>&#9830;&nbsp;&nbsp;java.sql.Blob is used when extraction of the data is performed.
What are DML and DDL?<br>
Data Manipulation Language (DDL) this portion of the SQL standard is concerned with manipulating the data in a database as opposed to the structure of a database. The DML deals with the SELECT, INSERT, DELETE, UPDATE, COMMIT and ROLLBACK.

Data Definition Language (DDL) this portion of the SQL standard is concerned with the creation, deletion and modification of database objects like tables, indexes and views. The core verbs for DDL are CREATE, ALTER and DROP. While most DBMS engines allow DDL to be used dynamically, it is often not supported in transactions.
How can you load the drivers?<br>
It is very simple and involves just one line of code to load the driver or drivers we want to use.<br>
For example, We want to use the JDBC-ODBC Bridge driver, the following code will load it:<br>
Class.forName(”sun.jdbc.odbc.JdbcOdbcDriver”);<br>

Driver documentation will give you the class name to use. For instance, if the class name is jdbc.DriverHELLO, you would load the driver with the following line of code:<br>

Class.forName(”jdbc.DriverHELLO”);<br>
How do I insert an image file (or other raw data) into a database?<br>
All raw data types should be read and uploaded to the database as an array of bytes, byte[].
<br>&#9830;&nbsp;&nbsp;Originating from a binary file. <br>
<br>&#9830;&nbsp;&nbsp;Read all data from the file using a FileInputStream.<br> 
<br>&#9830;&nbsp;&nbsp;Create a byte array from the read data. <br>
<br>&#9830;&nbsp;&nbsp;Use method setBytes(int index, byte[] data); of java.sql.PreparedStatement to upload the data.<br>
1.Explain the Java packages which contains JDBC classes and interfaces, Java.SQL, Javax.SQL<br>
Latest answer:<br> java.sql:<br> java.sql is an API to access and process the data stored in a database, typically a relational database using the java. Different drivers can be installed dynamically for the access of various.................
Read answer<br>
JDBC online test<br>
2. Describe how to open a database connection using JDBC.<br>
Latest answer:<br> Opening a database connection:<br> The database connection should be established after registering the drivers. The getConnection is used to open a database connection. The following code snippet illustrates this:<br>.................
Read answer<br>
3. Describe with an example how to send SQL statements to databases for execution.
Latest answer:<br> The following illustrates with examples, to send SQL statements to databases for execution:<br> The SQL statements are to be created as objects. These objects are to be assigned to Statement reference..................
Read answer<br>
4. What is a “dirty read”?<br>
Latest answer:<br> In typical database transactions, one transaction reads changes the value while the other reads the value before committing or rolling back by the first transaction..................
Read answer<br>
5. What is cold backup, hot backup, warm backup recovery?<br>
Latest answer:<br> Cold backup is a recovery technique, in which the files must be backed up before the database is restarted at the same time..................
Read answer<br>
6. What is 2 phase commit?<br> 
Latest answer:<br> Distributed transactions are performed by relational databases. To ensure each and every transaction to perform in an orderly manner, a process is implemented..................
Read answer <br>
7.What are different types of resultset in JDBC?<br>
Latest answer:<br> Resultset contains results of the SQL query. There are 3 basic types of resultset. Forward-only:<br> As name suggest, this type can only move forward and are non-scrollable..............
Read answer<br>
8.What are different transaction levels in JDBC?<br>
Latest answer:<br> Transaction Isolation levels is used to implement locking. They decide how one process isolated from other is. We have four Transaction Isolation Levels..........
Read answer<br>
9. Explain optimistic and pessimistic locking in JDBC.<br>
Latest answer:<br> There are two kinds of locking available in JDBC. Optimistic Locking, Pessimistic Locking.............
Read answer<br>
JDBC interview questions - Oct 15, 2010<br>
Explain the different types of Transaction Isolation Levels.<br>
What is a "dirty read"?<br>
What is the fastest type of JDBC driver?<br> 
What is the difference between different JDBC drivers?<br> 
What are collection pools?<br> What are the advantages?<br>
What is cold backup, hot backup, warm backup recovery?<br>
What is the difference between cached rowset, jdbrowset and webrowset?<br>
What is Metadata and why should I use it?<br>
What is the difference between Statement, PreparedStatement and CallableStatemen?<br>
What are different types of isolation levels in JDBC and explain where you can use them?<br>
What actually does Class.forName("mypackage.MyDriver"); method do?<br>
How do you get Column names only for a table (SQL Server)?<br> Write the Query.
What is a data source?<br> 
What is 2 phase commit?<br>
How do you handle your own transaction ?<br> 
What Class.forName will do while loading drivers?<br>
Can we maintain two database connection in single application?<br> How can we achieve that?<br> 
What is the normal procedure followed by a java client to access the db?<br> 
Explain the advantage of using PreparedStatement.
Does the JDBC-ODBC Bridge support multiple concurrent open statements per connection?<br>
How to call a Stored Procedure from JDBC?<br> 
How does the Application server handle the JMS Connection?<br>
When we will Denormalize data?<br>
What is the query used to display all tables names in SQL Server (Query analyzer)?<br>
Is the JDBC-ODBC Bridge multi-threaded?<br> 
How to Retrieve Warnings?<br> 
what are stored procedures?<br> How is it useful?<br>
How many types of JDBC Drivers are present and what are they?<br>
JDBC Interview - July 31, 2008, 17:<br>35 pm by Amit Satpute
10.What causes the "No suitable driver" error?<br>
Failure to load the appropriate JDBC driver before giving a call to DriverManager.getConnection method causes ‘No Suitable Driver’ error............. 
Read answer 
11.Is the JDBC-ODBC Bridge multi-threaded?<br>
NO. The JDBC-ODBC Bridge uses synchronized methods to serialize all of the calls made to ODBC. The concurrent access from multiple threads is not supported by the bridge...........
Read answer
12.What is an SQL Locator?<br>
DBMS uses the logical pointers as identifiers to locate and manipulate the data. A Locator is an SQL3 data-type which acts as a logical pointer to the data on a database server.............. 
Read answer 
13.What is optimistic concurrency control?<br>
In optimistic concurrency control, locks are granted without performing conflict checks. In this, a track of files which have been read or written is maintained............. 
Read answer 
14.What is pessimistic concurrency?<br>
In this approach, each transaction is assigned a timestamp. One can make sure that they are unique using algorithms like Lamport. ............ 
Read answer 
15.Why doesn't JDBC accept URLs instead of a URL string?<br>
The URLs need to be converted to strings as there is no single universal protocol to treat the URLs as strings in JDBC databases.......... 
Read answer 
16.What JDBC objects generate SQLWarnings?<br>
Connections, Statements and ResultSets generate SQLWarnings through getWarnings method.......
Read answer 
17.How do I create an updatable ResultSet?<br>
For the results to be updatable, the Statement object used to create the result sets must have the concurrency type ResultSet.CONCUR_UPDATABLE............ 
Read answer 
18.How do I insert an image file (or other raw data) into a database?<br>
Upload all raw data-types (like binary documents) to the database as an array of bytes (bytes[]). Then you can,............ 
Read answer 
19.What is the advantage of using a PreparedStatement?<br>
A Prepared Statement Object would be faster than a Statement Object where repeated execution of SQL statements is required...........
Read answer
20.What’s the difference between TYPE_SCROLL_INSENSITIVE , and TYPE_SCROLL_SENSITIVE?<br>
Static int TYPE_SCROLL_INSENSITIVEL:<br>  Constant indicating that the type for a ResultSet object is scrollable but not sensitive to changes made by others.......... 
Read answer 
21.What are the different types of RowSet?<br>
There are two types of RowSet:<br> Connected:<br> A connected RowSet Object is permanent in nature. It doesn’t terminate until the application is terminated.......... 
Read answer 
22.How can you retrieve data from the ResultSet?<br>
Create a result set containing all data from..... 
Read answer 
23.What is a non-repeatable read?<br>
A Non-repeatable read is where one transaction cannot read the second time unless another transaction alters the row............ 
Read answer 
24.What is phantom read?<br>
If you execute a query at time T1 and re-execute it at time T2, additional rows may have been added to the database, which may affect your results...........
Read answer
25.Advantages of JDBC.
Provide Existing Enterprise Data:<br> Businesses can continue to use their installed databases and access information even if it is stored on different database management systems......
Read answer
26.What will Class.forName do while loading drivers?<br>
When you have loaded a driver, it is available for making a connection with a DBMS. It is used to create an instance of a driver and register it with the DriverManager.............
Read answer
27.What are the different types of driver?<br>
JDBC-ODBC Bridge:<br> The translation of JDBC calls into ODBC calls and sending to the ODBC driver is done by this driver. These drivers are almost accessible to any database. These drivers are not portable. The client system demands the ODBC installation to use the driver.........
Read answer
28.What are the standard isolation levels defined by JDBC?<br>
The values are defined in the class java.sql.Connection and are:<br> 
TRANSACTION_NONE 
TRANSACTION_READ_COMMITTED........... 
Read answer

How do we call stored procedure using JDBC?<br>
1. Discuss the significances of JDBC.
The significances are given below:<br>

<br>&#9830;&nbsp;&nbsp;JDBC is the acronym stands for Java Database Connectivity.

<br>&#9830;&nbsp;&nbsp;Java Database Connectivity (JDBC) is a standard Java API .

<br>&#9830;&nbsp;&nbsp;It's purpose is to interact with the relational databases in Java. 

<br>&#9830;&nbsp;&nbsp;JDBC is having a set of classes & interfaces which can be used from any Java application. 

<br>&#9830;&nbsp;&nbsp;By using the Database Specific JDBC drivers, it interacts with a database without the applications of RDBMS.
2. Name the new features added in JDBC 4.0.
The major features introduced in JDBC 4.0 are :<br>

<br>&#9830;&nbsp;&nbsp;Auto-loading by JDBC driver class. 

<br>&#9830;&nbsp;&nbsp;Enhanced Connection management 

<br>&#9830;&nbsp;&nbsp;RowId SQL enabled. 

<br>&#9830;&nbsp;&nbsp;DataSet implemented by SQL by using Annotations

<br>&#9830;&nbsp;&nbsp;Enhancements of SQL exception handling 

<br>&#9830;&nbsp;&nbsp;Supporting SQL XML files. 
3. How do Java applications access the database using JDBC?<br> 
Java applications access the database using JDBC by :<br> 

<br>&#9830;&nbsp;&nbsp;Communicating with the database for Loading the RDBMS specific JDBC driver 

<br>&#9830;&nbsp;&nbsp;Opening the connection with database 

<br>&#9830;&nbsp;&nbsp;Sending the SQL statements and get the results back.

<br>&#9830;&nbsp;&nbsp;Creating JDBC Statement object which contains SQL query.

<br>&#9830;&nbsp;&nbsp;Executing statement to return the resultset(s) containing the tuples of database table which is a result of SQL query.

<br>&#9830;&nbsp;&nbsp;Processing the result set.

<br>&#9830;&nbsp;&nbsp;Closing the connection.
4. Briefly tell about the JDBC Architecture.
The JDBC Architecture consists of two layers:<br>

1.The JDBC API
2.The JDBC Driver API

<br>&#9830;&nbsp;&nbsp;The JDBC API provides the application-JDBC Manager connection.

<br>&#9830;&nbsp;&nbsp;The JDBC Driver API supports the JDBC Manager-to-Driver Connection.

<br>&#9830;&nbsp;&nbsp;The JDBC API interacts with a driver manager, database-specific driver for providing transparent connectivity for the heterogeneous databases. 

<br>&#9830;&nbsp;&nbsp;The JDBC driver manager authenticates that the correct driver has been used to access each data source.

<br>&#9830;&nbsp;&nbsp;The driver manager supports multiple concurrent drivers connected to the multiple heterogeneous databases. 
5.Explain the life cycle of JDBC.
The life cycle for a servlet comprises of the following phases:<br>

<br>&#9830;&nbsp;&nbsp;DriverManager :<br> for managing a list of database drivers. 

<br>&#9830;&nbsp;&nbsp;Driver :<br> for communicating with the database. 

<br>&#9830;&nbsp;&nbsp;Connection :<br> for interfacing with all the methods for connecting a database.

<br>&#9830;&nbsp;&nbsp;Statement :<br> for encapsulating an SQL statement for passing to the database which had been parsed, compiled, planned and executed.

<br>&#9830;&nbsp;&nbsp;ResultSet:<br> for representing a set of rows retrieved for the query execution.
6.Describe how the JDBC application works.
A JDBC application may be divided into two layers:<br>

<br>&#9830;&nbsp;&nbsp;Driver layer

<br>&#9830;&nbsp;&nbsp;Application layer

<br>&#9830;&nbsp;&nbsp;The Driver layer consists of DriverManager class & the JDBC drivers.

<br>&#9830;&nbsp;&nbsp;The Application layer begins after putting a request to the DriverManager for the connection.

<br>&#9830;&nbsp;&nbsp;An appropriate driver is chosen and used for establishing the connection. 

<br>&#9830;&nbsp;&nbsp;This connection is linked to the application layer.

<br>&#9830;&nbsp;&nbsp;The application needs the connection for creating the Statement kind of objects by which the results are obtained.
7. How a database driver can be loaded with JDBC 4.0 / Java 6?<br>
<br>&#9830;&nbsp;&nbsp;By providing the JAR file , the driver must be properly configured.

<br>&#9830;&nbsp;&nbsp;The JAR file is placed in the classpath. 

<br>&#9830;&nbsp;&nbsp;It is not necessary to explicitly load the JDBC drivers by using the code like Class.forName() to register in the JDBC driver.

<br>&#9830;&nbsp;&nbsp;The DriverManager class looks after this, via locating a suitable driver at the time when the DriverManager.getConnection() method is called. 

<br>&#9830;&nbsp;&nbsp;This feature provides backward-compatibility, so no change is needed in the existing JDBC code.
8. What does the JDBC Driver interface do?<br>
<br>&#9830;&nbsp;&nbsp;The JDBC Driver interface provides vendor-specific customized implementations of the abstract classes. 

<br>&#9830;&nbsp;&nbsp;It is provided normally by the JDBC API. 

<br>&#9830;&nbsp;&nbsp;For each vendor the driver provides implementations of the java.sql.Connection,
, PreparedStatement, Driver,Statement, ResultSet and CallableStatement.
9. What is represented by the connection object?<br>
<br>&#9830;&nbsp;&nbsp;The connection object represents the communication context.

<br>&#9830;&nbsp;&nbsp;All the communication with the database is executed via the connection objects only.

<br>&#9830;&nbsp;&nbsp;Connection objects are used as the main linking elements. 
10. What is a Statement ?<br>
<br>&#9830;&nbsp;&nbsp;The Statement acts just like a vehicle via which SQL commands are sent.

<br>&#9830;&nbsp;&nbsp;By the connection objects, we create the Statement kind of objects.

Statement stmt = conn.createStatement();

<br>&#9830;&nbsp;&nbsp;This method returns the object, which implements the Statement interface.
11.Define PreparedStatement.
<br>&#9830;&nbsp;&nbsp;A Preparedstatement is an SQL statement which is precompiled by the database.

<br>&#9830;&nbsp;&nbsp;By precompilation, the prepared statements improve the performance of the SQL commands that are executed multiple times (given that the database supports prepared statements). 

<br>&#9830;&nbsp;&nbsp;After compilation, prepared statements may be customized before every execution by the alteration of predefined SQL parameters.

Code:<br>

PreparedStatement pstmt = conn.prepareStatement("UPDATE data= ?<br> WHERE vl = ?<br>");
pstmt.setBigDecimal(1, 1200.00);
pstmt.setInt(2, 192);
12. Differentiate between a Statement and a PreparedStatement.
<br>&#9830;&nbsp;&nbsp;A standard Statement is used for creating a Java representation for a literal SQL statement and for executing it on the database. 

<br>&#9830;&nbsp;&nbsp;A PreparedStatement is a precompiled Statement. 

<br>&#9830;&nbsp;&nbsp;A Statement has to verify its metadata in the database every time. 

<br>&#9830;&nbsp;&nbsp;But ,the prepared statement has to verify its metadata in the database only once.

<br>&#9830;&nbsp;&nbsp;If we execute the SQL statement, it will go to the STATEMENT. 

<br>&#9830;&nbsp;&nbsp;But, if we want to execute a single SQL statement for the multiple number of times, it’ll go to the PreparedStatement. 
13. What is the function of setAutoCommit?<br>
<br>&#9830;&nbsp;&nbsp;When a connection is created, it is in auto-commit mode.

<br>&#9830;&nbsp;&nbsp;This means that each individual SQL statement is to be treated as a single transaction .

<br>&#9830;&nbsp;&nbsp;The setAutoCommit will be automatically committed just after getting executed. 

<br>&#9830;&nbsp;&nbsp;The way by which two or more statements are clubbed into a transaction to disable the auto-commit mode is :<br>

con.setAutoCommit (false);

<br>&#9830;&nbsp;&nbsp;Once auto-commit mode is disabled, no SQL statements will be committed until we call the method ‘commit’ explicitly.

Code :<br>

con.setAutoCommit(false);
PreparedStatement updateSales = con.prepareStatement( "UPDATE COFFEE SALES = ?<br> WHERE COF_NAME LIKE ?<br>");
updateSales.setInt(1, 50); updateSales.setString(2, "Colombian");
updateSales.executeUpdate();
PreparedStatement updateTotal =
con.prepareStatement("UPDATE COFFEES SET TOTAL = TOTAL + ?<br> WHERE COF_NAME LIKE ?<br>");
updateTotal.setInt(1, 50);
updateTotal.setString(2, "Colombian");
updateTotal.executeUpdate();
con.commit();
con.setAutoCommit(true);
14 How do we call a stored procedure from JDBC?<br>
<br>&#9830;&nbsp;&nbsp;The foremost step is to create a CallableStatement object. 

<br>&#9830;&nbsp;&nbsp;With the Statement and PreparedStatement object ,it is done with an open
Connection object. 

<br>&#9830;&nbsp;&nbsp;A CallableStatement object contains a call to a stored procedure.

Code:<br>

CallableStatement cs = con.prepareCall("{call SHOW_Sales}");
ResultSet rs = cs.executeQuery();
15. What is SQLWarning and discuss the procedure of retrieving warnings?<br>
<br>&#9830;&nbsp;&nbsp;SQLWarning objects, a subclass of SQLException is responsible for the database access warnings.

<br>&#9830;&nbsp;&nbsp;Warnings will not stop the execution of an specific application, as exceptions do.

<br>&#9830;&nbsp;&nbsp;It simply alerts the user that something did not happen as planned. 

<br>&#9830;&nbsp;&nbsp;A warning may be reported on the Connection object, the Statement object (including PreparedStatement and CallableStatement objects) or on the ResultSet object.

<br>&#9830;&nbsp;&nbsp;Each of these classes has a getWarnings method, which you must invoke in order to see the first warning reported on the calling object:<br>

Code :<br>
SQLWarning waring = stmt.getWarnings();
if (warning != null)
{
System.out.println("n---Warning---n");
while (warning != null)
{
System.out.println("Message:<br> " + warning.getMessage());
System.out.println("SQLState:<br> " + warning.getSQLState());
System.out.println("Vendor error code:<br> ");
System.out.println(warning.getErrorCode());
System.out.println("");
warning = warning.getNextWarning();
}
}
16. Explain the types of JDBC Drivers and name them.
The 4 types of JDBC Drivers are:<br>

<br>&#9830;&nbsp;&nbsp;Pure Java Driver JDBC Net

<br>&#9830;&nbsp;&nbsp;Bridge Driver JDBC-ODBC 

<br>&#9830;&nbsp;&nbsp;Network protocol Driver

<br>&#9830;&nbsp;&nbsp;Partly Java Driver Native API 
17. How can we move the cursor in a scrollable result set?<br>
<br>&#9830;&nbsp;&nbsp;The new features added in the JDBC 2.0 API are able to move a resultset’s cursor backward & forward also.

<br>&#9830;&nbsp;&nbsp;There are some methods that let you direct the cursor to a particular row and checking the position of the cursor.

Code :<br>

Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, 

ResultSet.CONCUR_READ_ONLY);

ResultSet srs = stmt.executeQuery(”SELECT COF_NAME, Sale _COFFEE”);

<br>&#9830;&nbsp;&nbsp;Three constants can be added to the ResultSet API for indicating the kind 

of the ResultSet object. The constants are:<br>

- TYPE_FORWARD_ONLY

- TYPE_SCROLL_INSENSITIVE 

- TYPE_SCROLL_SENSITIVE. 

<br>&#9830;&nbsp;&nbsp;The ResultSet constants for specifying whether a resultset is read-only or updatable are:<br> 

- CONCUR_READ_ONLY 

- CONCUR_UPDATABLE. 
18. How do we load the drivers?<br>
<br>&#9830;&nbsp;&nbsp;To Load the driver or drivers we need to use a very simple one line of code. 

<br>&#9830;&nbsp;&nbsp;If we want to use the JDBC/ODBC Bridge driver, the following code will load it:<br>

Class.forName(”sun.jdbc.odbc.JdbcOdbcDriver”);

<br>&#9830;&nbsp;&nbsp;The driver documentation gives the class name to use. 

<br>&#9830;&nbsp;&nbsp;For example, if the class name is jdbc.DriverXYZ, we can load the driver using the below line of code:<br>

Code:<br>

Class.forName(”jdbc.DriverXYZ”);
19. What Class.forName does, while loading the drivers?<br> 
<br>&#9830;&nbsp;&nbsp;It is used for creating an instance of a driver 

<br>&#9830;&nbsp;&nbsp;It is used for registering with theDriverManager.

<br>&#9830;&nbsp;&nbsp;When we have loaded a driver, it connects with the DBMS.
20. How can you make a connection?<br> 
<br>&#9830;&nbsp;&nbsp;To establish a connection we need to have an appropriate driver, connected to the DBMS.

<br>&#9830;&nbsp;&nbsp;The below line of code illustrates the idea:<br>

Code:<br>

String url = “jdbc:<br>odbc:<br> rima”;

Connection con = DriverManager.getConnection(url, “rima”, “J8?<br>);
1. What are the factors that the JDBC driver performance depends on?<br>
The JDBC driver performance depends on:<br>

<br>&#9830;&nbsp;&nbsp;The driver code quality 

<br>&#9830;&nbsp;&nbsp;The driver code size 

<br>&#9830;&nbsp;&nbsp;The database server & its load capability

<br>&#9830;&nbsp;&nbsp;The network topology

<br>&#9830;&nbsp;&nbsp;The number of times the request is being translated to a different API.
2. How do I find whether a parameter exists in the request object?<br>
<br>&#9830;&nbsp;&nbsp;The following code implies it

boolean hasFo = !(request.getParameter("fo") == null

|| request.getParameter("fo").equals("")); 


Or

boolean hasParameter =

request.getParameterMap().contains(theParameter); 
3. Expalin the method of calling a stored procedure from JDBC.
<br>&#9830;&nbsp;&nbsp;PL/SQL stored procedures are called from the JDBC programs by creating the prepareCall() in the Connection object. 

<br>&#9830;&nbsp;&nbsp;A call to the method prepareCall() carries out variable bind parameters as input parameters, output variables & makes an object instance of the CallableStatement class.

<br>&#9830;&nbsp;&nbsp;The following line of code implies this:<br>

Callable Statement stproc_ stmt = conn.prepareCall("{call procname(?<br>,?<br>,?<br>)}");

where conn is the instance of the Connection class.
4. Name the types of JDBC drivers.
The four types of drivers defined by JDBC are:<br>

<br>&#9830;&nbsp;&nbsp;Type 1:<br> JDBC/ODBC—This requires an ODBC (Open Database Connectivity) driver for the databases to be installed. This type of drivers work by converting the submitted queries into an equivalent ODBC queries and forwarding them via native API which invokes directly to the ODBC driver. It provides host less redirection capability too.

<br>&#9830;&nbsp;&nbsp;Type 2:<br> Native type API (partly-Java driver)—This type of driver uses a vendor-specific driver or database API for interacting with the database. An example of such an API is Oracle OCI (Oracle Call Interface). 

<br>&#9830;&nbsp;&nbsp;Type 3:<br> Open Net Protocol —This is vendor non-specific and works by forwarding database requests using a net server component. The net server accesses the database. The client driver connects with the server using a database-indifferent protocol and the server translates this protocol into database calls. 

<br>&#9830;&nbsp;&nbsp;Type 4:<br> Proprietary Protocol-Net(pure Java driver)—This is same as per configuration as type 3 driver while it uses a wire protocol directed towards a particular vendor and so it can access only that vendor's database. 
5. Explain how to Make Updates to the Updatable ResultSets.
<br>&#9830;&nbsp;&nbsp;The JDBC 2.0 API can update rows in a ResultSet using the methods in the Java rather than using a SQL command. 

<br>&#9830;&nbsp;&nbsp;But before doing that, we create a ResultSet object which is updatable. 

<br>&#9830;&nbsp;&nbsp;For doing this, we give the ResultSet CONCUR_UPDATABLE in the createStatement method.

Code:<br>
Connection con =
DriverManager.getConnection("jdbc:<br>mySubprotocol:<br>mySubName");
Statement stmt =
con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
ResultSet.CONCUR_UPDATABLE);
ResultSet uprs =
stmt.executeQuery("SELECT COF_NAME, PRICE ");
6.What are the utilities of the callable statements?<br>
<br>&#9830;&nbsp;&nbsp;Callable statements are mainly used in the JDBC applications.

<br>&#9830;&nbsp;&nbsp;Callable statements are used to invoke stored procedures

<br>&#9830;&nbsp;&nbsp;This is mainly used in functions.
7. Differentiate between TYPE_SCROLL_INSENSITIVE and TYPE_SCROLL_SENSITIVE.
<br>&#9830;&nbsp;&nbsp;We will get a scrollable ResultSet object if we specify either one of the ResultSet constants.

<br>&#9830;&nbsp;&nbsp;The difference between the two depends on, whether a resultset is showing fv changes or not.

<br>&#9830;&nbsp;&nbsp;This difference depends on certain methods which are called to detect changes or not. 

<br>&#9830;&nbsp;&nbsp;The resultset TYPE_SCROLL_INSENSITIVE does not show the change to it but the ResultSet srs = TYPE_SCROLL_SENSITIVE will show the change. 


The following code explains the difference :<br>

Statement stmt =

con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

ResultSet srs =

stmt.executeQuery("SELECT COF_NAME, PRICE FROM COFFEES");

srs.afterLast();

while (srs.previous())
{

String name = srs.getString("COF_NAME");
float price 1= srs.getFloat("PRICE");
System.out.println(name + " " + price1);

}
8. How JDBC Statements are used?<br>
<br>&#9830;&nbsp;&nbsp;A Statement is an object, by which we send an SQL statement to the DBMS. 

<br>&#9830;&nbsp;&nbsp;We create a Statement object and then execute it.

<br>&#9830;&nbsp;&nbsp;For a SELECT Statement, the method used is executeQuery. 

<br>&#9830;&nbsp;&nbsp;The Statement that creates or modifies a table is executeUpdate.

<br>&#9830;&nbsp;&nbsp;For creating a Statement object an instance of an active connection is required.

<br>&#9830;&nbsp;&nbsp;In the following code, we use our Connection object con to create the Statement object

Statement stmt = con . createStatement();
9. How can we retrieve data from the ResultSet?<br>
<br>&#9830;&nbsp;&nbsp;JDBC returns back the results in a ResultSet object. 

<br>&#9830;&nbsp;&nbsp;So we have to declare an instance of the class ResultSet to keep the results.

<br>&#9830;&nbsp;&nbsp;The following code declares the ResultSet object rs.

ResultSet rs = stmt.executeQuery (”SELECT COF_NAME, PRICE FROM COFFEES”);
String s = rs.getString (”NAME”);

<br>&#9830;&nbsp;&nbsp;The method getString calls ResultSet object rs, So getString() retrieves the value stored in the column NAME in the row Ssrs.
10. Name the different types of Statements?<br> How we can you use PreparedStatement.
The different types of Statements are

<br>&#9830;&nbsp;&nbsp;Regular statement (uses createStatement method)
<br>&#9830;&nbsp;&nbsp;prepared statement (uses prepareStatement method) 
<br>&#9830;&nbsp;&nbsp;callable statement (uses prepareCall)


PreparedStatement :<br>

<br>&#9830;&nbsp;&nbsp;PreparedStatement is derived from the class Statement.

<br>&#9830;&nbsp;&nbsp;To execute a Statement object several times a PreparedStatement object is required.

<br>&#9830;&nbsp;&nbsp;The PreparedStatement object contains not only a compiled SQL statement, but also a precompiled SQL statement too. 

Code:<br> 

PreparedStatement updateSales =con.prepareStatement("UPDATE account = ?<br> WHERE CON_NAME ?<br>");
Test your JDBC knowledge with our multiple choice questions!
Also read
Java Threading
What is a thread?<br> What are the advantages we derived by programming with thread?<br>
Explain how to create a thread and start it running.
How does thread’s stop method work.
How do we specify pause times in my program?<br>...........
JNDI, Java naming and directory interfaces
What is a naming service?<br>
What is a directory service?<br>
What is LDAP?<br>............ 
OFBiz Service Engine
Defining and creating a Java service 
Service parameters 
Special unchecked (unmatched) IN/OUT parameters 
Security-related programming 
Calling services from code (using dispatcher) 
IN/OUT parameter mismatch when calling services 
Sending feedback; standard return codes success, error and fail 
Implementing Service Interfaces 
Synchronous and asynchronous services 
Using the Service Engine tools 
ECAs:<br> Event Condition Actions

Servlet
What are the advantages of Servlet over CGI?<br>
Servlets have several advantages over CGI:<br>
<br>&#9830;&nbsp;&nbsp;A Servlet does not run in a separate process. This removes the overhead of creating a new process for each request.
<br>&#9830;&nbsp;&nbsp;A Servlet stays in memory between requests. A CGI program (and probably also an extensive runtime system or interpreter) needs to be loaded and started for each CGI request.
<br>&#9830;&nbsp;&nbsp;There is only a single instance which answers all requests concurrently. This saves memory and allows a Servlet to easily manage persistent data.
<br>&#9830;&nbsp;&nbsp;Several web.xml conveniences
<br>&#9830;&nbsp;&nbsp;A handful of removed restrictions
<br>&#9830;&nbsp;&nbsp;Some edge case clarifications
Why do we need a constructor in a servlet if we use the init method?<br>
Even though there is an init method in a servlet which gets called to initialize it, a constructor is still required to instantiate the servlet. Even though you as the developer would never need to explicitly call the servlet’s constructor, it is still being used by the container (the container still uses the constructor to create an instance of the servlet). Just like a normal POJO (plain old java object) that might have an init method, it is no use calling the init method if you haven’t constructed an object to call it on yet.
What are the different step to upload Servlets?<br>
A servlet can be unloaded in two way.
<br>&#9830;&nbsp;&nbsp;Server shuts down.
<br>&#9830;&nbsp;&nbsp;Administrator manually unloads.
What is the difference between HttpServlet and Generic Servlet?<br>
Life cycle of servlet?<br>
Container control the life cycle of servlet in which it is deployed. Steps :<br>
1- Container first check if an instance of the servlet exist or not if it doesn’t find any servlet, Web container Loads the servlet class or else go to step 4
2- Creates an instance of the servlet class.
3- Initializes the servlet instance by calling the init() method(Servlet Life cycle method).
Now servlet is ready to serve the request. When ever a request comes in for this servlet
4- Container invokes the service() method, passing a request and response object. Note:<br> Servlet will handle all request in Service method.
5- When servlet container determines that the servlet should be removed from the service, it calls the destroy() method of the servlet to allow servlet to release any resources it is using.
The following are the life cycle methods of a servlet
1- init()
2- service()
3- destroy()
Preinitialization of JSP & how to use it?<br>
Initialization(init method called) of the Servlet happens only when the first request for servlet comes to container, this is called lazy loading. Some time it is required to load adn initialize the servlet when container starts. This is called pre initialization. It can be achieved via tag “\non zero integer number\” in web.xml. Servlets will be loaded in the order of non zero number
Protocol supported by HTTPServlet?<br>
It supports only Http Protocol.
When to use doGet() and when doPost()?<br>
Always prefer to use GET (As because GET is faster than POST), except mentioned in the following reason:<br>
<br>&#9830;&nbsp;&nbsp;If data is sensitive
<br>&#9830;&nbsp;&nbsp;Data is greater than 1024 characters
<br>&#9830;&nbsp;&nbsp;If your application don’t need bookmarks.
Can we /Should we Override Service method?<br>
No
What is a servlet context object?<br>
A servlet context object contains the information about the Web application of which the servlet is a part. It also provides access to the resources common to all the servlets in the application. Each Web application in a container has a single servlet context associated with it.
What’s the use of the servlet wrapper classes?<br>?<br>
The HttpServletRequestWrapper and HttpServletResponseWrapper classes are designed to make it easy for developers to create custom implementations of the servlet request and response types. The classes are constructed with the standard HttpServletRequest and HttpServletResponse instances respectively and their default behaviour is to pass all method calls directly to the underlying objects.
What is a deployment descriptor?<br>
A deployment descriptor is an XML document with an .xml extension. It defines a component’s deployment settings. It declares transaction attributes and security authorization for an enterprise bean. The information provided by a deployment descriptor is declarative and therefore it can be modified without changing the source code of a bean.
The JavaEE server reads the deployment descriptor at run time and acts upon the component accordingly.
What is preinitialization of a servlet?<br>
A container does not initialize the servlets as soon as it starts up, it initializes a servlet when it receives a request for that servlet first time. This is called lazy loading. The servlet specification defines the element, which can be specified in the deployment descriptor to make the servlet container load and initialize the servlet as soon as it starts up. The process of loading a servlet before any request comes in is called preloading or preinitializing a servlet.
What is the <load-on-startup> element?<br>
The <load-on-startup> element of a deployment descriptor is used to load a servlet file when the server starts instead of waiting for the first request. It is also used to specify the order in which the files are to be loaded. The <load-on-startup> element is written in the deployment descriptor.
What is session?<br>
A session refers to all the requests that a single client might make to a server in the course of viewing any pages associated with a given application. Sessions are specific to both the individual user and the application. As a result, every user of an application has a separate session and has access to a separate set of session variables.
What is Session Tracking?<br>
Session tracking is a mechanism that servlets use to maintain state about a series of requests from the same user (that is, requests originating from the same browser) across some period of time.
What are the types of Session Tracking ?<br>
Sessions need to work with all web browsers and take into account the users security preferences. Therefore there are a variety of ways to send and receive the identifier:<br>
o	URL rewriting :<br> URL rewriting is a method of session tracking in which some extra data (session ID) is appended at the end of each URL. This extra data identifies the session. The server can associate this session identifier with the data it has stored about that session. This method is used with browsers that do not support cookies or where the user has disabled the cookies.
o	Hidden Form Fields :<br> Similar to URL rewriting. The server embeds new hidden fields in every dynamically generated form page for the client. When the client submits the form to the server the hidden fields identify the client.
o	Cookies :<br> Cookie is a small amount of information sent by a servlet to a Web browser. Saved by the browser, and later sent back to the server in subsequent requests. A cookie has a name, a single value, and optional attributes. A cookie’s value can uniquely identify a client.
<br>&#9830;&nbsp;&nbsp;Secure Socket Layer (SSL) Sessions :<br> Web browsers that support Secure Socket Layer communication can use SSL’s support via HTTPS for generating a unique session key as part of the encrypted conversation.
How do I use cookies to store session state on the client?<br>
In a servlet, the HttpServletResponse and HttpServletRequest objects passed to method HttpServlet.service() can be used to create cookies on the client and use cookie information transmitted during client requests. JSPs can also use cookies, in scriptlet code or, preferably, from within custom tag code.
<br>&#9830;&nbsp;&nbsp;To set a cookie on the client, use the addCookie() method in class HttpServletResponse. Multiple cookies may be set for the same request, and a single cookie name may have multiple values.
<br>&#9830;&nbsp;&nbsp;To get all of the cookies associated with a single HTTP request, use the getCookies() method of class HttpServletRequest
What are some advantages of storing session state in cookies?<br>
<br>&#9830;&nbsp;&nbsp;Cookies are usually persistent, so for low-security sites, user data that needs to be stored long-term (such as a user ID, historical information, etc.) can be maintained easily with no server interaction.
<br>&#9830;&nbsp;&nbsp;For small- and medium-sized session data, the entire session data (instead of just the session ID) can be kept in the cookie.
What are some disadvantages of storing session state in cookies?<br>
<br>&#9830;&nbsp;&nbsp;Cookies are controlled by programming a low-level API, which is more difficult to implement than some other approaches.
<br>&#9830;&nbsp;&nbsp;All data for a session are kept on the client. Corruption, expiration or purging of cookie files can all result in incomplete, inconsistent, or missing information.
<br>&#9830;&nbsp;&nbsp;Cookies may not be available for many reasons:<br> the user may have disabled them, the browser version may not support them, the browser may be behind a firewall that filters cookies, and so on. Servlets and JSP pages that rely exclusively on cookies for client-side session state will not operate properly for all clients. Using cookies, and then switching to an alternate client-side session state strategy in cases where cookies aren’t available, complicates development and maintenance.
<br>&#9830;&nbsp;&nbsp;Browser instances share cookies, so users cannot have multiple simultaneous sessions.
<br>&#9830;&nbsp;&nbsp;Cookie-based solutions work only for HTTP clients. This is because cookies are a feature of the HTTP protocol. Notice that the while package javax.servlet.http supports session management (via classHttpSession), package javax.servlet has no such support.
What is URL rewriting?<br>
URL rewriting is a method of session tracking in which some extra data is appended at the end of each URL. This extra data identifies the session. The server can associate this session identifier with the data it has stored about that session.
Every URL on the page must be encoded using method HttpServletResponse.encodeURL(). Each time a URL is output, the servlet passes the URL to encodeURL(), which encodes session ID in the URL if the browser isn’t accepting cookies, or if the session tracking is turned off.
How can an existing session be invalidated?<br>
Setting timeout in the deployment descriptor:<br> This can be done by specifying timeout between the <session-timeout>tags
How can the session in Servlet can be destroyed?<br>
An existing session can be destroyed in the following two ways:<br>
<br>&#9830;&nbsp;&nbsp;Programatically :<br> Using session.invalidate() method, which makes the container abonden the session on which the method is called.
<br>&#9830;&nbsp;&nbsp;When the server itself is shutdown.
What is servlet lazy loading?<br>
<br>&#9830;&nbsp;&nbsp;A container doesnot initialize the servlets ass soon as it starts up, it initializes a servlet when it receives a request for that servlet first time. This is called lazy loading.
<br>&#9830;&nbsp;&nbsp;The servlet specification defines the <load-on-startup> element, which can be specified in the deployment descriptor to make the servlet container load and initialize the servlet as soon as it starts up.
<br>&#9830;&nbsp;&nbsp;The process of loading a servlet before any request comes in is called preloading or preinitializing a servlet.
What is Servlet Chaining?<br>
Servlet Chaining is a method where the output of one servlet is piped into a second servlet. The output of the second servlet could be piped into a third servlet, and so on. The last servlet in the chain returns the output to the Web browser.
What are filters?<br>
Filters are Java components that are used to intercept an incoming request to a Web resource and a response sent back from the resource. It is used to abstract any useful information contained in the request or response. Some of the important functions performed by filters are as follows:<br>
<br>&#9830;&nbsp;&nbsp;Security checks
<br>&#9830;&nbsp;&nbsp;Modifying the request or response
<br>&#9830;&nbsp;&nbsp;Data compression
<br>&#9830;&nbsp;&nbsp;Logging and auditing
<br>&#9830;&nbsp;&nbsp;Response compression
Filters are configured in the deployment descriptor of a Web application. Hence, a user is not required to recompile anything to change the input or output of the Web application.
What are the functions of the Servlet container?<br>
The functions of the Servlet container are as follows:<br>
<br>&#9830;&nbsp;&nbsp;Lifecycle management :<br> It manages the life and death of a servlet, such as class loading, instantiation, initialization, service, and making servlet instances eligible for garbage collection.
<br>&#9830;&nbsp;&nbsp;Communication support :<br> It handles the communication between the servlet and the Web server.
<br>&#9830;&nbsp;&nbsp;Multithreading support :<br> It automatically creates a new thread for every servlet request received. When the Servlet service() method completes, the thread dies.
<br>&#9830;&nbsp;&nbsp;Declarative security :<br> It manages the security inside the XML deployment descriptor file.
<br>&#9830;&nbsp;&nbsp;JSP support :<br> The container is responsible for converting JSPs to servlets and for maintaining them.
Jsp
Life Cycle of JSP?<br>
1- Translation
2- Compilation
3- Loading the class
4- Instantiating the class
5- jspInit() invocation
6- _jspService() invocation
7- jspDestroy() invocation
Can we override JSP lifecycle methods?<br>
init() and destroy() methods can be overriden while service method cant be overridden.
How to override init() and destroy() method?<br>
Declaration statement can be used for this purpose.
Implicit Objects in JSP
Implicit objects are java objects which JSp container provides developer to directly use in JSP page without needs to declare or initiating these objects.
1- request
2- response
3- pageContext
4- session
5- application
6- out
7- config
8- page
9- exception
Different scopes available in JSP
page scope:<br>:<br> It specifies that the object will be available for the entire JSP page but not outside the page. request scope:<br> It specifies that the object will be associated with a particular request and exist as long as the request exists.
application scope:<br> It specifies that the object will be available throughout the entire Web application but not outside the application.
session scope:<br> It specifies that the object will be available throughout the session with a particular client.
Difference between page and pagecontext?<br>
Differences are
1- The page object represents the generated servlet instance itself, i.e., it is same as the “this” keyword used in a Java file
2- The pageContext object represents the environment for the page, contains information like page attributes, access to the request, response and session objects, as well as the JspWriter referenced by out.
3- Page context also has methods for including another URL’s contents, and for forwarding or redirecting to another URL
What is the difference between ServletContext and PageContext?<br>
ServletContext:<br> Gives the information about the container.
PageContext:<br> Gives the information about the Request.
Difference between ServletContext and ServletConfig?<br>
ServletConfig:<br>
1- One ServletConfig Object is created per servlet
2- It can be used to access ServletContext
3- Parameters are configured in DD(deployment description)
ServletContext
1- One ServletContext will be created per web application.
2- Can be used to access web app parameter.
3- Can be used to get server Info.
Difference between request.getRequestDispatcher() and context.getRequestDispatcher()?<br>
request.getRequestDispatcher(path):<br> In order to create it we need to give the relative path of the resource,
context.getRequestDispatcher(path):<br> In order to create it we need to give the absolute path of the resource.
How to pass information from JSP to included JSP?<br>
Using 
Services provided by Container
1- Transaction management for the bean
2- Security for the bean
3- Persistence of the bean
4- Remote access to the bean
5- Lifecycle management of the bean
6- Database-connection pooling
7- Instance pooling for the bean
Advanced java interview questions  - contributed bu Rohit Srivastava
Can we compare String using equality operator (==) operator?<br>
What is intern() method in Java?<br>
When is class garbage collected?<br>
What is the difference between a Choice and a List?<br>
What is JCA in java?<br> 
What is JPA in java?<br>
What is difference between eager and lazy loading?<br>
What is JMS in Java?<br>
What is shallow cloning and deep cloning?<br>
What is the difference between applications and applets?<br>
What are Class loaders?<br>
What is the Comparable interface?<br>
What is Single Threaded Model in Servlets?<br>
What are the different Authentication Options available in Servets?<br>
What is the disadvantage of garbage collector?<br> 
Does java support global variable?<br> 
Explain different layout manager in Java.
What is chained exceptions in java?<br>
When is the main thread stop in java?<br>
What are the ways to create child threads?<br>
Why bytecode is important to Java?<br>
What is an Iterator and explain traversing through a collector using Iterator?<br>
What is Race condition?<br> 
What is difference between Java and JavaScript?<br>
What is the difference between factory and abstract factory pattern?<br>
What is Singleton?<br> 
What is the difference between JAR and WAR files?<br>
Can we compare String using equality operator (==) operator?<br>
We can compare String using equality operator. But we mostly use equals() method because of following reasons:<br>
<br>&#9830;&nbsp;&nbsp;The equality operator is used to compare primitives values only where as equals method() should be used to compare objects. 
<br>&#9830;&nbsp;&nbsp;The equality operator can invoke subtle issue while comparing primitive to Object. Where as equals() method is used to perform character based comparison. 
<br>&#9830;&nbsp;&nbsp;equals() return true if two String represent to the same object or when both strings contents are exactly same but equality() perator returns true if two String object represents to same object but return false if two different String object contains same contents
What is intern() method in Java?<br>
The intern() method is of String class. The intern() method is supposed to return the String from the String pool if the String is found in String pool, otherwise a new string object will be added in String pool and the reference of this String is returned.
Example:<br>
String str1 = "hello";
String str2 = "hello";
String str3 = "hello".intern();
if ( s1 == s2 ){
System.out.println("str1 and str2 are same"); 
}
if ( str1 == str3 ){
System.out.println("str1 and str3 are same" ); 
}
We are assuming that str1 and str3 are same will be printed as str3 is interned, and str1 and str2 are same will not be printed. Actual output is:<br> both lines are printed. Which make clear that by default String constants are interned?<br>
When is class garbage collected?<br>
Java uses the garbage collector to free memory which is occupied by those objects which is no more reference by any of the program. An object becomes eligible for Garbage Collection when no live thread can access it. There are many ways to make a class reachable and thus prevent it from being eligible for Garbage Collection:<br>
<br>&#9830;&nbsp;&nbsp;Objects of that class are still reachable. 
<br>&#9830;&nbsp;&nbsp;Class object representing the class is still reachable. 
<br>&#9830;&nbsp;&nbsp;ClassLoader that loaded the class is still reachable. 
<br>&#9830;&nbsp;&nbsp;Other classes loaded by the ClassLoader are still reachable.
When all of the above are false, then the ClassLoader together with all classes it loaded are eligible for Garbage Collection.
What is the difference between a Choice and a List?<br>
The between Choice and list are following:<br>
<br>&#9830;&nbsp;&nbsp;Choice class presents a pop-up menu of choices whereas List is a collection of different visible item. 
<br>&#9830;&nbsp;&nbsp;Choice is displayed in a compact form, to see the list of available choices we need to scroll down whereas list displays the entire available items. 
<br>&#9830;&nbsp;&nbsp;Choice allows selecting only one items but List supports the selection of one or more List items. 
<br>&#9830;&nbsp;&nbsp;Lists typically allow duplicate elements selection. List allow pairs of elements e1 and e2 such that e1.equals(e2), and they typically allow multiple null elements if they allow null elements at all.
What is JCA in java?<br> 
Java Cryptography Architecture term from Sun for implementing security functions for the Java platform. It provides a platform and gives architecture and APIs for encryption and decryption. JCA is used by the developer to combine the application with the security measure. A programmer uses the JCA to meet the security measure. It helps in performing the third partly security rules. It uses the hash table, encryption message digest, etc to implement the security.
What is JPA in java?<br>
The Java Persistence API is enabling us to create the persistence layer for desktop and web applications. Java Persistence deals in following:<br>
<br>&#9830;&nbsp;&nbsp;Java Persistence API 
<br>&#9830;&nbsp;&nbsp;Query language 
<br>&#9830;&nbsp;&nbsp;Java Persistence Criteria API 
<br>&#9830;&nbsp;&nbsp;Object mapping metadata
What is difference between eager and lazy loading?<br>
The difference between eager and loading are:<br>
<br>&#9830;&nbsp;&nbsp;Eager loading means to load the data before the requirement whereas lazy loading mean that load the data only when required. 
<br>&#9830;&nbsp;&nbsp;Eager loading fetch the data in one query whereas lazy loading fetch the data when needed by triggering the sub query.
What is JMS in Java?<br>
Java Message Service (JMS) is used for creating the communication interface between two clients by using the message passing services. This helps the application to interact with other components irrespective of components location whether they rely on same system or connect to the main system through LAN or internet.
What is shallow cloning and deep cloning?<br>
Shallow copy:<br> in this object is copied without its contained objects. Shallow clone only copies the top level structure of the object not the lower levels. It is an exact bit copy of all the attributes. 
Deep copy:<br> In this object is copied along with the objects it refers to. Deep clone copies all the levels of the object from top to the bottom recursively. 
What is the difference between applications and applets?<br>
The differences between an Applet and an application are as follows:<br>
<br>&#9830;&nbsp;&nbsp;Applets can be embedded in HTML pages and downloaded over the Internet whereas Applications have no special support in HTML for embedding or downloading. 
<br>&#9830;&nbsp;&nbsp;Application starts execution with its main method whereas applet starts execution with its init method. 
<br>&#9830;&nbsp;&nbsp;Application must be run on local machine whereas applet needs no explicit installation on local machine. 
<br>&#9830;&nbsp;&nbsp;Application must be run explicitly within a java-compatible virtual machine whereas applet loads and runs itself automatically in a java-enabled browser. 
<br>&#9830;&nbsp;&nbsp;Application can run with or without graphical user interface whereas applet must run within a graphical user interface.
What are Class loaders?<br>
Class loader enables the program to load the class at run time. This is located in the java.lang package.
Using Class Loader we can also load the customize classes which is required for the application execution. The class loaders in Java are organized in a tree. When JVM is started three class loaders are used:<br>
<br>&#9830;&nbsp;&nbsp;Bootstrap class loader:<br> the core java libraries. It is written in native code. 
<br>&#9830;&nbsp;&nbsp;Extensions class loader:<br> loads the code in the extension directories. It is implemented by ExtClassLoader class. 
<br>&#9830;&nbsp;&nbsp;System class loader:<br> code found on the java.class.path which map to the system class path variables. It is implemented by AppClassLoader class. All user classes by default are load by the system class loader.
What is the Comparable interface?<br>
The Comparable interface is used to sort collections and arrays of objects using the collections.sort() and java.utils. The objects of the class implementing the Comparable interface can be ordered. All classes implementing the Comparable interface must implement the compareTo() method that has the return type as an integer. The signature of the compareTo() method is as follows:<br>
int i = object1.compareTo(object2)
<br>&#9830;&nbsp;&nbsp;If object1 < object2:<br> The value of i returned will be negative. 
<br>&#9830;&nbsp;&nbsp;If object1 > object2:<br> The value of i returned will be positive. 
<br>&#9830;&nbsp;&nbsp;If object1 = object2:<br> The value of i returned will be zero.
What is Single Threaded Model in Servlets?<br>
Single Thread Model is a marker interface which contains no methods and variable in it.
<br>&#9830;&nbsp;&nbsp;When using Single thread model with Servlet, it make sure that that only one thread can be executed at a time. It avoids running of two or more thead simultaneously. 
<br>&#9830;&nbsp;&nbsp;If we wants to make single threaded we can implement this interface in the following fashion.
public class SingleThreadedTest implements SingleThreadModel
{
//some code
}
What are the different Authentication Options available in Servets?<br>
Authentication options available in Servlets:<br> There are four different options for authentication in servlet:<br>
1. Basic Authentication:<br> Username and password provided by the client to authenticate the user.
2. Form-based authentication- In this the login form is made by the programmer by using HTML.
3. Digest Authentication- It is similar to basic authentication but in this the passwords are encrypted using Hash formula. This makes digest more secured.
4. Client certificate Authentication- It requires that each client accessing the resource has a certificate that it send to authenticate itself. This requires SSL protocol.
What is the disadvantage of garbage collector?<br> 
Garbage Collector runs in its own thread which affects the performance of the system. It increases the workload of JVM because it constantly monitor the object which is not referenced.. The two main disadvantages of garbage collector are:<br>
<br>&#9830;&nbsp;&nbsp;TIME:<br> to collect all those no referenced object JVM spends a considerable amount of time by scanning the entire heap. 
<br>&#9830;&nbsp;&nbsp;Mark and sweep:<br> some time it is difficult to implement mark and sweep in the application.
Does java support global variable?<br> 
No, java does not support global variable because of the following reasons:<br>
<br>&#9830;&nbsp;&nbsp;Globally accessible:<br> global variables are globally accessible. 
<br>&#9830;&nbsp;&nbsp;Referential transparency:<br>global variable breaks the referential transparency and also a global variable generate problem in the namespace. 
<br>&#9830;&nbsp;&nbsp;Object oriented:<br> As JAVA is object oriented language so where each variable is declared inside the class. To use this variable, object should be initialized.
Explain different layout manager in Java. 
There are following types of layouts are used to organize or to arrange objects:<br>
<br>&#9830;&nbsp;&nbsp;Border Layout:<br> Have five areas for holding components:<br> north, east, west, south and center. 
<br>&#9830;&nbsp;&nbsp;Flow Layout:<br> Default layout manager, lays out the components from left to right 
<br>&#9830;&nbsp;&nbsp;Card Layout:<br> Different components at different times are laid out, Controlled by a combo box. 
<br>&#9830;&nbsp;&nbsp;Grid Layout:<br> Group of components are laid out I equal size and displays them in certain rows and columns. 
<br>&#9830;&nbsp;&nbsp;Grid Bag Layout:<br> Flexible layout for placing components within a grid of cells.
What is chained exceptions in java?<br>
When in a program the first exception causes another exception that is termed as Chained Exception. Chained exceptions helps in finding the root cause of the exception that occurs during application’s execution. The constructors that support chained exceptions in Throwable classes are:<br>
<br>&#9830;&nbsp;&nbsp;Throwable initCause(Throwable) 
<br>&#9830;&nbsp;&nbsp;Throwable(Throwable) 
<br>&#9830;&nbsp;&nbsp;Throwable(String, Throwable) 
<br>&#9830;&nbsp;&nbsp;Throwable getCause()
When is the main thread stop in java?<br>
When we execute the java program, it call the main() method because main() method is the first thread in the program. This main() method or thread invokes the other thread which is required for the complete execution of the program. The main thread should be the last thread in the program to end. so to make main() method to be last we make sure when we called to another function by giving execution control to that must return the control back to the main() method.
What are the ways to create child threads?<br>
There are two ways to create java threads:<br>
<br>&#9830;&nbsp;&nbsp;Implementing the Runnable interface:<br> this overcomes the limitation of inheriting from only one parent class Thread. Using Runnable interface, lays a path to ground work of a class that utilizes threads 
<br>&#9830;&nbsp;&nbsp;Extending Thread class:<br> It inherits the methods and data members, fields from the class tread. In this process only one class can be inherited from the parent class Thread.
The advantage is a class can extend Thread class and also implements the Runnable interface, if required. The Runnable interface is set for implementing a thread and the class that implements the interface performs all the work.
Why bytecode is important to Java?<br>
The compiled Java source code is known as byte code. We need bytecode due to following reasons:<br>
<br>&#9830;&nbsp;&nbsp;Is independent of the input language. 
<br>&#9830;&nbsp;&nbsp;Plays an important role in the execution speed of the application. 
<br>&#9830;&nbsp;&nbsp;Can run on any platform irrespective of system architecture. 
<br>&#9830;&nbsp;&nbsp;Can be used for internet applications where security is important 
<br>&#9830;&nbsp;&nbsp;Enable us to load classes which are required for the execution of the application. 
<br>&#9830;&nbsp;&nbsp;allows the web applications to run on various platforms, on various browsers on different infrastructures.
What is an Iterator and explain traversing through a collector using Iterator?<br>
We can access each element in the Collection by using Iterators irrespective of how they are organized in the collector. Iterator can be implemented a different way for every Collection. To use an iterator to traverse through the contents of a collection we do:<br>
<br>&#9830;&nbsp;&nbsp;Obtain an iterator by calling the collections iterator() method to the start of the collection. 
<br>&#9830;&nbsp;&nbsp;Set up a loop that makes a call to hasNext(). Have the loop iterate as long as hasNext()returns true. 
<br>&#9830;&nbsp;&nbsp;Within the loop, obtain each element by calling next(). 
<br>&#9830;&nbsp;&nbsp;remove() method is used to remove the current element in the iteration.
What is Race condition?<br> 
Race Condition:<br> it is the situation when two threads raise the request for the same resource allocation, but the manner in which resources are allocated are significant, is called race conditions. 
<br>&#9830;&nbsp;&nbsp;Race condition is created in program in order to run the parallel execution of program by using multiple threads in a same period. 
<br>&#9830;&nbsp;&nbsp;A race condition occurs when two threads operate on same object without proper synchronization and there operation interleaves on each other. 
<br>&#9830;&nbsp;&nbsp;The risk of Race condition is higher in Java.
What is difference between Java and JavaScript?<br>
The difference between java and java scripts are:<br>
<br>&#9830;&nbsp;&nbsp;Java is an Object Oriented Programming Language and capable of running on multiple operating systems with the help of interpreter whereas Java Script is the object oriented scripting language and it is embedded in HTML and runs directly on the browser. 
<br>&#9830;&nbsp;&nbsp;JVM is used to executed java program on different program whereas Java Script code is not compiled they are directly run on the browser. 
<br>&#9830;&nbsp;&nbsp;Java language is used to develop the software whereas java script is used providing interactivity to the simple HTML pages.
What is the difference between factory and abstract factory pattern?<br>
The differences between factory and abstract factory are following:<br>
<br>&#9830;&nbsp;&nbsp;Factory pattern is a single method but abstract factory is an object. 
<br>&#9830;&nbsp;&nbsp;The Abstract Factory pattern is one level of abstraction higher than the factory pattern. 
<br>&#9830;&nbsp;&nbsp;Factory pattern generally returns the common parent class or method whereas the abstract factory pattern returns the one of the several factories.
What is Singleton?<br> 
Singleton in Java is a class with just one instance in whole Java application.
<br>&#9830;&nbsp;&nbsp;This make sure that only one instance of a class is created. 
<br>&#9830;&nbsp;&nbsp;getInstance() method is used to get single instance of the class. 
<br>&#9830;&nbsp;&nbsp;It creates a global point to access all object 
What is the difference between JAR and WAR files?<br>
The differences between JAR and WAR files are:<br>
<br>&#9830;&nbsp;&nbsp;JAR files (Java Archive) allows combining many files into one whereas WAR files (Web Application Archive) stores XML, java classes, and JavaServer pages for Web Application purposes. 
<br>&#9830;&nbsp;&nbsp;JAR is used to hold Java classes in a library whereas in WAR files are stored in lib directory of the application. 
<br>&#9830;&nbsp;&nbsp;In this EJB module which contains enterprise java beans class files and EJB deployment descriptor are packed as JAR files with .jar extension whereas in WAR web modules which contains Servlet class files, JSP Files, GIF and HTML files are packaged as JAR file with .war extension.
Explain the difference between StringBuilder and StringBuffer class.
What is a StringBuffer class and how does it differ from String Class?<br>
What is MAP and SortedMap interface?<br>
Difference between static and dynamic class loading.
What is Bootstrap,Extension and System Class Loader?<br>
Can you explain the directory structure for a Struts folder in brief?<br>
What are action and action form classes in Struts?<br>
How does the native language C or C++ understand data types in JAVA?<br>
<p>Explain Exception handling in JNI.
<p>What are the advantages and disadvantages of using JNI?<br>
<p>Explain the difference between ServletsContext and ServletConfig.
<p>Why is HTTP protocol called as a stateless protocol?<br>
<p>Can you explain the relation between class and object?<br> Explain with an example
<p>What is the difference between throw and throws clause, explain programmatically
<p>What is meant by Tomcat in java and its usage?<br>
<p>Difference between Tomcat and Weblogic server.
<p>More advanced java interview questions - senior level java interview
<p>Explain the usage of serialization.
<p>Objects are serialized when need to be sent over network.
<p>They are serialized when the state of an object is to be saved.
<p>How are Observer and Observable used?
<p>The observable class represents an observable object.
<p>The object to be observed can be represented by sub-classing observable class.

</p>
</article>
	<%@include file="footer.jsp"%>