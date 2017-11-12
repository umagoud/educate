<%@include file="java-header.jsp"%>

<%@include file="jdbc-leftbar.jsp"%>
	<article>
	<div id="textbox">
  <p class="alignleft"><a href="jdbc-introduction.jsp" class="previous">&laquo; Previous</a></p>
  <p class="alignright"><a href="jdbc-connection.jsp" class="next">Next &raquo;</a></p>
</div>
<p> <h1>JDBC Driver Types</h1>
<p>JDBC API uses Drivers to connect your java application with the databases. It has different types 4types of drivers.
<p>1.JDBC-ODBC bridge driver
<p>2.Native-API driver (partially java driver)
<p>3.Network Protocol driver (fully java driver)
<p>4.Thin driver (fully java driver)</p>
<p><h2>JDBC-ODBC bridge driver</h2>
<p>This is not written in java.This is also called Type-1 Driver. This driver is used to connect your java application with the databases.JDBC-ODBC bridge driver uses ODBC driver to connect to the database.
The JDBC-ODBC bridge driver converts JDBC method calls into the ODBC function calls. This is now discouraged because of thin driver.
</p>
<p><b>Advantage:</b></p>
<p>It is very easy to connect with database.
<p><b>Disadvantage:</b>
<p>In Client machine needs to install ODBC Driver.
<p>Low performance because JDBC-ODBC Driver converting it into ODBC Driver.
<p><img alt=""
			src="http://www.educateworld.org/images/java/jdbc-odbc-driver.png">
			</p>
<p> <h2>2.Native-API driver</h2>	
<p>This is also called Type-2 Driver. This is not completely written in java.The driver converts JDBC method calls into native calls of the database API and it uses client side libraries. 
<p><b>Advantage:</b></p>
<p>It has better performance than type- one driver.
<p><b>Disadvantage:</b></p>
<p>Native driver needs to be installed on the each client machine and Client Libraries also it needs to be installed.</p>
<p><img alt=""
			src="http://www.educateworld.org/images/java/native-api-driver.png">
			</p>
<p> <h2>3.Network Protocol driver</h2>
<p>This is also called Type-3 Driver.This is completely written in java. Network Protocol driver uses middleware (application server) that converts JDBC calls directly or indirectly into the vendor-specific database protocol. 
<p><b>Advantage:</b></p>
<p>No need of client side libraries.Application Server can perform all tasks.
<p><b>Disadvantage:</b></p>
<p>Client side machine required network.
<p>Its maintenance cost is very high compared to all.
<p>Middle tier required database specific code.
<p><img alt=""
			src="http://www.educateworld.org/images/java/jdbc-network-driver.png">
			</p>
	<p> <h2>4.Thin driver</h2>	
	<p>This is also called Type-3 Driver.This is completely written in java. thin driver converts JDBC calls directly into the vendor-specific database protocol. 
		
<p><b>Advantage:</b></p>
<p>For this No software is required at client side or server side.
<p>Thin Driver have better performance than all other drivers.
<p><b>Disadvantage:</b></p>
<p> These Drivers depends on the Database.
<p><img alt=""
			src="http://www.educateworld.org/images/java/jdbc-thin-driver.png">
			</p>	

	
			
</article>
	<%@include file="footer.jsp"%>