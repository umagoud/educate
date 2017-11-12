<%@include file="header.jsp" %>
 <!-- #main-nav -->
   
	<div id="content" class="site-content"><div class="container"><div class="inner-wrapper">    

	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">
<article id="post-13" class="post-13 page type-page status-publish hentry">
	<header class="entry-header">
		<h1 class="entry-title">Data Base</h1>	</header><!-- .entry-header -->
<div class="entry-content">
<font><p><strong>What is a database? <br><br></strong></p>
<p>
- Database offer a single point of mechanism for storing and retrieving information with the help of tables.<br>
- Table is made up of columns and rows where each column stores specific attribute and each row displays a value for the corresponding attribute. <br>
- It is a structure that stores information about the attributes of the entities and relationships among them.<br>
- It also stores data types for attributes and indexes.<br>
- Well known DBMS include Oracle, ibm db2, Microsoft sql server, Microsoft access, mysql and sqlLite.<br>
What are the different types of storage systems available and which one is used by Oracle? <br>
Two types of storage systems are available<br>
- Relational Database Management System (RDBMS) and Hierarchical Storage Management System (HSM)<br><br>

- Most databases use RDBMS model, Oracle also uses RDBMS model.<br>
- Hierarchical Storage Management System (HSM)<br>
- Information Management System (IMS) from IBM.<br>
- Integrated Database Management System (IDMS) from CA.<br>
Explain some examples of join methods.<br>
Join methods are of mainly 3 types.<br><br>

Merge Join -<br>
- Sorting both the tables using join key and then merge the rows which are sorted.
<br><br>
Nested loop join - <br>
- It gets a result set after applying filter conditions based on the outer table.
- Then it joins the inner table with the respective result set.
<br><br>
Hash join - 
- It uses hash algorithm first on smaller table and then on the other table to produce joined columns. After that matching rows are returned.
What are the components of logical data model and list some differences between logical and physical data model? <br>
Components of logical data model are 
<br><br>
Entity - Entity refers to an object that we use to store information. It has its own table.
<br><br>
Attribute - It represents the information of the entity that we are interested in. It is stored as a column of the table and has specific datatype associated with it.
<br>
Record - It refers to a collection of all the properties associated with an entity for one specific condition, represented as row in a table.
<br>
Domain - It is the set of all the possible values for a particular attribute.
<br>
Relation - Represents a relation between two entities.
<br>
Difference between Logical and Physical data model.
<br>
- Logical data model represents database in terms of logical objects, such as entities and relationships.
<br>
- Physical data model represents database in terms of physical objects, such as tables and constraints.<br>
What is normalization? <br> What are the different forms of normalization? <br>
- Normalization is a process of organizing the fields and tables of a relational database to minimize redundancy and dependency.<br>
- It saves storage space and ensures consistency of our data.<br>
<br>
There are six different normal forms
<br>
First Normal Form - If all underlying domains contain atomic values only.
<br>
Second Normal Form - If it is in first normal form and every non key attribute is fully functionally dependent on primary key.
<br>
Third Normal Form - If it is in 2nd normal form and every non key attribute is non transitively dependent on the primary key.
<br>
Boyce Codd Normal Form - A relation R is in BCNF if and only every determinant is a candidate key.
<br>
Fourth Normal Form 
<br>
Fifth Normal Form<br>
Differentiate between a database and Instance and explain relation between them? <br>
- Database is a collection of three important files which include data files, control files and redo log files which physically exist on a disk
<br>
- Whereas instance is a combination of oracle background process (SMON, PMON, DBWR, LGWR) and memory structure (SGA, PGA).
<br>
- Oracle background processes running on a computer share same memory area. 
<br>
- An instance can mount and open only a single database, ever.
<br>
- A database may be mounted and opened by one or more instances (using RAC).<br><br>
What are the components of SGA? <br>
- SGA is used to store shared information across all database users.<br>
- It mainly includes Library cache, Data Dictionary cache, Database Buffer Cache, Redo log Buffer cache, Shared Pool.<br>
<br>
Library cache - It is used to store Oracle statements.
<br>
Data Dictionary Cache - It contains the definition of Database objects and privileges granted to users.
<br>
Data Base buffer cache - It holds copies of data blocks which are frequently accessed, so that they can be retrieved faster for any future requests.
<br>
Redo log buffer cache - It records all changes made to the data files.<br>
Difference between SGA and PGA.<br>
- SGA (System Global Area) is a memory area allocated during an instance start up.<br>
- SGA is allocated as 40% of RAM size by default.<br>
- SGA size is controlled by DB_CACHE_SIZE parameter defined in initialization parameter file (init.ora file or SPFILE).<br>
<br>
- PGA (Program or Process Global Area) is a memory area that stores a user session specific information.<br>
- PGA is allocated as 10% of RAM size by default.<br>
What are the disk components in Oracle? <br>
These are the physical components which gets stored in the disk.<br>
<br>
- Data files<br>
- Redo Log files<br>
- Control files <br>
- Password files<br>
- Parameter files<br>
What is System Change Number (SCN)? <br><br>
- SCN is a unique ID that Oracle generates for every committed transaction.<br> 
- It is recorded for every change in the redo entry.<br>
- SCN is also generated for every checkpoint (CKPT) occurred.<br>
- It is an ever increasing number which is updated for every 3 seconds<br>
- You can get the SCN number by querying select SCN from v$database from SQLPLUS.<br>
What is Database Writer (DBWR) and when does DBWR write to the data file? <br><br>
- DBWR is a background process that writes data blocks information from Database buffer cache to data files.<br>
<br>
There are 4 important situations when DBWR writes to data file<br>
<br>
- Every 3 seconds<br>
- Whenever checkpoint occurs<br>
- When server process needs free space in database buffer cache to read new blocks.<br>
- Whenever number of changed blocks reaches a maximum value.<br>
What is Log Writer and when does LGWR writes to log file? <br><br>
- LGWR writes redo or changed information from redo log buffer cache to redo log files in database.<br>
- It is responsible for moving redo buffer information to online redo log files, when you commit and a log switch also occurs.<br>
- LGWR writes to redo files when the redo log buffer is 1/3 rd full.<br>
- It also writes for every 3 seconds.<br>
- Before DBWR writes modified blocks to the datafiles, LGWR writes to the log file<br>
Which Table spaces are created automatically when you create a database? <br><br>
- SYSTEM tablespace is created automatically during database creation.<br>
- It will be always online when the database is open.<br>

Other Tablespaces include<br>

- SYSAUX tablespace<br>
- UNDO tablespace<br>
- TEMP tablespace<br>
- UNDO & TEMP tablespace are optional when you create a database.<br>
Which file is accessed first when Oracle database is started and What is the difference between SPFILE and PFILE? <br><br>
- Init<SID>.ora parameter file or SPFILE is accessed first .( SID is instance name)<br>
- Settings required for starting a database are stored as parameters in this file.<br>
- SPFILE is by default created during database creation whereas PFILE should be created from SPFILE.<br>
- PFILE is client side text file whereas SPFILE is server side binary file.<br>
- SPFILE is a binary file (it can’t be opened) whereas PFILE is a text file we can edit it and set parameter values.<br>
- Changes made in SPFILE are dynamically effected with running database whereas PFILE changes are effected after bouncing the database.<br>
- We can backup SPFILE using RMAN.<br>
What are advantages of using SPFILE over PFILE? <br><br>
- SPFILE is available from Oracle 9i and above.<br>
- Parameters in SPFILE are changed dynamically.<br>
- You can’t make any changes to PFILE when the database is up.<br>
- RMAN cant backup PFILE, It can backup SPFILE.<br>
- SPFILE parameters changes are checked before they are accepted as it is maintained by Oracle server thereby reducing the human typo errors.<br>
How can you find out if the database is using PFILE or SPFILE? <br><br>
- You can query Dynamic performance view (v$parameter) to know your database is using PFILE or SPFILE.<br>
- SQL> select value from V$parameter where name= ‘SPFILE’;<br>
- A non-null value indicates the database is using SPFILE.<br>
- Null value indicates database is using PFILE.<br>
- You can force a database to use a PFILE by issuing a startup command as<br>
- SQL> startup PFILE = ‘full path of Pfile location’;<br>
Where are parameter files stored and how can you start a database using a specific parameter file? <br><br>
- In UNIX they are stored in the location $ORACLE_HOME/dbs and ORACLE_HOME/database for Windows directory.<br>

- Oracle by default starts with SPFILE located in $ORACLE_HOME/dbs.

- If you want to start the database with specific file we can append it at the startup command as
SQL > startup PFILE = ‘full path of parameter file ‘;

- You can create PFILE from SPFILE as create PFILE from SPFILE;

- All the parameter values are now updated with SPFILE.

- Similarly, create SPFILE from PFILE; command creates SPFILE from PFILE.
What is PGA_AGGREGATE_TARGET parameter? <br>
- PGA_AGGREGATE TARGET parameter specifies target aggregate PGA memory available to all server process attached to an instance.<br>
- Oracle sets its value to 20% of SGA.<br>
- It is used to set overall size of work-area required by various components.<br>
- Its value can be known by querying v$pgastat dynamic performance view.<br>
- From sqlplus it can be known by using SQL> show parameter pga.<br><br>
What is the purpose of configuring more than one Database Writer Processes? <br> How many should be used? <br> (On UNIX)
- DBWn process writes modified buffers in Database Buffer Cache to data files, so that user process can always find free buffers.<br>

- To efficiently free the buffer cache to make it available to user processes, you can use multiple DBWn processes.<br>

- We can configure additional processes (DBW1 through DBW9 and DBWa through DBWj) to improve write performance if our system modifies data heavily.<br>

- The initialization parameter DB_WRITER_PROCESSES specifies the number of DBWn processes upto a maximum number of 20.<br>

- If the Unix system being used is capable of asynchronous input/output processing then only one DBWn process is enough, <br>
if not the case the total DBWn processes required will be twice the number of disks used by oracle, and this can be set with DB_WRITER_PROCESSES initialization parameter.<br><br>
List out the major installation steps of oracle software on UNIX in brief? <br>
- Set up disk and make sure you have Installation file (run Installer) in your dump.
<br>
- Check the swap and TEMP space .
<br>
- Export the following environment variables<br>
1. ORACLE_BASE<br>
2. ORACLE_HOME<br>
3. PATH<br>
4. LD_LIBRARY_PATH<br>
5. TNS_ADMIN<br>
<br>
- Set up the kernel parameters and file maximum descriptors.
<br>
- Source the Environment file to the respective bash profile and now run Oracle Universal Installer.<br>
Can we check number of instances running on Oracle server and how to set kernel parameters in Linux? <br>
- Editing the /etc/oratab file on a server gives the list of oracle instances running on your server.
<br>
- Editing /etc/sysctl.conf file with vi editor will open a text file listing out kernel level parameters.
<br>
- We can make changes to kernel parameters as required for our environment only as a root user.<br>
- To make the changes affected permanently to kernel run the command /sbin/sysctl –p.<br>
- We must also set file maximum descriptors during oracle installation which can be done by editing /etc/security/limits.conf as a root user.<br>
What is System Activity Reporter (SAR) and SHMMAX? <br><br>
- SAR is a utility to display resource usage on the UNIX system.<br>
- sar –u shows CPU activity.<br>
- Sar –w shows swapping activity<br>
- Sar –b shows buffer activity<br>
- SHMMAX is the maximum size of a shared memory segment on a Linux system.<br>
List out some major environment variable used in installation? <br><br>
- ORACLE_BASE=/u01/app/<installation-directory><br>
- ORACLE_HOME=$ORACLE_BASE/product/11.2.0(for 11g)/dbhome_1<br>
- ORACLE_SID=<instance-name><br>
- PATH=$ORACLE_HOME/bin:$PATH<br>
- LD_LIBRARY_PATH=$ORACLE_HOME/lib:$LD_LIBRARY_PATH<br>
- TNS_ADMIN=$ORACLE_HOME/network/admin<br>
- These are absolutely critical environment variables in running OUI.<br>
What is a control file? <br><br>
- Control file is a binary file which records the physical structure of a database.<br><br>
- It includes number of log files and their respective location, Database name and timestamp when database is created, checkpoint information.<br><br>
- We find CONTROL_FILE parameter in initialization parameter file which stores information about control file location.<br><br>
- We can multiplex control files, store in different locations to make control files available even if one is corrupted.<br><br>
- We can also avoid the risk of single point of failure.<br><br>
At what stage of instance, control file information is read and can we recover control file and how to know information in a control file? <br>
- During database mounting, control file information is read.<br><br>
- We can’t recover or restore lost control file, but we can still startup the database using control files created using multiplexing in different locations.<br>
- We can query the following command<br><br>
SQL> alter database backup controlfile to trace;<br>
- We find a trace file(.trc) in udump location,we can edit it and find the complete database structure.<br>
- Multiplexing can also be done using Following command<br>
SQL> alter database backup controlfile to <Different location/path>.<br>
How can you obtain Information about control file? <br><br>
- Control file information can be shown in initialization parameter file.<br>
- We can query v$controlfile to display the names of control files<br>
- From sql we can execute <br>
SQL> show parameter control_files;<br>
- The above query gives the name, Location of control files in our physical disk.<br>
- We can edit PFILE using a vi editor and control_files parameter gives us information about number of and location of control files.<br>
How do you resize a data file and tablespace? <br>
- Prior to Oracle 7.2 you can’t resize a datafile.<br>
- The solution was to delete the tablespace, recreating it with different sized datafiles.<br>
- After 7.2 you can resize a datafile by using ALTER DATABASE DATAFILE <file_name> RESIZE;<br><br>
- Resizing Table space includes creation of new data file or resizing existing data file.<br><br>
- ALTER TABLESPACE <tablespacename> ADD DATAFILE ‘<datafile name> ‘ size M; creates a new datafile.<br>
Name the views used to look at the size of a datafile, controlfiles, block size, determine free space in a tablespace ? <br>
- DBA_DATA_FILES or v$datafile view can be used to look at the size of a datafile .<br><br>
- DBA_FREE_SPACE is used to determine free space in a tablespace.<br><br>
- V$contolfile used to look at the size of a control file which includes maxlogfiles, maxlogmembers, maxinstances.<br><br>
- Select * from v$controlfile gives the size of a controlfile.<br><br>
- From sqlplus, query show parameter block_size to get size of db_block_size.<br>
What is archive log file? <br><br>
In archive log mode, the database will makes archive of all redo log files that are filled, called as archived redo logs or archive log files.<br>

- By default your database runs in NO ARCHIVE LOG mode, so we can’t perform online backup’s (HOT backup).<br>
- You must shut down database to perform clean backup (COLD backup) and recovery can be done to the previous backup state.<br>
- Archive log files are stored in a default location called FRA (Flash Recovery Area).<br>
- We can also define our own backup location by setting log_archive_dest parameter.<br>
Assume you work in an xyz company as senior DBA and on your absence your back up DBA has corrupted all the control files while working with the ALTER DATABASE BACKUP CONTROLFILE command. What do you do? <br>
- As long as all data files are safe and on a successful completion of BACKUP control file command by your Back up DBA you are in safe zone.<br>
- We can restore the control file by performing following commands<br>
1. CONNECT INTERNAL STARTUP MOUNT<br>
2. TAKE ANY OFFLINE TABLESPACE (Read-only)<br>
3. ALTER DATABASE DATAFILE (OFFLINE)<br>
4. RECOVER DATABASE USING BACKUP CONTROL FILE <br>
5. ALTER DATABASE OPEN RESETLOGS<br>
6. BRING READ ONLY TABLE SPACE BACK ONLINE<br>

Shutdown and back up the system. Then restart.<br>

- Then give the command ALTER DATABSE BACKUP CONTROL FILE TO TRACE<br>
- This output can be used for control file recovery as well.<br>

If control file backup is not available, then the following will be required<br>

1) CONNECT INTERNAL STARTUP NOMOUNT<br>
2) CREATE CONTROL FILE .....;<br>

- But we need to know all of the datafiles, logfiles, and settings of MAXLOGFILES, MAXLOGMEMBERS, MAXLOGHISTORY, MAXDATAFILES for the database to use the command.<br>
Can we reduce the space of TEMP datafile? <br> How? <br>
- Yes, we can reduce the space of the TEMP datafile.<br>

- Prior to oracle 11g,,you had to recreate the datafile.<br>

- In oracle 11g you reduce space of TEMP datafile by shrinking the TEMP tablespace.It is a new feature to 11g.<br>

- The dynamic performance view can be very useful in determining which table space to shrink.<br>
What do you mean by database backup and which files must be backed up? <br><br>
- Database stores most crucial data of business ,so it’s important to keep the data safe and this can be achieved by backup.<br>
<br>
The following files must be backed up
<br>
- Database files (Header of datafiles is freezed during backup)<br>
- Control files<br>
- Archived log files<br>
- Parameter files (spfile and pfile)<br>
- Password file<br>
What is a full backup and name some tools you use for full backup? <br>
- A full backup is a backup of all the control files, data files, and parameter file (SPFILE or PFILE).<br>
- You must also backup your ORACLE_HOME binaries which are used for cloning.<br>
- A full backup can be performed when our database runs in NON ARCHIVE LOG mode.<br>
- As a thumb rule, you must shutdown your database before you perform full backup.<br>
- Full or COLD backup can be performed by using copy command in unix.<br>
What are the different types of backup’s available and also explain the difference between them? <br><br>
There are 2 types of backup’s 
<br>
1. COLD backup(User managed & RMAN)<br>
2. HOT backup(User managed & RMAN)<br>

- Hot backup is taken when the database is still online and database should be in ARCHIVE LOG MODE.<br>
- Cold backup is taken when the database is in offline mode.<br>
- Hot backup is inconsistent backup where as cold backup is consistent backup.<br>
- You can begin backup by using the following command<br>
SQL> alter database begin backup;<br>
- End backup by<br>
SQL> alter database end backup;<br>
How to recover database if we lost the control file and we do not have a backup and what is RMAN? <br><br>
- We can recover our database at any point of time, when we have backup of our control files in different mount points.
<br>
- Also check whether the control file is available in trace file located in USERDUMP or the alert log to recover the database.
RMAN
<br>
- RMAN called as Recovery manager tool supplied by oracle that can be used to manage backup and recovery activities.<br>

- You can perform both offline (Cold) and online (Hot) backup’s using RMAN.<br>

- We need to configure Flash_Recovery_Area of database to use RMAN.<br>

- RMAN maintains the repository of backup information in control file.<br>
Name the architectural components of RMAN<br>
- RMAN executable<br>
- Server process<br>
- Channels<br>
- Target database<br>
- Recovery catalog database<br>
- Media management layer<br>
- Backup sets and backup pieces<br>
What is a recovery catalog? <br>
- Recovery catalog is an inventory of backup taken by RMAN for the database.<br>
- The size of the recovery catalog schema depends upon the number of databases monitored by the catalog.<br>
- It is used to restore a physical backup, reconstruct it, and make it available to the oracle server.<br>
- RMAN can be used without recovery catalog.<br>
- Recovery catalog also holds RMAN stored scripts.<br>
List some advantages of using RMAN.<br>
- Table spaces are not put in the backup mode ,therefore there is no extra redo log file during online backups.<br>
- Incremental backups that only copy data blocks, which have changed since last backup.<br>
- Detection of corrupt blocks.<br>
- Built in reporting and listing commands.<br>
- Parallelization of I/O operations.<br>
How to bring a database from ARCHIVE LOG mode to NON ARCHIVE LOG MODE? <br>
- You should change your init.ora file with the following information<br>
- log_archive_dest=’/u01/oradata/archlog’ (for example)<br>
- log_archive_format=’%t_%s.dbf’<br>
- log_archive_start=true (prior to 10g)<br>
- sql>shutdown;<br>
- sql> startup mount;<br>
- sql> alter database archivelog;<br>
- sql>alter database open;<br>
- Make sure you backup your database before switching to ARCHIVELOG mode.<br>
What are the different stages of database startup? <br>
- Database undergoes different stages before making itself available to end users<br>
- Following stages are involved in the startup of database<br>
1. NoMount<br>
2. Mount<br>
3. Open<br>
<br>
NoMount - Oracle Instance is available based on the parameters defined in SPFile.<br>
<br>
Mount - Based on the Information from parameter control files location in spfile, it opens and reads them and available to next stage.<br>
<br>
Open - Datafiles, redo log files are available to the end users.<br>
Name some of the important dynamic performance views used in Oracle.<br>
- V$Parameter<br>
- V$Database<br>
- V$Instance<br>
- V$Datafiles<br>
- V$controlfiles<br>
- V$logfiles<br>
What are the different methods we can shutdown our database? <br>
- SHUTDOWN (or) SHUTDOWN NORMAL <br>
No new connections are accepted and wait for the user to close the session.<br>
<br>
- SHUTDOWN TRANSACTIONAL<br>
No new connections are accepted and wait for the existing transactions to commit and logouts the session without the permission of user.<br>
<br>
- SHUTDOWN IMMEDIATE<br>
No new connections are accepted and all committed transactions are reflected in database and all the transactions are about to commit are rolled back to previous value.
<br>
- SHUTDOWN ABORT<br>
It’s just like an immediate power off for a database, it doesn’t mind what are the transactions running it just stops entire activity -(even committed transactions are not reflected in database) and make database unavailable. SMON process takes responsibility for recovery during next startup of database.
<br>
- SHUTDOWN NORMAL, TRANSACTIONAL, IMMEDIATE are clean shutdown methods as database maintains its consistency.
<br>
- SHUTDOWN ABORT leaves our database in an inconsistent state,data integrity is lost.
What are the different types of indexes available in Oracle? <br>
Oracle provides several Indexing schemas<br>
B-tree index - Retrieves a small amount of information from a large table.<br>
Global and Local index - Relates to partitioned tables and indexes.<br><br>
Reverse Key Index - It Is most useful for oracle real application clusters applications.<br>
Domain Index - Refers to an application <br>
Hash cluster Index - Refers to the index that is defined specifically for a hash cluster.<br><br>
What is the use of ALERT log file? <br> Where can you find the ALERT log file? <br><br>
- Alert log file is a log file that records database-wide events which is used for trouble shooting.<br>
- We can find the Log file in BACKGROUND_DUMP_DEST parameter.<br>
- Following events are recorded in ALERT log file:<br>
- Database shutdown and startup information.<br>
- All non-default parameters.<br>
- Oracle internal (ORA-600) errors.<br>
- Information about a modified control file.<br>
- Log switch change.<br><br>
What is a user process trace file? <br>
- It is an optional file which is produced by user session.<br>
- It is generated only if the value of SQL_TRACE parameter is set to true for a session.<br>
- SQL_TRACE parameter can be set at database, instance, or session level.<br>
- If it set at instance level, trace file will be created for all connected sessions.<br>
- If it is set at session level, trace file will be generated only for specified session.<br>
- The location of user process trace file is specified in the USER_DUMP_DEST parameter.<br><br>
What are different types of locks? <br>
There are different types of locks, which are given as follows:<br>
System locks - controlled by oracle and held for a very brief period of time.<br>
User locks - Created and managed using dbms_lock package.<br><br>

Different types of user locks are given as follows<br><br>

UL Lock - Defined with dbms_lock package.<br>
TX Lock - Acquired once for every transaction. It isa row transaction lock.<br><br>
TM Lock - Acquired once for each object, which is being changed. It is a DML lock. The ID1 column identifies the object being modified.<br>
What do db_file_sequential_read and db_file_scattered_read events define? <br>
- Db_file_sequential_read event generally indicates index usage.<br>
- It shows an access by row id.<br>
- While the db_file-scattered_read event indicates full table scan.<br>
- Db_file_sequential_read event reads a single block at one time.<br>
- Whereas db_file_scattered_read event reads multiple blocks.<br><br>
What is a latch and explain its significance? <br>
- Latch is an on/off switch in oracle that a process must access in order to perform certain type of activities.<br>
- They enforce serial access to the resources and limit the amount of time for which a single process can use a resource.<br>
- A latch is acquired for a very short amount of time to ensure that the resource is allocated.<br>
- We may face performance issues which may be due to either of the two following reasons<br>
- Lack of availability of resource.<br>
- Poor application programming resulting in high number of requests for resource.<br>
- Latch information is available in the v$LATCH and v$LATCHHOLDER dynamic performance views.<br><br>
Explain the architecture of data guard? <br>
Data guard architecture includes the following components<br>

Primary database - Refers to the production database.<br>

Standby Database - Refers to a copy of primary or production database.It may have more than one standby database.<br>

Log transport service - Manages transfer of archive log files primary to standby database.<br>

Network configuration - Refers to the network connection between primary and standby database.<br>
Applies archived logs to the standby database.<br>

Role management services - Manages the role change between primary and standby database.<br>

Data guard broker - Manages data guard creation process and monitors the dataguard.<br><br>
What is role transition and when does it happen? <br>
- Database operates in one of the following mutually exclusive roles<br>
1. Primary<br>
2. Standby<br>
- Role transition is the change of role between primary and standby databases.<br>
- Data guard enables you to change this roles dynamically by issuing the sql statements.<br>
- Transition happens in between primary and standby databases in the following way<br>
- Switchover, where primary database is switched to standby database and standby to primary database.<br>
- Failover, where a standby database can be used as a disaster recovery solution in case of a failure in primary database.<br>
- DRM allows you to create resource plans, which specify resource allocation to various consumer groups.<br>
- DRM offers an easy-to-use and flexible system by defining distinct independent components.<br>
- Enables you to limit the length of time a user session can stay idle and automatically terminates long-running SQL statement and users sessions.<br>
- Sets the initial login priorities for various consumer groups.<br>
- DRM will automatically queue all the subsequent requests until the currently running sessions complete.<br>
What is large object in oracle? <br> Explain its purposes.<br>
Large objects (LOB’s) are exclusively used to hold large amounts of data. It can hold data in tetra bytes. Different types of LOBs include internal, external, persistent and temporary. Binary LOB’s are typically used to store graphics, video, or audio data.<br>
<br><br>
Purpose:<br>

- Enables you to access and manipulate the data efficiently in your application.<br>
- Is optimized for large amounts of data.<br>
- Provides a uniform way of accessing data stored within the database or outside the database.<br>
<br>
Explain types of large objects in oracle, i.e. BLOB, LLOB,NCLOB and BFILE.<br>
Internal LOBs:<br>
BLOBs, CLOBs, and NCLOBs are Internal LOBs stored inside database tablespaces to optimize space and efficient access. Changes to internal LOBs can be committed or rolled back.<br>
<br>
They use copy semantics and participate in the transactional model of the server and can be recovered on media failure.<br>

The ACIDFoot 1 properties are applicable to internal LOBs too.<br>

BLOB<br>
The BLOB data type stores binary large objects. BLOB can store up to 4 gigabytes of binary data.<br>

CLOB<br>
The CBLOB data type stores character large objects. CLOB can store up to 4 gigabytes of character data.<br>

NCLOB<br>
The NCBLOB data type stores character large objects in multibyte national character set. NCLOB can store up to 4 gigabytes of character data.<br>

External LOBs:<br>

BFILES<br>
BFILES are External LOBs stored in operating system files outside database tablespaces. These files use reference semantics.<br>

The BFILE datatype allows read-only byte stream access to large files on the file system of the database server. The maximum file size supported is 4 gigabytes.<br>

Define read-only replication and its uses.<br>
Read only replication creates local copy of table data originating from one or more remote master tables. An application can query the data in a read-only table snapshot, but cannot insert, update, or delete rows in the snapshot of the data.
<br>
Use:<br>

- Can be treated as back ups of original.<br>
- For faster query performance, read only replication is used.<br>
Read-only replication and snapshots.<br>
Replication <br>
Replication is the process of copying database into one or more databases to make a system distributed.<br>

Changes made to one database are forwarded and applied to the databases at the rest of the locations.<br>

Advantages of Replication:<br>

- Provides user with fast, local access to shared data,<br>
- Protects availability of applications<br>
- Even if one site becomes unavailable, users can continue to query or even update the remaining locations.<br>

Read-only snapshots are used for query only. Changes made to the primary database are replicated to the snapshot by the Mobile Client.<br>

Snapshot<br>

- A snapshot is a full set or a subset of rows of a table or view at a point in time.<br>
- A snapshot is created by executing a SQL query against a base table.<br>
- Snapshots are either read-only or updateable.<br>
- They vary in complexity.<br>
Explain the steps executed during SQL statement processing.<br>
The parser scans the statement and breaks it into logical units such as keywords, identifiers and operators.<br>

- A query or a sequence tree is built using the units above. This is done to transform the source data into the format required by the result set.<br>

- The Query optimizer analyzes the fastest way to access the source tables using minimum resources. The final optimized version of the updated query tree is called as execution plan.
<br>
- Now, the relational engine starts to execute this plan. the relational engine requests that the storage engine pass up data from the row sets requested from the relational engine.
<br>
- In turn, the relational engine processes this data into the format as desired by result set and returns the same.<br>
Explain the steps executed during SQL statement processing.<br>
Steps in Processing SQL Statements<br>
<br>
Prepare statement<br>
Define an application request<br>
Bind placeholders<br>
For DML statements and queries with input variables, perform one or more bind calls to bind the address of each input variable array to each placeholder in the statement.<br>
Execute statement<br>
Describe select-list items<br>
Define output variables<br>
For queries, perform one or more define calls to define an output variable for each select-list item in the SQL statement
Fetch and process data<br>
Explain the steps executed during a typical transaction.<br>
- A transaction contains one or more SQL statements.<br>

- It is an atomic unit.<br>

- It begins with the first executable SQL statement.<br>

- It ends when it is committed or rolled back.<br>

- The effects of all the SQL statements in a transaction can be either all committed or all rolled back.<br>

- A SQL statement that runs successfully is different from a committed transaction.<br>
<br>
Executing successfully means that a single statement was:<br>
<br>
1. Parsed.<br>
2. Found to be a valid SQL construction.<br>
3. Run without error as an atomic unit. For example, all rows of a multirow update are changed.<br>

- However, until the transaction that contains the statement is committed, the transaction can be rolled back, and all of the changes of the statement can be undone. <br>

- A statement, rather than a transaction, runs successfully.
<br>
What are transaction isolation levels supported by Oracle? <br>
Oracle supports 3 transaction isolation levels: 
<br>
1. Read committed (default)<br>
2. Serializable transactions<br>
3. Read only<br>
What are transaction isolation levels supported by Oracle? <br>
READ COMMITTED:<br>
If row locks are obtained by a certain transaction, then any other transaction that contains DML needs to wait until the row locks have been released by that particular transaction.
<br>
SERIALIZABLE:<br>
If a serializable transaction contains DML that updates a resource that has been updated in another transaction but which has not committed yet, then the DML statement fails.
<br>
What are the uses of Rollback Segment? <br>
- Use the CREATE ROLLBACK SEGMENT statement to create a rollback segment, which is an object that Oracle Database uses to store data necessary to reverse, or undo, changes made by transactions.

- If the database has a locally managed SYSTEM tablespace, then rollback segments cannot create in any dictionary-managed tablespace. <br>

- Instead, either use the automatic undo management feature or create locally managed tablespaces to hold the rollback segments.<br>

The uses of the rollback segment is as follows:<br>

1. Rollback segments undo changes when a transaction is rolled back.<br>

2. They also ensure that transactions leave the uncommitted changes unnoticed.<br>

3. They can be used to recover the database to a consistent state in case of failures.<br>

4. ROLLBACK recovers the changes resulting from the SQL statements in the transaction.<br>
<br>
Explain how to start a new transaction in Oracle.<br>
An oracle transaction is a set of SQL statements written to perform a task. A transaction begins with the first SQL statement and ends when COMMITTED or ROLLED BACK.
<br>
Example:<br>
update emp_salary<br>
     set salary = salary + 1500<br>
where<br>
     employee_no = 145';<br>
commit;<br>
Explain how to start a new transaction in Oracle.<br>
Oracle server implicitly starts a new transaction with the following two conditions:<br>
<br>
- The first executable statement of a new user session automatically starts a new transaction.<br>
- After a transaction has ended, the next executable statement then starts a new transaction.<br>
<br>
There is no SQL statement to explicitly start a new transaction.<br>
<br>
Explain how to end the current transaction in Oracle.<br>
Following commands could be run to explicitly end the current transaction:
<br>
a. COMMIT<br>
b. ROLLBACK<br>
<br>
A transaction ends when any of the following actions occurs:
<br>
1. A user issues a COMMIT or ROLLBACK statement without a SAVEPOINT clause.
<br>
2. In a commit, a user explicitly or implicitly requested that the changes in the transaction be made permanent. Changes made by the transaction are permanent and visible to other users only after a transaction commits. 
<br>
3. A user runs a DDL command such as CREATE, DROP, RENAME, or ALTER.
<br>
4. The database issues an implicit COMMIT statement before and after every DDL statement. If the current transaction contains DML statements, then Oracle Database first commits the transaction and then runs and commits the DDL statement as a new, single-statement transaction.
<br>
5. A user exits normally from most Oracle Database utilities and tools, causing the current transaction to be implicitly committed. The commit behavior when a user disconnects is application-dependent and configurable.
<br>
6. Applications should always explicitly commit or undo transactions before program termination.
<br>
7. A client process terminates abnormally, causing the transaction to be implicitly rolled back using metadata stored in the transaction table and the undo segment.
Explain how oracle optimizer works.<br>
Oracle optimizer determines the best possible way to execute a query. This optimizer uses internal set of rules or costing methods to ace hove the result. The output from the optimizer is a plan that describes an optimum method of execution the optimizer first evaluates expressions and conditions containing constants as fully as possible. Here after it chooses either a cost-based or rule-based approach and determines the goal of optimization. For each table accessed it chooses one access path from the available ones
Explain how oracle optimizer works.<br>
The optimization is determining the most efficient way to execute a SQL statement after considering the factors related to the objects referenced and the conditions specified in the query.
<br>
This determination is an important step in the processing of any SQL statement and can greatly affect execution time.
<br>
The optimizer first evaluates expressions and conditions containing constants.Then Statement transformation follows which is followed by Choice of optimizer approaches. Then is the Choice of access paths followed by Choice of join orders and finally the Choice of join methods.
Describe optimization methods, i.e. cost-based approach and role-based optimization.<br>
Oracle decides how to retrieve the necessary data whenever a valid SQL statement is processed.<br>
<br>
This decision can be made using one of two methods:
<br>
Rule Based Optimizer
<br>
If the server has no internal statistics relating to the objects referenced by the statement then the RBO method is used. This method will be deprecated in the future releases of oracle.
<br>
Cost Based Optimizer
<br>
The CBO method is used if internal statistics are present. The CBO checks several possible execution plans and selects the one with the lowest cost based on the system resources.
<br>
Explain the rule-based optimizer and cost-based optimizer.<br>
Rule-based optimizer - In a Rule-based optimizer, based on the access paths and their ranks, an execution plan is chosen. Ranking of the access path is heuristic and operation with the lower rank is used if there is more than one way to execute a SQL statement.
<br>
Cost-based optimizer - The most advised approach and uses an SQL statement and tries to weigh different ways (plan) to execute it. It also assigns a cost to each plan and chooses the plan with the smallest cost. CBO uses some statistics to process the cost across different plans.
Describe in brief about oracle database tuning.<br>
Oracle includes many performance tuning enhancements like:<br>

- Automatic Performance Diagnostic and Tuning Features<br>
- Automatic Shared Memory Management - Automatic Shared Memory Management puts Oracle in control of allocating memory within the SGA<br>
- Wait Model Improvements - A number of views have been updated and added to improve the wait model.<br>
- Automatic Optimizer Statistics Collection - gathers optimizer statistics using a scheduled job called GATHER_STATS_JOB<br>
- Dynamic Sampling - enables the server to improve performance<br>
- CPU Costing - default cost model for the optimizer (CPU+I/O), with the cost unit as time<br>
- Optimizer Hints<br>
- Rule Based Optimizer Obsolescence - No more used<br>
- Tracing Enhancements - End to End Application Tracing which allows a client process to be identified via the client identifier rather than the typical session id<br>
- SAMPLE Clause Enhancements<br>
- Hash Partitioned Global Indexes<br>
<br>
What is proactive tuning and reactive tuning? <br>
Tuning aims to increase and optimize Oracle’s throughput. In Proactive tuning, different strategies are developed for different kinds of processing. Here, the database is tuned by finding the optimal hardware selection, capacity planning and settings to increase throughput. It is called proactive as the administrator proactively devises strategies for the architecture. Reactive tuning involves performance tuning and troubleshooting within boundaries of existing architecture.
What is proactive tuning and reactive tuning? <br>
In Proactive Tuning, the application designers can then determine which combination of system resources and available Oracle features best meet the needs during design and development.
<br>
In reactive tuning the bottom up approach is used to find and fix the bottlenecks. The goal is to make Oracle run faster.
Operating system level tuning.<br>
System-level tuning involves the following steps:
<br>
- Monitoring the operating system counters using a tool such as top, gtop, and GKrellM or the VTune analyzer’s counter monitor data collector for applications running on Windows.
<br>
- Interpreting the counter data to locate system-level performance bottlenecks and opportunities for improving the way your application interacts with the system.
Explain rule-based optimizer and cost-based optimizer.<br>
Oracle decides how to retrieve the necessary data whenever a valid SQL statement is processed.
<br>
This decision can be made using one of two methods:
<br>
Rule Based Optimizer
<br>
If the server has no internal statistics relating to the objects referenced by the statement then the RBO method is used.
This method will be deprecated in the future releases of oracle.
<br>
Cost Based Optimizer
<br>
The CBO method is used if internal statistics are present. 
The CBO checks several possible execution plans and selects the one with the lowest cost based on the system resources.
Explain in brief oracle database objects.<br>
1. Tables
<br>
Oracle stores information in the form of tables. For eg you can have a table named as climate in which you can store information about the climate of a place in the form of columns which could be the temperature, name of the place, date, humidity, etc.
<br>
In the terms of a relational database, one can call a table as an entity and the columns as it attributes.
<br>
2. Indexes
<br>
Indexing is a concept of listing of keywords accompanied by the location of information of the subject. Indexes are used to speed up the processing, especially searching.
<br>
3. Views
<br>
A view is a way of hiding the logic that created the joined table just displayed. 
<br>
Example:<br>
create view AB<br>
select A.x, B.y from A, B where A.x = B.y;<br>
<br>
You can query it as select x, y from AB.<br>
Note: AB is the view name, A, B are the Table names with x and y as their column names respectively.<br>
For views, you don’t need to specify the tables as the logic is hidden inside the views.<br>
<br>
4. Synonyms
<br>
A synonym is a name assigned to a table or view that may be used refer to it thereafter. <br>
If you have an access to another users table, you may create a synonym for it and refer to it by the synonym alone, without entering the users name as a qualifier. <br>
Using synonyms is a good way to implement location transparency.
<br>
5. Sequences
<br>
Tables usually have a primary key which uniquely identifies a row in a table. A sequence is a unique number generator which can be assigned to the primary keys of the tables.
<br>
Example: <br>
create sequence xyz <br>
increment by 1 <br>
start with 1;<br>
<br>
6. Partitions
<br>
Partitioning provides tremendous advantages to applications by improving manageability, performance, and availability.
Partitioning allows a table, index or index-organized table to be subdivided into smaller pieces. 
Each piece of database object is called a partition.
<br>
Techniques for partitioning tables:
<br>
- Range Partitioning <br>
- List Partitioning<br>
- Hash Partitioning<br>
- Composite Range-Hash Partitioning<br>
- Composite Range-List Partitioning<br>
<br>
7. Clusters
<br>
A cluster is a schema object that contains data from one or more tables, all of which have one or more columns in common. 
All the rows from all the tables that share the same cluster key are stored.
After you create a cluster, you add tables to it. A cluster can contain a maximum of 32 tables.
<br>
8. Stored procedures and packages
<br>
A procedure is a PL/SQL block alike the functions of the 3rd generation languages. You just have to compile them so as to use them later. <br>
When a procedure is created, it is compiled and stored in the database in the compiled form. <br>
Parameters can be passed to a procedure. <br>
A procedure call is a PL/SQL statement by itself. A procedure is a PL/SQL block with a declarative section, an executable section and an exception handling section.
<br>
Package: <br>
Packages are PL/SQL constructs that allow related objects to be stored together. A package has two separate parts. Each of them is stored separately in the data dictionary. 
A package can include procedures, functions, cursors, types, and variables.
<br>
Example: 
create or replace package XYZ as 
procedure p1 (p_id IN tablename.id % type, …………, ……..)
end XYZ;
<br>
9. User-defined data types
<br>
User defined data types are PL/SQl types that are based on the existing types. Subtypes are used to gives an alternate name to for a type.

Example:
declare
subtype counter is number;
counter a;<br>

10. Table spaces<br>

A table space is an area on disk which comprises of one or more disk files. A tablespace can contain many tables, clusters or indexes. <br>
One or more tablespaces together make a database. <br>
Each table has a single area of diskspace called a segment set aside for it in the table space.<br>
Each segment has an initial area on disk space set aside for it in the table space called the initial extent. <br>
Once it has been used up, another extent is set aside for it.<br>

11. Constraint<br>

Constraints help understand how the tables and columns are related to each other.<br>
The constraint information is accessible under the USER_constraint view. <br>

The constraints include the following columns<br>

Owner - - - of constraint<br>
Constraint_name<br>
Constraint_type<br>
Table_name<br>
Search_condition<br>
R_Owner - - owner of the foreign key referenced table.<br>
R_constraint_name<br>
Delete_rule<br>
Status<br>

What is oracle correlated sub-queries? <br> Explain with an example.<br>
A query which uses values from the outer query is called as a correlated sub query.<br> The subquery is executed once and uses the results for all the evaluations in the outer query.

Example:<br>
<br>
Here, the sub query references the employee_id in outer query. The value of the employee_id changes by row of the outer query, so the database must rerun the subquery for each row comparison. The outer query knows nothing about the inner query except its results.
select employee_id, appraisal_id, appraisal_amount From employee <br>
where
appraisal_amount < (select max(appraisal_amount) <br>
from employee e<br>
where employee_id = e. employee_id);<br>

SQL-level tuning.<br>
- Tuning disk and network I/O subsystem to optimize the I/O time, network packet size and dispatching frequency is called the server kernel optimization.<br>
- Distribution of data can be studied by the optimizer by collecting and storing optimizer statistics. This enables intelligent execution plans.<br>
- Choice of db_block_size, db_cache_size, and OS parameters (db_file_multiblock_read_count, cpu_count, &c), can influence SQL performance.<br>
- Tuning SQL Access workload with physical indexes and materialized views.<br>
Database design level tuning<br>
The steps involved in database design level tuning are:<br>

- Determination of the data needed by an application (what relations are important, their attributes and structuring the data to best meet the performance goals)<br>
- Analysis of data followed by normalization to eliminate data redundancy.<br>
- Avoiding data contention.<br>
- Localizing access to the data to the partition, process and instance levels.<br>
- Using synchronization points in Oracle Parallel Server.<br>
- Implementation of 8i enhancements that can help avoid contention are:<br>
Consideration on partitioning the data <br>
Consideration over using local or global indexes.<br>

What is a dynamic performance view in Oracle? <br>
- The dynamic performance views are the views that get continuously updated even while the database is open or in use.<br>
- Oracle contains a set of underlying views that are maintained by the database server and accessible to the database administrator user SYS.<br>
- The contents of these views relate primarily to performance.<br>
- These views are not regular database tables. They provide data on internal disk structures and memory structures.<br>
- You can select from these views, but you can never update or alter them.<br>

Describe how to reference remote tables in procedures with an example.<br>
Using SQL statements, remote tables can be accessed in procedures. Database links are specifically used for this purpose. They connect one oracle database to another.<br>
CREATE DATABASE LINK employee.in.india.acme_auto.com ... ;<br>

To access a remote table, the table name can be specified using a SQL statement.<br>
SELECT * FROM salary.employee@employee.in.india.acme_auto.com ;<br>

Explain the significance of Return clause in stored procedure.<br>
Return clause in a stored procedure returns the value to the calling programs subroutine.<br>
Return statement in a stored procedure is not to return values. It simply returns control to the caller before the end of the procedure. <br>

Example:<br>
The procedure below returns the salary for the employee id passed.<br>
CREATE OR REPLACE FUNCTION GET_EMPLOYEE_SALARY<br>
(<br>
        p_employee_id NUMBER<br>
)<br>
RETURN FLOAT<br>
IS p_salary FLOAT(25);<br>
BEGIN<br>
        SELECT salary INTO p_salary FROM EMPLOYEES<br>
        WHERE EMPLOYEE_ID = p_employee_id;<br>

        RETURN p_salary; <br>
END GET_EMPLOYEE_SALARY;<br>

What are actual and formal parameters in oracle? <br>
Information in subprograms is passed through parameters. If the parameter declared in a subprogram is referenced in the subprogram body, it is called as a formal parameter. On the other hand, when parameters are passed from the calling subprogram, they are actual parameters. The actual and its respective formal parameter should be of the same data type.
<br>
Example:<br>

Formal parameters being passed<br>
PROCEDURE employee_violation(emp_id INTEGER, violation varchar(200))<br>
{<br>
Procedure definition<br>
}<br>
Calling procedure:<br>
Employee_violation(emp_num, violation); -> Actual parameters are called.<br>
What are sequences? <br> Explain with syntax.<br>
A field in oracle can be kept as auto incremented by using sequence. it can be used to create a number sequence.<br>

Syntax:<br>
CREATE SEQUENCE sequence_name<br>
MINVALUE value<br>
MAXVALUE value<br>
START WITH value<br>
INCREMENT BY value<br>
CACHE value;
<br>
Example: employee_seq will cache up to 20 values for performance. Starts from one.<br>
CREATE SEQUENCE employee_seq<br>
MINVALUE 1<br>
MAXVALUE 999999999999999999999999999<br>
START WITH 1<br>
INCREMENT BY 1<br>
CACHE 20;<br>
List the advantages of sequences.<br>
- Use the CREATE SEQUENCE statement to create a sequence, which is a database object from which multiple users may generate unique integers.<br>

- Sequences can be used automatically to generate primary key values.<br>

- When a sequence number is generated, the sequence is incremented, independent of the transaction committing or rolling back. <br>

- If two users concurrently increment the same sequence, then the sequence numbers each user acquires may have gaps, because sequence numbers are being generated by the other user. <br>

- One user can never acquire the sequence number generated by another user. <br>

- After a sequence value is generated by one user, that user can continue to access that value regardless of whether the sequence is incremented by another user.<br>

- Sequence numbers are generated independently of tables, so the same sequence can be used for one or for multiple tables. <br>

- It is possible that individual sequence numbers will appear to be skipped, because they were generated and used in a transaction that ultimately rolled back. <br>

- Additionally, a single user may not realize that other users are drawing from the same sequence.<br>

- After a sequence is created, you can access its values in SQL statements with the CURRVAL pseudocolumn, which returns the current value of the sequence, or the NEXTVAL pseudocolumn, which increments the sequence and returns the new value.
<br>
The advantages of sequence are:<br>

1. The sequence values can be cached.<br>
2. Highly scalable.<br>
3. Sequence ensures that no other session or other call to nextval within the same session gets the same number from the sequence.<br>
4. No special table needs to be created. Sequences also solve concurrency issues.<br>

What are Schema Objects? <br>
Schema objects are a part of the database. They include tables, views, indexes etc. they are logical structures containing or referring to actual data.<br>

Schema object is a logical data storage structure. Oracle stores a schema object logically within a tablespace of the database.<br>
What are Schema Objects? <br>
Schema objects are the logical database structure that represents database's data. Schema objects include tables, views, sequences, synonyms, indexes, clusters, database triggers, procedures and functions.<br>
What is a sequence in oracle? <br>
A sequence is a column in a table that allows a faster retrieval of data from the table because this column contains data which uniquely identifies a row. It is the fastest way to fetch data through a select query. <br>
This column has constraints to achieve this ability.<br>
 The constraints are put on this column so that the value corresponding to this column for any row cannot be left blank and also that the value is unique and not duplicated with any other value in that column for any row.<br>
What is a sequence in oracle? <br>
A Sequence is a user created database object. A sequence can be shared by multiple users to generate unique integers. This object is used to create a primary key value. The sequence is generated and incremented by internal Oracle routine. This can be time-saving object because it can reduce the amount of application code needed to write a sequence generating routine.<br>
Oracle sequence generates a series of unique numbers for numeric column of a database's tables. <br>

Syntax :<br>
Create sequence seq_name<br>
      Increment by n <br>
      Start with n<br>
      Maxvalue n | NoMaxvalue<br>
      Minvalue n | NoMinvalue<br>
      Cycle | NoCycle <br>
      Cache n | NoCache ;<br>

</font>

    					</div><!-- .entry-content -->
</article><!-- #post-## -->
	</main><!-- #main -->
	</div><!-- #primary -->

<%@include file="footer.jsp" %>