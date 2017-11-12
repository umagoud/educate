<%@include file="java-header.jsp"%>

<%@include file="jdbc-leftbar.jsp"%>
	<article>
	<div id="textbox">
  <p class="alignleft"><a href="jdbc-prepared-statement.jsp" class="previous">&laquo; Previous</a></p>
  <p class="alignright"><a href="jdbc-resultset.jsp" class="next">Next &raquo;</a></p>
</div>
<p> <h1>CallableStatement Interface</h1>
<p>Jdbc provides CallableStatement Interface which is used to execute stored procedures. Stored procedures are pre compiled.
<p>prepareCall() method is used to return object of CallableStatement.
<p><h3>Syntax</h3>
CallableStatement stmt=con.prepareCall("{call procedurename(?,?,?)}");  
<p><b>Stored Procedures creation in database:</b>
<p>Stored Procedure is used to perform business logic.In storedprocedures you can call functions. Exception handling using try/catch block can be used in stored procedures. Stored Procedure supports input and output parameters.
<p><h3>Stored Procedure</h3>
<p>DELIMITER $$

<p>USE `student`$$

<p>DROP PROCEDURE IF EXISTS `storetest`$$

<p>CREATE DEFINER=`root`@`localhost` PROCEDURE `storetest`(IN s_id INT, OUT s_name VARCHAR(25))
<p>BEGIN
<p>SELECT sname  INTO s_name
<p>FROM student
<p>WHERE sid=s_id; 
 <p>   END$$

<p>DELIMITER ;</p>
<p><h3>Example:</h3>
<p>import java.sql.*;  
<p>public class CallableExample</p>
 {  
<p>public static void main(String[] args) throws Exception</p>
{  
  
<p>Class.forName("com.mysql.jdbc.Driver");  
<p>Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/jdbcclass","root","root");   
  
<p>CallableStatement stmt=con.prepareCall("{call storeproc1(?,?,?,?)}");  
<p>stmt.setInt(1,212); 
<p>stmt.setString(2,"Amit");
<p>stmt.setInt(3,50000);
<p>stmt.setString(4,"JavaDeveloper"); 
<p>stmt.execute();  
  
<p>System.out.println("successfully completed");  
<p>}  
<p>}  
<p>After executing go and check in your sql stored procedure.And check data updated or not.

</article>
<%@include file="footer.jsp"%>