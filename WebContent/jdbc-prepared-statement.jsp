<%@include file="java-header.jsp"%>

<%@include file="jdbc-leftbar.jsp"%>
	<article>
	<div id="textbox">
  <p class="alignleft"><a href="jdbc-statement.jsp" class="previous">&laquo; Previous</a></p>
  <p class="alignright"><a href="jdbc-callable-statement.jsp" class="next">Next &raquo;</a></p>
</div>
<p> <h1>PreparedStatement Interface</h1>
<p>This interface is sub interface of Statement interface.In statement for each and every query it hit the Database every time. For that reason PreparedStatement came. In preparedStatement everytime it won't hit the database.It maintains cache. It loads tables into cache and take values from it so no need of hitting Database everytime..
<p>By using PreparedStatement query compiled once so performance of the application will be faster.
<p>We use placeholders(?) questionmark. This is used to set the values by set method.
<p><b>setInt(int paramIndex, int value)</b>
<p>This is used to set the integer values at particular index.
<p><b>setString(int paramIndex, String value)</b>
<p>This is used to set the string values at particular index.
<p><b>setFloat(int paramIndex, float value)</b>
<p>This is used to set the float values at particular index.
<p><b>setDouble(int paramIndex, double value)</b>
<p>This is used to set the double values at particular index.
<p><b>executeUpdate()</b>
<p>This is used to executes the query.
<p><h3>Example</h3>
<p>import java.sql.*;  
<p>class InsertPrepared{  
<p>public static void main(String args[]){  
<p>try<p>{  
<p>Class.forName("com.mysql.jdbc.Driver");  
  
<p>Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcclass","root","root");  
  
<p>PreparedStatement stmt=con.prepareStatement("insert into student values(?,?,?)");  
<p>stmt.setInt(1,30);//1 specifies the first parameter in the query  
<p>stmt.setString(2,"ravali");  
<p>stmt.setString(3,"mtech");
  
<p>int i=stmt.executeUpdate();  
<p>System.out.println(i+" records inserted");  
  
<p>con.close();  
  
<p>}<p>catch(Exception e){ System.out.println(e);}  
  
<p>}  
<p>}  
<p><b>
String sql="insert into student values(?,?,?)";  </b>
<p>This questionmark is used to pass the parameters.These values set by set method.
</article>