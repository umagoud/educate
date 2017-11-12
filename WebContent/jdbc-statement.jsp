<%@include file="java-header.jsp"%>

<%@include file="jdbc-leftbar.jsp"%>
	<article>
	<div id="textbox">
  <p class="alignleft"><a href="jdbc-connection.jsp" class="previous">&laquo; Previous</a></p>
  <p class="alignright"><a href="jdbc-resultset.jsp" class="next">Next &raquo;</a></p>
</div>
<p> <h1>JDBC Statement Interface</h1>
<p>Jdbc Statement interface have different methods. these methods are used to execute the queries.
This Statement interface provides factory method to get the object of ResultSet.
<p><h2>Statement Interface Methods</h2>
<p><b>executeUpdate(String sql):</b>It is used to execute the sql query to update the tables by create, insert, update, delete and drop etc.
<p><b>executeQuery(String sql):</b>It is used to execute the sql query.
<p><b>executeBatch():</b>This method is used to execute batch of commands.
<p><b>execute(String sql):</b>This is used to execute queries that may return multiple results.
<p>
<h2>Example:</h2>
<p>import java.sql.*;  
<p>class StudentDetails
<p>{  
<p>public static void main(String args[])throws Exception
<p>{  
<p>Class.forName("com.mysql.jdbc.Driver");  
<p>Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcclass","root","root");  
<p>Statement stmt=con.createStatement();  
  //Inserting attributes
<p>stmt.executeUpdate("insert into student values(11,'uma','cse)");
//deleting attributes
<p>int result=stmt.executeUpdate("delete from student where id=10");    
//updating attribute values
<p>//int result=stmt.executeUpdate("update student set sname='Ram',dept='ece' where id=11");  
<p>System.out.println(result+" records affected");  
<p>con.close();  
<p>}
<p>} 


</article>