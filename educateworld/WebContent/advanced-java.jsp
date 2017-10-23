	<!DOCTYPE html>
	<%@include file="header.jsp"%>
	<h1>Welcome to Educate World Website</h1>
<p>Jdbc
Q: What is the JDBC??
Ans: Java Database Connectivity (JDBC) is a standard Java API to interact with relational databases form Java. JDBC has set of classes and interfaces which can use from Java application and talk to database without learning RDBMS details and using Database Specific JDBC Drivers.
Q: What are the new features added to JDBC 4.0?
Ans:The major features added in JDBC 4.0 include :
1- Auto-loading of JDBC driver class
2- Connection management enhancements
3- Support for RowId SQL type
4- DataSet implementation of SQL using Annotations
5- SQL exception handling enhancements SQL XML support
Q: Explain Basic Steps in writing a Java program using JDBC?
Ans:JDBC makes the interaction with RDBMS simple and intuitive. When a Java application needs to access database :
Load the RDBMS specific JDBC driver because this driver actually communicates with the database (Incase of JDBC 4.0 this is automatically loaded).
Open the connection to database which is then used to send SQL statements and get results back.
Create JDBC Statement object. This object contains SQL query.
Execute statement which returns resultset(s). ResultSet contains the tuples of database table as a result of SQL query.
Process the result set.
Close the connection.
Q: What are the main components of JDBC ?
Ans: The life cycle of a servlet consists of the following phases: DriverManager: Manages a list of database drivers. Matches connection requests from the java application with the proper database driver using communication subprotocol. The first driver that recognizes a certain subprotocol under JDBC will be used to establish a database Connection.
Driver: The database communications link, handling all communication with the database. Normally, once the driver is loaded, the developer need not call it explicitly.
Connection : Interface with all methods for contacting a database.The connection object represents communication context, i.e., all communication with database is through connection object only.
Statement : Encapsulates an SQL statement which is passed to the database to be parsed, compiled, planned and executed.
ResultSet: The ResultSet represents set of rows retrieved due to query execution.
Q: How do I load a database driver with JDBC 4.0 / Java 6?
Ans: Provided the JAR file containing the driver is properly configured, just place the JAR file in the classpath. Java developers NO longer need to explicitly load JDBC drivers using code like Class.forName() to register a JDBC driver.The DriverManager class takes care of this by automatically locating a suitable driver when the DriverManager.getConnection() method is called. This feature is backward-compatible, so no changes are needed to the existing JDBC code.
Q: What is JDBC Driver interface?
Ans: The JDBC Driver interface provides vendor-specific implementations of the abstract classes provided by the JDBC API. Each vendor driver must provide implementations of the java.sql.Connection,Statement,PreparedStatement, CallableStatement, ResultSet and Driver.
Q: What does the connection object represents?
Ans: The connection object represents communication context, i.e., all communication with database is through connection object only.
Q: What is Statement ?
Ans: Statement acts like a vehicle through which SQL commands can be sent. Through the connection object we create statement kind of objects. Through the connection object we create statement kind of objects.
Statement stmt = conn.createStatement();
Q: What is PreparedStatement?
Ans: A prepared statement is an SQL statement that is precompiled by the database. Through precompilation, prepared statements improve the performance of SQL commands that are executed multiple times (given that the database supports prepared statements). Once compiled, prepared statements can be customized prior to each execution by altering predefined SQL parameters.
Q: What are callable statements ?
Ans: Callable statements are used from JDBC application to invoke stored procedures and functions.
Q: Does the JDBC-ODBC Bridge support multiple concurrent open statements per connection?
Ans:No. You can open only one Statement object per connection when you are using the JDBC-ODBC Bridge.
Q: Which is the right type of driver to use and when?
Ans: Type I driver is handy for prototyping Type III driver adds security, caching, and connection control Type III and Type IV drivers need no pre-installation
Q: What are the standard isolation levels defined by JDBC?
Ans: The values are defined in the class java.sql.Connection and are:
TRANSACTION_NONE
TRANSACTION_READ_COMMITTED
TRANSACTION_READ_UNCOMMITTED
TRANSACTION_REPEATABLE_READ
TRANSACTION_SERIALIZABLE
Q: What is resultset ?
Ans: The ResultSet represents set of rows retrieved due to query execution.
ResultSet rs = stmt.executeQuery(sqlQuery);
Q: What are the types of resultsets?
Ans: The values are defined in the class java.sql.Connection and are:
TYPE_FORWARD_ONLY specifies that a resultset is not scrollable, that is, rows within it can be advanced only in the forward direction.
TYPE_SCROLL_INSENSITIVE specifies that a resultset is scrollable in either direction but is insensitive to changes committed by other transactions or other statements in the same transaction.
TYPE_SCROLL_SENSITIVE specifies that a resultset is scrollable in either direction and is affected by changes committed by other transactions or statements within the same transaction.
Note: A TYPE_FORWARD_ONLY resultset is always insensitive.
Q: What is rowset?
Ans: A RowSet is an object that encapsulates a set of rows from either Java Database Connectivity (JDBC) result sets or tabular data sources like a file or spreadsheet. RowSets support component-based development models like JavaBeans, with a standard set of properties and an event notification mechanism.
Q: What are the different types of RowSet ?
Ans: There are two types of RowSet are there. They are:
Connected – A connected RowSet object connects to the database once and remains connected until the application terminates.
Disconnected – A disconnected RowSet object connects to the database, executes a query to retrieve the data from the database and then closes the connection. A program may change the data in a disconnected RowSet while it is disconnected. Modified data can be updated in the database after a disconnected RowSet reestablishes the connection with the database.
Q: What is a DataSource?
Ans: A DataSource object is the representation of a data source in the Java programming language. In basic terms,
A DataSource is a facility for storing data.
DataSource can be referenced by JNDI.
Data Source may point to RDBMS, file System , any DBMS etc..
Q: What are the advantages of DataSource?
Ans: The few advantages of data source are :
1- An application does not need to hardcode driver information, as it does with the DriverManager.
2- The DataSource implementations can easily change the properties of data sources. For example: There is no need to modify the application code when making changes to the database details.
3- The DataSource facility allows developers to implement a DataSource class to take advantage of features like connection pooling and distributed transactions.
What are the types of statements in JDBC?
JDBC API has 3 Interfaces and their key features of these are as follows:
Statement: which is used to run simple SQL statements like select and update. Statement interfaces use for general-purpose access to your database. It is useful when you are using static SQL statements at runtime. The Statement interface cannot accept parameters.
Prepared Statement: A SQL statement is pre-compiled and stored in a Prepared Statement object. It is used to run Pre compiled SQL. This object can then be used to efficiently execute this statement multiple times. The object of Prepared Statement class can be created using Connection.prepareStatement() method. This extends Statement interface.
Callable Statement: This interface is used to execute the stored procedures. This extends Prepared Statement interface. The object of Callable Statement class can be created using Connection.prepareCall() method.
What causes No suitable driver error?
"No suitable driver" is occurs during a call to the DriverManager.getConnection method, may be of any of the following reason:
•	Due to failing to load the appropriate JDBC drivers before calling the getConnection method. 
•	It can be specifying an invalid JDBC URL, one that is not recognized by JDBC driver. 
•	This error can occur if one or more the shared libraries needed by the bridge cannot be loaded
What does setAutoCommit do?
setAutoCommit() invoke the commit state query to the database. To perform batch updation we use the setAutoCommit() which enable us to execute more than one statement together, which in result minimize the database call and send all statement in one batch. 

setAutoCommit() allowed us to commit the transaction commit state manually the default values of the setAutoCommit() is true.
Why Prepared Statements are faster?
Prepared execution is faster than direct execution for statements executed more than three or four times because the statement is compiled only once. Prepared statements and JDBC driver are linked with each other. We can bind drivers with columns by triggering the query into the database. When we execute Connection.prepareStatement(), all the columns bindings take place, in oder to reduce the time.
What restrictions are placed on method overriding?
The restriction on method overloading is the signature of the method. 
•	The signature is the number, type, and order of the arguments passed to a method. 
•	Overridden methods must have the same name, argument list, and return type. 
•	Any method which has the same name cannot have the same signature. 
•	They can have the same return types in the same scope. 
•	The compiler uses the signature to detect which overloaded method to refer when a overloaded method is called. 
•	If two methods have the same name and signature the compiler will throw a runtime error.
What are types of JDBC drivers?
There are four types of drivers defined by JDBC as follows:
•	JDBC/ODBC: These require an ODBC (Open Database Connectivity) driver for the database to be installed. It is used for local connection. 
•	Native API (partly-Java driver): This type of driver uses a database API to interact with the database. It also provides no host redirection. 
•	Network Protocol Driver: It makes use of a middle-tier between the calling program and the database. The client driver communicates with the net server using a database-independent protocol and the net server translates this protocol into database calls. 
•	Native Protocol Drive: This has a same configuration as a type 3 driver but uses a wire protocol specific to a particular vendor and hence can access only that vendor's database. 
Is it possible to connect to multiple databases simultaneously? Using single statement can one update or extract data from multiple databases?
Yes, it is possible but it depends upon the capabilities of the specific driver implementation, we can connect to multiple databases at the same time. We doing following steps:
•	Minimum one driver will be used to handle the commits transaction for multiple connections. 
•	To update and extract data from the different database we use single statement for this we need special middleware to deal with multiple databases in a single statement or to effectively treat them as one database.
What are the differences between setMaxRows(int) and SetFetchSize(int)?
The difference between setFetchSize and setMaxRow are:
•	setFetchSize(int) defines the number of rows that will be read from the database when the ResultSet needs more rows whereas setMaxRows(int) method of the ResultSet specifies how many rows a ResultSet can contain at a time. 
•	In setFetchSize(int), method in the java.sql.Statement interface will set the 'default' value for all the ResultSet derived from that Statement whereas in setMaxRow(int) default value is 0, i.e. all rows will be included in the ResultSet. 
•	the setMaxRows affects the client side JDBC object while the setFetchSize affects how the database returns the ResultSet data.
How can I manage special characters when I execute an INSERT query? 
The special characters meaning in SQL can be preceded with a special escape character in strings, e.g. "\". In order to specify the escape character used to quote these characters, include the following syntax on the end of the query:
{escape 'escape-character'}

For example, the query

SELECT NAME FROM IDENTIFIERS WHERE ID LIKE '\_%' {escape '\'}
finds identifier names that begin with an underscore.
What is the benefit of having JdbcRowSet implementation? Why do we need a JdbcRowSet like wrapper around ResultSet?
The JdbcRowSet implementation is a wrapper around a ResultSet object has following advantages over ResultSet:
•	It makes possible to use the ResultSet object as a JavaBeans component. 
•	A JdbcRowSet can be used as a JavaBeans component, thus it can be created and configured at design time and executed at run time. 
•	It can be used to make a ResultSet object scrollable and updatable. All RowSet objects are by default scrollable and updatable.
Explain Basic Steps in writing a Java program using JDBC.
JDBC makes the interaction with RDBMS simple and intuitive. When a Java application needs to access database :
•	Load the RDBMS specific JDBC driver because this driver actually communicates with the database. 
•	Open the connection to database, for sending SQL statements and get results back. 
•	Create JDBC Statement object containing SQL query. 
•	Execute statement which returns result set. ResultSet contains the tuples of database table as a result of SQL query. 
•	Process the result set. 
•	Close the connection.
I have the choice of manipulating database data using a byte[] or a java.sql.Blob. Which has best performance?
We use java.sql.Blob, because of following reason:
•	It does not extract any data from the database until we trigger a query to the databse. 
•	We use byte[] for inserting data in the database when data is not upload in the database till yet. 
•	java.sql.Blob is used when extraction of the data is performed.
What are DML and DDL?
Data Manipulation Language (DDL) this portion of the SQL standard is concerned with manipulating the data in a database as opposed to the structure of a database. The DML deals with the SELECT, INSERT, DELETE, UPDATE, COMMIT and ROLLBACK.

Data Definition Language (DDL) this portion of the SQL standard is concerned with the creation, deletion and modification of database objects like tables, indexes and views. The core verbs for DDL are CREATE, ALTER and DROP. While most DBMS engines allow DDL to be used dynamically, it is often not supported in transactions.
How can you load the drivers?
It is very simple and involves just one line of code to load the driver or drivers we want to use.
For example, We want to use the JDBC-ODBC Bridge driver, the following code will load it:
Class.forName(”sun.jdbc.odbc.JdbcOdbcDriver”);

Driver documentation will give you the class name to use. For instance, if the class name is jdbc.DriverHELLO, you would load the driver with the following line of code:

Class.forName(”jdbc.DriverHELLO”);
How do I insert an image file (or other raw data) into a database?
All raw data types should be read and uploaded to the database as an array of bytes, byte[].
•	Originating from a binary file. 
•	Read all data from the file using a FileInputStream. 
•	Create a byte array from the read data. 
•	Use method setBytes(int index, byte[] data); of java.sql.PreparedStatement to upload the data.
1.Explain the Java packages which contains JDBC classes and interfaces, Java.SQL, Javax.SQL
Latest answer: java.sql: java.sql is an API to access and process the data stored in a database, typically a relational database using the java. Different drivers can be installed dynamically for the access of various.................
Read answer
JDBC online test
2. Describe how to open a database connection using JDBC.
Latest answer: Opening a database connection: The database connection should be established after registering the drivers. The getConnection is used to open a database connection. The following code snippet illustrates this:.................
Read answer
3. Describe with an example how to send SQL statements to databases for execution.
Latest answer: The following illustrates with examples, to send SQL statements to databases for execution: The SQL statements are to be created as objects. These objects are to be assigned to Statement reference..................
Read answer
4. What is a “dirty read”?
Latest answer: In typical database transactions, one transaction reads changes the value while the other reads the value before committing or rolling back by the first transaction..................
Read answer
5. What is cold backup, hot backup, warm backup recovery?
Latest answer: Cold backup is a recovery technique, in which the files must be backed up before the database is restarted at the same time..................
Read answer
6. What is 2 phase commit? 
Latest answer: Distributed transactions are performed by relational databases. To ensure each and every transaction to perform in an orderly manner, a process is implemented..................
Read answer 
7.What are different types of resultset in JDBC?
Latest answer: Resultset contains results of the SQL query. There are 3 basic types of resultset. Forward-only: As name suggest, this type can only move forward and are non-scrollable..............
Read answer
8.What are different transaction levels in JDBC?
Latest answer: Transaction Isolation levels is used to implement locking. They decide how one process isolated from other is. We have four Transaction Isolation Levels..........
Read answer
9. Explain optimistic and pessimistic locking in JDBC.
Latest answer: There are two kinds of locking available in JDBC. Optimistic Locking, Pessimistic Locking.............
Read answer
JDBC interview questions - Oct 15, 2010
Explain the different types of Transaction Isolation Levels.
What is a "dirty read"?
What is the fastest type of JDBC driver? 
What is the difference between different JDBC drivers? 
What are collection pools? What are the advantages?
What is cold backup, hot backup, warm backup recovery?
What is the difference between cached rowset, jdbrowset and webrowset?
What is Metadata and why should I use it?
What is the difference between Statement, PreparedStatement and CallableStatemen?
What are different types of isolation levels in JDBC and explain where you can use them?
What actually does Class.forName("mypackage.MyDriver"); method do?
How do you get Column names only for a table (SQL Server)? Write the Query.
What is a data source? 
What is 2 phase commit?
How do you handle your own transaction ? 
What Class.forName will do while loading drivers?
Can we maintain two database connection in single application? How can we achieve that? 
What is the normal procedure followed by a java client to access the db? 
Explain the advantage of using PreparedStatement.
Does the JDBC-ODBC Bridge support multiple concurrent open statements per connection?
How to call a Stored Procedure from JDBC? 
How does the Application server handle the JMS Connection?
When we will Denormalize data?
What is the query used to display all tables names in SQL Server (Query analyzer)?
Is the JDBC-ODBC Bridge multi-threaded? 
How to Retrieve Warnings? 
what are stored procedures? How is it useful?
How many types of JDBC Drivers are present and what are they?
JDBC Interview - July 31, 2008, 17:35 pm by Amit Satpute
10.What causes the "No suitable driver" error?
Failure to load the appropriate JDBC driver before giving a call to DriverManager.getConnection method causes ‘No Suitable Driver’ error............. 
Read answer 
11.Is the JDBC-ODBC Bridge multi-threaded?
NO. The JDBC-ODBC Bridge uses synchronized methods to serialize all of the calls made to ODBC. The concurrent access from multiple threads is not supported by the bridge...........
Read answer
12.What is an SQL Locator?
DBMS uses the logical pointers as identifiers to locate and manipulate the data. A Locator is an SQL3 data-type which acts as a logical pointer to the data on a database server.............. 
Read answer 
13.What is optimistic concurrency control?
In optimistic concurrency control, locks are granted without performing conflict checks. In this, a track of files which have been read or written is maintained............. 
Read answer 
14.What is pessimistic concurrency?
In this approach, each transaction is assigned a timestamp. One can make sure that they are unique using algorithms like Lamport. ............ 
Read answer 
15.Why doesn't JDBC accept URLs instead of a URL string?
The URLs need to be converted to strings as there is no single universal protocol to treat the URLs as strings in JDBC databases.......... 
Read answer 
16.What JDBC objects generate SQLWarnings?
Connections, Statements and ResultSets generate SQLWarnings through getWarnings method.......
Read answer 
17.How do I create an updatable ResultSet?
For the results to be updatable, the Statement object used to create the result sets must have the concurrency type ResultSet.CONCUR_UPDATABLE............ 
Read answer 
18.How do I insert an image file (or other raw data) into a database?
Upload all raw data-types (like binary documents) to the database as an array of bytes (bytes[]). Then you can,............ 
Read answer 
19.What is the advantage of using a PreparedStatement?
A Prepared Statement Object would be faster than a Statement Object where repeated execution of SQL statements is required...........
Read answer
20.What’s the difference between TYPE_SCROLL_INSENSITIVE , and TYPE_SCROLL_SENSITIVE?
Static int TYPE_SCROLL_INSENSITIVEL:  Constant indicating that the type for a ResultSet object is scrollable but not sensitive to changes made by others.......... 
Read answer 
21.What are the different types of RowSet?
There are two types of RowSet: Connected: A connected RowSet Object is permanent in nature. It doesn’t terminate until the application is terminated.......... 
Read answer 
22.How can you retrieve data from the ResultSet?
Create a result set containing all data from..... 
Read answer 
23.What is a non-repeatable read?
A Non-repeatable read is where one transaction cannot read the second time unless another transaction alters the row............ 
Read answer 
24.What is phantom read?
If you execute a query at time T1 and re-execute it at time T2, additional rows may have been added to the database, which may affect your results...........
Read answer
25.Advantages of JDBC.
Provide Existing Enterprise Data: Businesses can continue to use their installed databases and access information even if it is stored on different database management systems......
Read answer
26.What will Class.forName do while loading drivers?
When you have loaded a driver, it is available for making a connection with a DBMS. It is used to create an instance of a driver and register it with the DriverManager.............
Read answer
27.What are the different types of driver?
JDBC-ODBC Bridge: The translation of JDBC calls into ODBC calls and sending to the ODBC driver is done by this driver. These drivers are almost accessible to any database. These drivers are not portable. The client system demands the ODBC installation to use the driver.........
Read answer
28.What are the standard isolation levels defined by JDBC?
The values are defined in the class java.sql.Connection and are: 
TRANSACTION_NONE 
TRANSACTION_READ_COMMITTED........... 
Read answer

How do we call stored procedure using JDBC?
1. Discuss the significances of JDBC.
The significances are given below:

• JDBC is the acronym stands for Java Database Connectivity.

• Java Database Connectivity (JDBC) is a standard Java API .

• It's purpose is to interact with the relational databases in Java. 

• JDBC is having a set of classes & interfaces which can be used from any Java application. 

• By using the Database Specific JDBC drivers, it interacts with a database without the applications of RDBMS.
2. Name the new features added in JDBC 4.0.
The major features introduced in JDBC 4.0 are :

• Auto-loading by JDBC driver class. 

• Enhanced Connection management 

• RowId SQL enabled. 

• DataSet implemented by SQL by using Annotations

• Enhancements of SQL exception handling 

• Supporting SQL XML files. 
3. How do Java applications access the database using JDBC? 
Java applications access the database using JDBC by : 

• Communicating with the database for Loading the RDBMS specific JDBC driver 

• Opening the connection with database 

• Sending the SQL statements and get the results back.

• Creating JDBC Statement object which contains SQL query.

• Executing statement to return the resultset(s) containing the tuples of database table which is a result of SQL query.

• Processing the result set.

• Closing the connection.
4. Briefly tell about the JDBC Architecture.
The JDBC Architecture consists of two layers:

1.The JDBC API
2.The JDBC Driver API

• The JDBC API provides the application-JDBC Manager connection.

• The JDBC Driver API supports the JDBC Manager-to-Driver Connection.

• The JDBC API interacts with a driver manager, database-specific driver for providing transparent connectivity for the heterogeneous databases. 

• The JDBC driver manager authenticates that the correct driver has been used to access each data source.

• The driver manager supports multiple concurrent drivers connected to the multiple heterogeneous databases. 
5.Explain the life cycle of JDBC.
The life cycle for a servlet comprises of the following phases:

• DriverManager : for managing a list of database drivers. 

• Driver : for communicating with the database. 

• Connection : for interfacing with all the methods for connecting a database.

• Statement : for encapsulating an SQL statement for passing to the database which had been parsed, compiled, planned and executed.

• ResultSet: for representing a set of rows retrieved for the query execution.
6.Describe how the JDBC application works.
A JDBC application may be divided into two layers:

• Driver layer

• Application layer

• The Driver layer consists of DriverManager class & the JDBC drivers.

• The Application layer begins after putting a request to the DriverManager for the connection.

• An appropriate driver is chosen and used for establishing the connection. 

• This connection is linked to the application layer.

• The application needs the connection for creating the Statement kind of objects by which the results are obtained.
7. How a database driver can be loaded with JDBC 4.0 / Java 6?
• By providing the JAR file , the driver must be properly configured.

• The JAR file is placed in the classpath. 

• It is not necessary to explicitly load the JDBC drivers by using the code like Class.forName() to register in the JDBC driver.

• The DriverManager class looks after this, via locating a suitable driver at the time when the DriverManager.getConnection() method is called. 

• This feature provides backward-compatibility, so no change is needed in the existing JDBC code.
8. What does the JDBC Driver interface do?
• The JDBC Driver interface provides vendor-specific customized implementations of the abstract classes. 

• It is provided normally by the JDBC API. 

• For each vendor the driver provides implementations of the java.sql.Connection,
, PreparedStatement, Driver,Statement, ResultSet and CallableStatement.
9. What is represented by the connection object?
• The connection object represents the communication context.

• All the communication with the database is executed via the connection objects only.

• Connection objects are used as the main linking elements. 
10. What is a Statement ?
• The Statement acts just like a vehicle via which SQL commands are sent.

• By the connection objects, we create the Statement kind of objects.

Statement stmt = conn.createStatement();

• This method returns the object, which implements the Statement interface.
11.Define PreparedStatement.
• A Preparedstatement is an SQL statement which is precompiled by the database.

• By precompilation, the prepared statements improve the performance of the SQL commands that are executed multiple times (given that the database supports prepared statements). 

• After compilation, prepared statements may be customized before every execution by the alteration of predefined SQL parameters.

Code:

PreparedStatement pstmt = conn.prepareStatement("UPDATE data= ? WHERE vl = ?");
pstmt.setBigDecimal(1, 1200.00);
pstmt.setInt(2, 192);
12. Differentiate between a Statement and a PreparedStatement.
• A standard Statement is used for creating a Java representation for a literal SQL statement and for executing it on the database. 

• A PreparedStatement is a precompiled Statement. 

• A Statement has to verify its metadata in the database every time. 

• But ,the prepared statement has to verify its metadata in the database only once.

• If we execute the SQL statement, it will go to the STATEMENT. 

• But, if we want to execute a single SQL statement for the multiple number of times, it’ll go to the PreparedStatement. 
13. What is the function of setAutoCommit?
• When a connection is created, it is in auto-commit mode.

• This means that each individual SQL statement is to be treated as a single transaction .

• The setAutoCommit will be automatically committed just after getting executed. 

• The way by which two or more statements are clubbed into a transaction to disable the auto-commit mode is :

con.setAutoCommit (false);

• Once auto-commit mode is disabled, no SQL statements will be committed until we call the method ‘commit’ explicitly.

Code :

con.setAutoCommit(false);
PreparedStatement updateSales = con.prepareStatement( "UPDATE COFFEE SALES = ? WHERE COF_NAME LIKE ?");
updateSales.setInt(1, 50); updateSales.setString(2, "Colombian");
updateSales.executeUpdate();
PreparedStatement updateTotal =
con.prepareStatement("UPDATE COFFEES SET TOTAL = TOTAL + ? WHERE COF_NAME LIKE ?");
updateTotal.setInt(1, 50);
updateTotal.setString(2, "Colombian");
updateTotal.executeUpdate();
con.commit();
con.setAutoCommit(true);
14 How do we call a stored procedure from JDBC?
• The foremost step is to create a CallableStatement object. 

• With the Statement and PreparedStatement object ,it is done with an open
Connection object. 

• A CallableStatement object contains a call to a stored procedure.

Code:

CallableStatement cs = con.prepareCall("{call SHOW_Sales}");
ResultSet rs = cs.executeQuery();
15. What is SQLWarning and discuss the procedure of retrieving warnings?
• SQLWarning objects, a subclass of SQLException is responsible for the database access warnings.

• Warnings will not stop the execution of an specific application, as exceptions do.

• It simply alerts the user that something did not happen as planned. 

• A warning may be reported on the Connection object, the Statement object (including PreparedStatement and CallableStatement objects) or on the ResultSet object.

• Each of these classes has a getWarnings method, which you must invoke in order to see the first warning reported on the calling object:

Code :
SQLWarning waring = stmt.getWarnings();
if (warning != null)
{
System.out.println("n---Warning---n");
while (warning != null)
{
System.out.println("Message: " + warning.getMessage());
System.out.println("SQLState: " + warning.getSQLState());
System.out.println("Vendor error code: ");
System.out.println(warning.getErrorCode());
System.out.println("");
warning = warning.getNextWarning();
}
}
16. Explain the types of JDBC Drivers and name them.
The 4 types of JDBC Drivers are:

• Pure Java Driver JDBC Net

• Bridge Driver JDBC-ODBC 

• Network protocol Driver

• Partly Java Driver Native API 
17. How can we move the cursor in a scrollable result set?
• The new features added in the JDBC 2.0 API are able to move a resultset’s cursor backward & forward also.

• There are some methods that let you direct the cursor to a particular row and checking the position of the cursor.

Code :

Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, 

ResultSet.CONCUR_READ_ONLY);

ResultSet srs = stmt.executeQuery(”SELECT COF_NAME, Sale _COFFEE”);

• Three constants can be added to the ResultSet API for indicating the kind 

of the ResultSet object. The constants are:

- TYPE_FORWARD_ONLY

- TYPE_SCROLL_INSENSITIVE 

- TYPE_SCROLL_SENSITIVE. 

• The ResultSet constants for specifying whether a resultset is read-only or updatable are: 

- CONCUR_READ_ONLY 

- CONCUR_UPDATABLE. 
18. How do we load the drivers?
• To Load the driver or drivers we need to use a very simple one line of code. 

• If we want to use the JDBC/ODBC Bridge driver, the following code will load it:

Class.forName(”sun.jdbc.odbc.JdbcOdbcDriver”);

• The driver documentation gives the class name to use. 

• For example, if the class name is jdbc.DriverXYZ, we can load the driver using the below line of code:

Code:

Class.forName(”jdbc.DriverXYZ”);
19. What Class.forName does, while loading the drivers? 
• It is used for creating an instance of a driver 

• It is used for registering with theDriverManager.

• When we have loaded a driver, it connects with the DBMS.
20. How can you make a connection? 
• To establish a connection we need to have an appropriate driver, connected to the DBMS.

• The below line of code illustrates the idea:

Code:

String url = “jdbc:odbc: rima”;

Connection con = DriverManager.getConnection(url, “rima”, “J8?);
1. What are the factors that the JDBC driver performance depends on?
The JDBC driver performance depends on:

• The driver code quality 

• The driver code size 

• The database server & its load capability

• The network topology

• The number of times the request is being translated to a different API.
2. How do I find whether a parameter exists in the request object?
• The following code implies it

boolean hasFo = !(request.getParameter("fo") == null

|| request.getParameter("fo").equals("")); 


Or

boolean hasParameter =

request.getParameterMap().contains(theParameter); 
3. Expalin the method of calling a stored procedure from JDBC.
• PL/SQL stored procedures are called from the JDBC programs by creating the prepareCall() in the Connection object. 

• A call to the method prepareCall() carries out variable bind parameters as input parameters, output variables & makes an object instance of the CallableStatement class.

• The following line of code implies this:

Callable Statement stproc_ stmt = conn.prepareCall("{call procname(?,?,?)}");

where conn is the instance of the Connection class.
4. Name the types of JDBC drivers.
The four types of drivers defined by JDBC are:

• Type 1: JDBC/ODBC—This requires an ODBC (Open Database Connectivity) driver for the databases to be installed. This type of drivers work by converting the submitted queries into an equivalent ODBC queries and forwarding them via native API which invokes directly to the ODBC driver. It provides host less redirection capability too.

• Type 2: Native type API (partly-Java driver)—This type of driver uses a vendor-specific driver or database API for interacting with the database. An example of such an API is Oracle OCI (Oracle Call Interface). 

• Type 3: Open Net Protocol —This is vendor non-specific and works by forwarding database requests using a net server component. The net server accesses the database. The client driver connects with the server using a database-indifferent protocol and the server translates this protocol into database calls. 

• Type 4: Proprietary Protocol-Net(pure Java driver)—This is same as per configuration as type 3 driver while it uses a wire protocol directed towards a particular vendor and so it can access only that vendor's database. 
5. Explain how to Make Updates to the Updatable ResultSets.
• The JDBC 2.0 API can update rows in a ResultSet using the methods in the Java rather than using a SQL command. 

• But before doing that, we create a ResultSet object which is updatable. 

• For doing this, we give the ResultSet CONCUR_UPDATABLE in the createStatement method.

Code:
Connection con =
DriverManager.getConnection("jdbc:mySubprotocol:mySubName");
Statement stmt =
con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
ResultSet.CONCUR_UPDATABLE);
ResultSet uprs =
stmt.executeQuery("SELECT COF_NAME, PRICE ");
6.What are the utilities of the callable statements?
• Callable statements are mainly used in the JDBC applications.

• Callable statements are used to invoke stored procedures

• This is mainly used in functions.
7. Differentiate between TYPE_SCROLL_INSENSITIVE and TYPE_SCROLL_SENSITIVE.
• We will get a scrollable ResultSet object if we specify either one of the ResultSet constants.

• The difference between the two depends on, whether a resultset is showing fv changes or not.

• This difference depends on certain methods which are called to detect changes or not. 

• The resultset TYPE_SCROLL_INSENSITIVE does not show the change to it but the ResultSet srs = TYPE_SCROLL_SENSITIVE will show the change. 


The following code explains the difference :

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
8. How JDBC Statements are used?
• A Statement is an object, by which we send an SQL statement to the DBMS. 

• We create a Statement object and then execute it.

• For a SELECT Statement, the method used is executeQuery. 

• The Statement that creates or modifies a table is executeUpdate.

• For creating a Statement object an instance of an active connection is required.

• In the following code, we use our Connection object con to create the Statement object

Statement stmt = con . createStatement();
9. How can we retrieve data from the ResultSet?
• JDBC returns back the results in a ResultSet object. 

• So we have to declare an instance of the class ResultSet to keep the results.

• The following code declares the ResultSet object rs.

ResultSet rs = stmt.executeQuery (”SELECT COF_NAME, PRICE FROM COFFEES”);
String s = rs.getString (”NAME”);

• The method getString calls ResultSet object rs, So getString() retrieves the value stored in the column NAME in the row Ssrs.
10. Name the different types of Statements? How we can you use PreparedStatement.
The different types of Statements are

• Regular statement (uses createStatement method)
• prepared statement (uses prepareStatement method) 
• callable statement (uses prepareCall)


PreparedStatement :

• PreparedStatement is derived from the class Statement.

• To execute a Statement object several times a PreparedStatement object is required.

• The PreparedStatement object contains not only a compiled SQL statement, but also a precompiled SQL statement too. 

Code: 

PreparedStatement updateSales =con.prepareStatement("UPDATE account = ? WHERE CON_NAME ?");
Test your JDBC knowledge with our multiple choice questions!
Also read
Java Threading
What is a thread? What are the advantages we derived by programming with thread?
Explain how to create a thread and start it running.
How does thread’s stop method work.
How do we specify pause times in my program?...........
JNDI, Java naming and directory interfaces
What is a naming service?
What is a directory service?
What is LDAP?............ 
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
ECAs: Event Condition Actions

Servlet
What are the advantages of Servlet over CGI?
Servlets have several advantages over CGI:
•	A Servlet does not run in a separate process. This removes the overhead of creating a new process for each request.
•	A Servlet stays in memory between requests. A CGI program (and probably also an extensive runtime system or interpreter) needs to be loaded and started for each CGI request.
•	There is only a single instance which answers all requests concurrently. This saves memory and allows a Servlet to easily manage persistent data.
•	Several web.xml conveniences
•	A handful of removed restrictions
•	Some edge case clarifications
Why do we need a constructor in a servlet if we use the init method?
Even though there is an init method in a servlet which gets called to initialize it, a constructor is still required to instantiate the servlet. Even though you as the developer would never need to explicitly call the servlet’s constructor, it is still being used by the container (the container still uses the constructor to create an instance of the servlet). Just like a normal POJO (plain old java object) that might have an init method, it is no use calling the init method if you haven’t constructed an object to call it on yet.
What are the different step to upload Servlets?
A servlet can be unloaded in two way.
•	Server shuts down.
•	Administrator manually unloads.
What is the difference between HttpServlet and Generic Servlet?
Life cycle of servlet?
Container control the life cycle of servlet in which it is deployed. Steps :
1- Container first check if an instance of the servlet exist or not if it doesn’t find any servlet, Web container Loads the servlet class or else go to step 4
2- Creates an instance of the servlet class.
3- Initializes the servlet instance by calling the init() method(Servlet Life cycle method).
Now servlet is ready to serve the request. When ever a request comes in for this servlet
4- Container invokes the service() method, passing a request and response object. Note: Servlet will handle all request in Service method.
5- When servlet container determines that the servlet should be removed from the service, it calls the destroy() method of the servlet to allow servlet to release any resources it is using.
The following are the life cycle methods of a servlet
1- init()
2- service()
3- destroy()
Preinitialization of JSP & how to use it?
Initialization(init method called) of the Servlet happens only when the first request for servlet comes to container, this is called lazy loading. Some time it is required to load adn initialize the servlet when container starts. This is called pre initialization. It can be achieved via tag “\non zero integer number\” in web.xml. Servlets will be loaded in the order of non zero number
Protocol supported by HTTPServlet?
It supports only Http Protocol.
When to use doGet() and when doPost()?
Always prefer to use GET (As because GET is faster than POST), except mentioned in the following reason:
•	If data is sensitive
•	Data is greater than 1024 characters
•	If your application don’t need bookmarks.
Can we /Should we Override Service method?
No
What is a servlet context object?
A servlet context object contains the information about the Web application of which the servlet is a part. It also provides access to the resources common to all the servlets in the application. Each Web application in a container has a single servlet context associated with it.
What’s the use of the servlet wrapper classes??
The HttpServletRequestWrapper and HttpServletResponseWrapper classes are designed to make it easy for developers to create custom implementations of the servlet request and response types. The classes are constructed with the standard HttpServletRequest and HttpServletResponse instances respectively and their default behaviour is to pass all method calls directly to the underlying objects.
What is a deployment descriptor?
A deployment descriptor is an XML document with an .xml extension. It defines a component’s deployment settings. It declares transaction attributes and security authorization for an enterprise bean. The information provided by a deployment descriptor is declarative and therefore it can be modified without changing the source code of a bean.
The JavaEE server reads the deployment descriptor at run time and acts upon the component accordingly.
What is preinitialization of a servlet?
A container does not initialize the servlets as soon as it starts up, it initializes a servlet when it receives a request for that servlet first time. This is called lazy loading. The servlet specification defines the element, which can be specified in the deployment descriptor to make the servlet container load and initialize the servlet as soon as it starts up. The process of loading a servlet before any request comes in is called preloading or preinitializing a servlet.
What is the <load-on-startup> element?
The <load-on-startup> element of a deployment descriptor is used to load a servlet file when the server starts instead of waiting for the first request. It is also used to specify the order in which the files are to be loaded. The <load-on-startup> element is written in the deployment descriptor.
What is session?
A session refers to all the requests that a single client might make to a server in the course of viewing any pages associated with a given application. Sessions are specific to both the individual user and the application. As a result, every user of an application has a separate session and has access to a separate set of session variables.
What is Session Tracking?
Session tracking is a mechanism that servlets use to maintain state about a series of requests from the same user (that is, requests originating from the same browser) across some period of time.
What are the types of Session Tracking ?
Sessions need to work with all web browsers and take into account the users security preferences. Therefore there are a variety of ways to send and receive the identifier:
o	URL rewriting : URL rewriting is a method of session tracking in which some extra data (session ID) is appended at the end of each URL. This extra data identifies the session. The server can associate this session identifier with the data it has stored about that session. This method is used with browsers that do not support cookies or where the user has disabled the cookies.
o	Hidden Form Fields : Similar to URL rewriting. The server embeds new hidden fields in every dynamically generated form page for the client. When the client submits the form to the server the hidden fields identify the client.
o	Cookies : Cookie is a small amount of information sent by a servlet to a Web browser. Saved by the browser, and later sent back to the server in subsequent requests. A cookie has a name, a single value, and optional attributes. A cookie’s value can uniquely identify a client.
•	Secure Socket Layer (SSL) Sessions : Web browsers that support Secure Socket Layer communication can use SSL’s support via HTTPS for generating a unique session key as part of the encrypted conversation.
How do I use cookies to store session state on the client?
In a servlet, the HttpServletResponse and HttpServletRequest objects passed to method HttpServlet.service() can be used to create cookies on the client and use cookie information transmitted during client requests. JSPs can also use cookies, in scriptlet code or, preferably, from within custom tag code.
•	To set a cookie on the client, use the addCookie() method in class HttpServletResponse. Multiple cookies may be set for the same request, and a single cookie name may have multiple values.
•	To get all of the cookies associated with a single HTTP request, use the getCookies() method of class HttpServletRequest
What are some advantages of storing session state in cookies?
•	Cookies are usually persistent, so for low-security sites, user data that needs to be stored long-term (such as a user ID, historical information, etc.) can be maintained easily with no server interaction.
•	For small- and medium-sized session data, the entire session data (instead of just the session ID) can be kept in the cookie.
What are some disadvantages of storing session state in cookies?
•	Cookies are controlled by programming a low-level API, which is more difficult to implement than some other approaches.
•	All data for a session are kept on the client. Corruption, expiration or purging of cookie files can all result in incomplete, inconsistent, or missing information.
•	Cookies may not be available for many reasons: the user may have disabled them, the browser version may not support them, the browser may be behind a firewall that filters cookies, and so on. Servlets and JSP pages that rely exclusively on cookies for client-side session state will not operate properly for all clients. Using cookies, and then switching to an alternate client-side session state strategy in cases where cookies aren’t available, complicates development and maintenance.
•	Browser instances share cookies, so users cannot have multiple simultaneous sessions.
•	Cookie-based solutions work only for HTTP clients. This is because cookies are a feature of the HTTP protocol. Notice that the while package javax.servlet.http supports session management (via classHttpSession), package javax.servlet has no such support.
What is URL rewriting?
URL rewriting is a method of session tracking in which some extra data is appended at the end of each URL. This extra data identifies the session. The server can associate this session identifier with the data it has stored about that session.
Every URL on the page must be encoded using method HttpServletResponse.encodeURL(). Each time a URL is output, the servlet passes the URL to encodeURL(), which encodes session ID in the URL if the browser isn’t accepting cookies, or if the session tracking is turned off.
How can an existing session be invalidated?
Setting timeout in the deployment descriptor: This can be done by specifying timeout between the <session-timeout>tags
How can the session in Servlet can be destroyed?
An existing session can be destroyed in the following two ways:
•	Programatically : Using session.invalidate() method, which makes the container abonden the session on which the method is called.
•	When the server itself is shutdown.
What is servlet lazy loading?
•	A container doesnot initialize the servlets ass soon as it starts up, it initializes a servlet when it receives a request for that servlet first time. This is called lazy loading.
•	The servlet specification defines the <load-on-startup> element, which can be specified in the deployment descriptor to make the servlet container load and initialize the servlet as soon as it starts up.
•	The process of loading a servlet before any request comes in is called preloading or preinitializing a servlet.
What is Servlet Chaining?
Servlet Chaining is a method where the output of one servlet is piped into a second servlet. The output of the second servlet could be piped into a third servlet, and so on. The last servlet in the chain returns the output to the Web browser.
What are filters?
Filters are Java components that are used to intercept an incoming request to a Web resource and a response sent back from the resource. It is used to abstract any useful information contained in the request or response. Some of the important functions performed by filters are as follows:
•	Security checks
•	Modifying the request or response
•	Data compression
•	Logging and auditing
•	Response compression
Filters are configured in the deployment descriptor of a Web application. Hence, a user is not required to recompile anything to change the input or output of the Web application.
What are the functions of the Servlet container?
The functions of the Servlet container are as follows:
•	Lifecycle management : It manages the life and death of a servlet, such as class loading, instantiation, initialization, service, and making servlet instances eligible for garbage collection.
•	Communication support : It handles the communication between the servlet and the Web server.
•	Multithreading support : It automatically creates a new thread for every servlet request received. When the Servlet service() method completes, the thread dies.
•	Declarative security : It manages the security inside the XML deployment descriptor file.
•	JSP support : The container is responsible for converting JSPs to servlets and for maintaining them.
Jsp
Life Cycle of JSP?
1- Translation
2- Compilation
3- Loading the class
4- Instantiating the class
5- jspInit() invocation
6- _jspService() invocation
7- jspDestroy() invocation
Can we override JSP lifecycle methods?
init() and destroy() methods can be overriden while service method cant be overridden.
How to override init() and destroy() method?
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
page scope:: It specifies that the object will be available for the entire JSP page but not outside the page. request scope: It specifies that the object will be associated with a particular request and exist as long as the request exists.
application scope: It specifies that the object will be available throughout the entire Web application but not outside the application.
session scope: It specifies that the object will be available throughout the session with a particular client.
Difference between page and pagecontext?
Differences are
1- The page object represents the generated servlet instance itself, i.e., it is same as the “this” keyword used in a Java file
2- The pageContext object represents the environment for the page, contains information like page attributes, access to the request, response and session objects, as well as the JspWriter referenced by out.
3- Page context also has methods for including another URL’s contents, and for forwarding or redirecting to another URL
What is the difference between ServletContext and PageContext?
ServletContext: Gives the information about the container.
PageContext: Gives the information about the Request.
Difference between ServletContext and ServletConfig?
ServletConfig:
1- One ServletConfig Object is created per servlet
2- It can be used to access ServletContext
3- Parameters are configured in DD(deployment description)
ServletContext
1- One ServletContext will be created per web application.
2- Can be used to access web app parameter.
3- Can be used to get server Info.
Difference between request.getRequestDispatcher() and context.getRequestDispatcher()?
request.getRequestDispatcher(path): In order to create it we need to give the relative path of the resource,
context.getRequestDispatcher(path): In order to create it we need to give the absolute path of the resource.
How to pass information from JSP to included JSP?
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
Can we compare String using equality operator (==) operator?
What is intern() method in Java?
When is class garbage collected?
What is the difference between a Choice and a List?
What is JCA in java? 
What is JPA in java?
What is difference between eager and lazy loading?
What is JMS in Java?
What is shallow cloning and deep cloning?
What is the difference between applications and applets?
What are Class loaders?
What is the Comparable interface?
What is Single Threaded Model in Servlets?
What are the different Authentication Options available in Servets?
What is the disadvantage of garbage collector? 
Does java support global variable? 
Explain different layout manager in Java.
What is chained exceptions in java?
When is the main thread stop in java?
What are the ways to create child threads?
Why bytecode is important to Java?
What is an Iterator and explain traversing through a collector using Iterator?
What is Race condition? 
What is difference between Java and JavaScript?
What is the difference between factory and abstract factory pattern?
What is Singleton? 
What is the difference between JAR and WAR files?
Can we compare String using equality operator (==) operator?
We can compare String using equality operator. But we mostly use equals() method because of following reasons:
•	The equality operator is used to compare primitives values only where as equals method() should be used to compare objects. 
•	The equality operator can invoke subtle issue while comparing primitive to Object. Where as equals() method is used to perform character based comparison. 
•	equals() return true if two String represent to the same object or when both strings contents are exactly same but equality() perator returns true if two String object represents to same object but return false if two different String object contains same contents
What is intern() method in Java?
The intern() method is of String class. The intern() method is supposed to return the String from the String pool if the String is found in String pool, otherwise a new string object will be added in String pool and the reference of this String is returned.
Example:
String str1 = "hello";
String str2 = "hello";
String str3 = "hello".intern();
if ( s1 == s2 ){
System.out.println("str1 and str2 are same"); 
}
if ( str1 == str3 ){
System.out.println("str1 and str3 are same" ); 
}
We are assuming that str1 and str3 are same will be printed as str3 is interned, and str1 and str2 are same will not be printed. Actual output is: both lines are printed. Which make clear that by default String constants are interned?
When is class garbage collected?
Java uses the garbage collector to free memory which is occupied by those objects which is no more reference by any of the program. An object becomes eligible for Garbage Collection when no live thread can access it. There are many ways to make a class reachable and thus prevent it from being eligible for Garbage Collection:
•	Objects of that class are still reachable. 
•	Class object representing the class is still reachable. 
•	ClassLoader that loaded the class is still reachable. 
•	Other classes loaded by the ClassLoader are still reachable.
When all of the above are false, then the ClassLoader together with all classes it loaded are eligible for Garbage Collection.
What is the difference between a Choice and a List?
The between Choice and list are following:
•	Choice class presents a pop-up menu of choices whereas List is a collection of different visible item. 
•	Choice is displayed in a compact form, to see the list of available choices we need to scroll down whereas list displays the entire available items. 
•	Choice allows selecting only one items but List supports the selection of one or more List items. 
•	Lists typically allow duplicate elements selection. List allow pairs of elements e1 and e2 such that e1.equals(e2), and they typically allow multiple null elements if they allow null elements at all.
What is JCA in java? 
Java Cryptography Architecture term from Sun for implementing security functions for the Java platform. It provides a platform and gives architecture and APIs for encryption and decryption. JCA is used by the developer to combine the application with the security measure. A programmer uses the JCA to meet the security measure. It helps in performing the third partly security rules. It uses the hash table, encryption message digest, etc to implement the security.
What is JPA in java?
The Java Persistence API is enabling us to create the persistence layer for desktop and web applications. Java Persistence deals in following:
•	Java Persistence API 
•	Query language 
•	Java Persistence Criteria API 
•	Object mapping metadata
What is difference between eager and lazy loading?
The difference between eager and loading are:
•	Eager loading means to load the data before the requirement whereas lazy loading mean that load the data only when required. 
•	Eager loading fetch the data in one query whereas lazy loading fetch the data when needed by triggering the sub query.
What is JMS in Java?
Java Message Service (JMS) is used for creating the communication interface between two clients by using the message passing services. This helps the application to interact with other components irrespective of components location whether they rely on same system or connect to the main system through LAN or internet.
What is shallow cloning and deep cloning?
Shallow copy: in this object is copied without its contained objects. Shallow clone only copies the top level structure of the object not the lower levels. It is an exact bit copy of all the attributes. 
Deep copy: In this object is copied along with the objects it refers to. Deep clone copies all the levels of the object from top to the bottom recursively. 
What is the difference between applications and applets?
The differences between an Applet and an application are as follows:
•	Applets can be embedded in HTML pages and downloaded over the Internet whereas Applications have no special support in HTML for embedding or downloading. 
•	Application starts execution with its main method whereas applet starts execution with its init method. 
•	Application must be run on local machine whereas applet needs no explicit installation on local machine. 
•	Application must be run explicitly within a java-compatible virtual machine whereas applet loads and runs itself automatically in a java-enabled browser. 
•	Application can run with or without graphical user interface whereas applet must run within a graphical user interface.
What are Class loaders?
Class loader enables the program to load the class at run time. This is located in the java.lang package.
Using Class Loader we can also load the customize classes which is required for the application execution. The class loaders in Java are organized in a tree. When JVM is started three class loaders are used:
•	Bootstrap class loader: the core java libraries. It is written in native code. 
•	Extensions class loader: loads the code in the extension directories. It is implemented by ExtClassLoader class. 
•	System class loader: code found on the java.class.path which map to the system class path variables. It is implemented by AppClassLoader class. All user classes by default are load by the system class loader.
What is the Comparable interface?
The Comparable interface is used to sort collections and arrays of objects using the collections.sort() and java.utils. The objects of the class implementing the Comparable interface can be ordered. All classes implementing the Comparable interface must implement the compareTo() method that has the return type as an integer. The signature of the compareTo() method is as follows:
int i = object1.compareTo(object2)
•	If object1 < object2: The value of i returned will be negative. 
•	If object1 > object2: The value of i returned will be positive. 
•	If object1 = object2: The value of i returned will be zero.
What is Single Threaded Model in Servlets?
Single Thread Model is a marker interface which contains no methods and variable in it.
•	When using Single thread model with Servlet, it make sure that that only one thread can be executed at a time. It avoids running of two or more thead simultaneously. 
•	If we wants to make single threaded we can implement this interface in the following fashion.
public class SingleThreadedTest implements SingleThreadModel
{
//some code
}
What are the different Authentication Options available in Servets?
Authentication options available in Servlets: There are four different options for authentication in servlet:
1. Basic Authentication: Username and password provided by the client to authenticate the user.
2. Form-based authentication- In this the login form is made by the programmer by using HTML.
3. Digest Authentication- It is similar to basic authentication but in this the passwords are encrypted using Hash formula. This makes digest more secured.
4. Client certificate Authentication- It requires that each client accessing the resource has a certificate that it send to authenticate itself. This requires SSL protocol.
What is the disadvantage of garbage collector? 
Garbage Collector runs in its own thread which affects the performance of the system. It increases the workload of JVM because it constantly monitor the object which is not referenced.. The two main disadvantages of garbage collector are:
•	TIME: to collect all those no referenced object JVM spends a considerable amount of time by scanning the entire heap. 
•	Mark and sweep: some time it is difficult to implement mark and sweep in the application.
Does java support global variable? 
No, java does not support global variable because of the following reasons:
•	Globally accessible: global variables are globally accessible. 
•	Referential transparency:global variable breaks the referential transparency and also a global variable generate problem in the namespace. 
•	Object oriented: As JAVA is object oriented language so where each variable is declared inside the class. To use this variable, object should be initialized.
Explain different layout manager in Java. 
There are following types of layouts are used to organize or to arrange objects:
•	Border Layout: Have five areas for holding components: north, east, west, south and center. 
•	Flow Layout: Default layout manager, lays out the components from left to right 
•	Card Layout: Different components at different times are laid out, Controlled by a combo box. 
•	Grid Layout: Group of components are laid out I equal size and displays them in certain rows and columns. 
•	Grid Bag Layout: Flexible layout for placing components within a grid of cells.
What is chained exceptions in java?
When in a program the first exception causes another exception that is termed as Chained Exception. Chained exceptions helps in finding the root cause of the exception that occurs during application’s execution. The constructors that support chained exceptions in Throwable classes are:
•	Throwable initCause(Throwable) 
•	Throwable(Throwable) 
•	Throwable(String, Throwable) 
•	Throwable getCause()
When is the main thread stop in java?
When we execute the java program, it call the main() method because main() method is the first thread in the program. This main() method or thread invokes the other thread which is required for the complete execution of the program. The main thread should be the last thread in the program to end. so to make main() method to be last we make sure when we called to another function by giving execution control to that must return the control back to the main() method.
What are the ways to create child threads?
There are two ways to create java threads:
•	Implementing the Runnable interface: this overcomes the limitation of inheriting from only one parent class Thread. Using Runnable interface, lays a path to ground work of a class that utilizes threads 
•	Extending Thread class: It inherits the methods and data members, fields from the class tread. In this process only one class can be inherited from the parent class Thread.
The advantage is a class can extend Thread class and also implements the Runnable interface, if required. The Runnable interface is set for implementing a thread and the class that implements the interface performs all the work.
Why bytecode is important to Java?
The compiled Java source code is known as byte code. We need bytecode due to following reasons:
•	Is independent of the input language. 
•	Plays an important role in the execution speed of the application. 
•	Can run on any platform irrespective of system architecture. 
•	Can be used for internet applications where security is important 
•	Enable us to load classes which are required for the execution of the application. 
•	allows the web applications to run on various platforms, on various browsers on different infrastructures.
What is an Iterator and explain traversing through a collector using Iterator?
We can access each element in the Collection by using Iterators irrespective of how they are organized in the collector. Iterator can be implemented a different way for every Collection. To use an iterator to traverse through the contents of a collection we do:
•	Obtain an iterator by calling the collections iterator() method to the start of the collection. 
•	Set up a loop that makes a call to hasNext(). Have the loop iterate as long as hasNext()returns true. 
•	Within the loop, obtain each element by calling next(). 
•	remove() method is used to remove the current element in the iteration.
What is Race condition? 
Race Condition: it is the situation when two threads raise the request for the same resource allocation, but the manner in which resources are allocated are significant, is called race conditions. 
•	Race condition is created in program in order to run the parallel execution of program by using multiple threads in a same period. 
•	A race condition occurs when two threads operate on same object without proper synchronization and there operation interleaves on each other. 
•	The risk of Race condition is higher in Java.
What is difference between Java and JavaScript?
The difference between java and java scripts are:
•	Java is an Object Oriented Programming Language and capable of running on multiple operating systems with the help of interpreter whereas Java Script is the object oriented scripting language and it is embedded in HTML and runs directly on the browser. 
•	JVM is used to executed java program on different program whereas Java Script code is not compiled they are directly run on the browser. 
•	Java language is used to develop the software whereas java script is used providing interactivity to the simple HTML pages.
What is the difference between factory and abstract factory pattern?
The differences between factory and abstract factory are following:
•	Factory pattern is a single method but abstract factory is an object. 
•	The Abstract Factory pattern is one level of abstraction higher than the factory pattern. 
•	Factory pattern generally returns the common parent class or method whereas the abstract factory pattern returns the one of the several factories.
What is Singleton? 
Singleton in Java is a class with just one instance in whole Java application.
•	This make sure that only one instance of a class is created. 
•	getInstance() method is used to get single instance of the class. 
•	It creates a global point to access all object 
What is the difference between JAR and WAR files?
The differences between JAR and WAR files are:
•	JAR files (Java Archive) allows combining many files into one whereas WAR files (Web Application Archive) stores XML, java classes, and JavaServer pages for Web Application purposes. 
•	JAR is used to hold Java classes in a library whereas in WAR files are stored in lib directory of the application. 
•	In this EJB module which contains enterprise java beans class files and EJB deployment descriptor are packed as JAR files with .jar extension whereas in WAR web modules which contains Servlet class files, JSP Files, GIF and HTML files are packaged as JAR file with .war extension.
Explain the difference between StringBuilder and StringBuffer class.
What is a StringBuffer class and how does it differ from String Class?
What is MAP and SortedMap interface?
Difference between static and dynamic class loading.
What is Bootstrap,Extension and System Class Loader?
Can you explain the directory structure for a Struts folder in brief?
What are action and action form classes in Struts?
How does the native language C or C++ understand data types in JAVA?
Explain Exception handling in JNI.
What are the advantages and disadvantages of using JNI?
Explain the difference between ServletsContext and ServletConfig.
Why is HTTP protocol called as a stateless protocol?
Can you explain the relation between class and object? Explain with an example
What is the difference between throw and throws clause, explain programmatically
What is meant by Tomcat in java and its usage?
Difference between Tomcat and Weblogic server.
More advanced java interview questions - senior level java interview
Explain the usage of serialization.
Objects are serialized when need to be sent over network.
They are serialized when the state of an object is to be saved.
How are Observer and Observable used?
The observable class represents an observable object.
The object to be observed can be represented by sub-classing observable class.
When there is a change in an observable instance, an application calling the Observable's notifyObservers method causes all of its observers to be notified of the change by a call to their update method.
Difference between Swing and Awt.
AWT are heavy-weight components. Swings are light-weight components. Thus, swing works faster than AWT. 
Define inner class in Java
Class that is nested within a class is called as inner class. The inner class can access private members of the outer class. It is mainly used to implement data structure and some time called as a helper class. 
Differences between constructors and methods.
A constructor is used to create objects of a class. A method is an ordinary member in a class.
Constructor does not have a return type. A method should have a return type.
Constructor name is the name of the class. A method name should not be the name of the class
Constructor is invoked at the time of creation of the class. Method needs to be invoked in another method by using the dot operator.
Constructor can not have ‘return’ statement. All methods that return non-void return type should have ‘return’ statement.
Define Method overriding. Explain its uses.
Method overriding is the process of writing functionality for methods with same signature and return type, both in super class and subclass The uses of method overriding: 
Time to invest method signature is reduced 
Different functionality in both super class and sub class by sharing same signature
The functionality can be enhanced
The behavior can be replaced in the sub class
More advanced java interview questions - senior level java interview
What is the purpose of the File class? 
The File class provides access to the files and directories of a local file system. 
Can you explain Native methods in Java?
•	The Java native method is used to merge the power of C or C++ programming into Java. 
•	To enhance to high performance language, when efficient native Java compilers are not fully implemented, use of native method boosts the performance to at least the speed of C compiled code.
Java applications can call code written in C, C++, or assembler. This is sometimes done for performance and sometimes to access the underlying host operating system or GUI API using the JNI. 
Explain class loaders in Java with an example.
•	The class loader describes the behavior of converting a named class into the bits responsible for implementing that class. 
•	Class loaders eradicate the JREs need to know anything about files and file systems when running Java programs. 
•	A class loader creates a flat name space of class bodies that are referenced by a string name and are written as:
Class r = loadClass(String className, boolean resolveIt);
What is Reflection API in Java?
•	The Reflection API allows Java code to examine classes and objects at run time. 
•	The new reflection classes allow you to call another class's methods dynamically at run time. 
•	With the reflection classes, you can also examine an instance's fields and change the fields' contents. 
•	It is also possible to instantiate new objects, invoke methods and get/set field values using reflection. 
•	The Reflection API consists of the java.lang.Class class and the java.lang.reflect classes: Field, Method, Constructor, Array, and Modifier.
Static class loading vs. dynamic class loading.
•	The static class loading is done through the new operator. 
•	Dynamic class loading is achieved through Run time type identification. Also called as reflection
This is done with the help of the following methods:
getClass(); getName(); getDeclaredFields();
Instance can also be created using forName() method. It loads the class into the current class memory.
Can you explain shallow cloning and deep cloning?
Cloning of objects can be very useful if you use the prototype pattern or if you want to store an internal copy of an object inside an aggregation class for example.
•	Deep cloning - You clone the object and their constituent parts. 
•	It should be used when it is inappropriate to separate the parts; the object is formed of, from it. 
•	Shallow cloning - You clone only the object, not their parts. You add references to their parts. 
•	It should be used when it is adequate to have the references added to the cloned object
Explain the purpose of Comparator Interface.
•	Comparators can be used to control the order of certain data structures and collection of objects too. 
•	The interface can be found in java.util.Comparator 
•	A Comparator must define a compare function which takes two Objects and returns a -1, 0, or 1 
•	Sorting can be done implicitly by using data structures of by implementing sort methods explicitly.
What is the impact of private constructor?
•	Private Constructors can't be access from any derived classes neither from another class. 
•	So you have to provide a public function that calls the private constructor if the object has not been initialized, or you have to return an instance to the object, if it was initialized.
This can be useful for objects that can't be instantiated. 
Can you explain static Initializers in Java?
A static initializer block resembles a method with no name, no arguments, and no return type. There is no need to refer to it from outside the class definition.
Syntax:
static
{
//CODE
}
The code in a static initializer block is executed by the virtual machine when the class is loaded. 
Because it is executed automatically when the class is loaded, parameters don't make any sense, so a static initializer block doesn't have an argument list. 
Define Externalizable Interface and explain its purpose.
•	The Externizable interface extends the serializable interface. 
•	When you use Serializable interface, your class is serialized automatically by default. But you can override writeObject() and readObject()two methods to control more complex object serailization process. 
•	When you use Externalizable interface, you have a complete control over your class's serialization process. The two methods to be implemented are : void readExternal(ObjectInput) 
•	The object implements the readExternal method to restore its contents by calling the methods of DataInput for primitive types and readObject for objects, strings and arrays.
void writeExternal(ObjectOutput) 
•	The object implements the writeExternal method to save its contents by calling the methods of DataOutput for its primitive values or calling the writeObject method of ObjectOutput for objects, strings, and arrays. < /LI> < /UL> 



</p>
	<%@include file="footer.jsp"%>