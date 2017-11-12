<%@include file="header.jsp"%>
<article>
	<!-- <div><p align=left>
	<a href="soap.jsp" class="previous">&laquo; Previous</a><p>
<p align=right><a href="#" class="next" >Next &raquo;</a></p></div> -->
	<div id="textbox">
  <p class="alignleft"><a href="soap.jsp" class="previous">&laquo; Previous</a></p>
  <p class="alignright"><a href="#" class="next" >Next &raquo;</a></p>
</div>	
		<p><h1 class="entry-title">RESTful Web Service</h1>
		<p><b>Restful:</b></p>
		
		<p>Representational State Transfer is the full form of RESTful WebService.
		<p> REST was first introduced by Roy Fielding in year 2000.</p>
	<h1>Web Service:</h1><p>Web Service almost always involves communication over network. HTTP is the most commonly used protocol. Web service also uses SOAP, REST, and XML-RPC as a means of communication. All Web Services are API but APIs are not Web Services. 
	or A web service is a communication between two electronic devices over a network.
	<p>Web Service can be activated by using HTTP requests. Web services allows you to expose the functionality of your existing code over the network. Once it is exposed on the network, other application can use the functionality of your program.
	</p><h1>Use of Web Service</h1>
	<p>Web services are XML-based information exchange systems.These use the Internet for direct application-to-application interaction. These systems can include programs, objects, messages, or documents. It is a collection of open protocols and standards used for exchanging data between applications or systems.
	</p><h1>WSDL</h1>
	<p>It actually stands for Web Services Description Language.A WSDL is an XML document that describes a web service. RESTful is an XML-based protocol that lets you exchange info over a particular protocol (can be HTTP or SMTP, for example) between applications.
	</p>
	<h1>REST</h1>
	<p>REST or REpresentational State Transfer is an architectural style. That means a set of guidelines for building a web service. REST can be used to modify or view resources on the server without performing any server-side operations.
	It uses HTTP protocol for data communication.
	<p><b>Example:</b>If u have SBI account.You drawn money from Indian Bank ATM.Then drawn amount will deducted from your account. This is done by Indian bank employees but they dont have access to modify in SBI bank server. They are deducting money with out performing any SBI server side operations. This is possible by RESTful web service.
	 <p>It is sometimes spelled "ReST".It relies on a stateless, client-server, cacheable communications protocol.That is HTTP protocol. This is used by Rest. REST is an architecture style for designing networked applications.
	 <p>In REST architecture, a REST Server simply provides access to resources and the REST client accesses and presents the resources. Each resource is identified by URIs or Global IDs. REST uses various representations to represent a resource like Text, JSON and XML. JSON is now popular format being used in Web Services.
	 
	<h1> HTTP Methods</h1>
	<p>These HTTP methods are used by REST architecture.
	<p><b>GET:</b> This method provides a read only access to a resource.

<p><b>PUT:</b>This method is used to create a new resource.

<p><b>DELETE:</b>This method is used to remove a resource.

<p><b>POST:</b>This method is used to update an existing resource or create a new resource.

<p><b>OPTIONS:</b> Used to get the supported operations on a resource.
	</p>
	<h1>RESTFul Web Services</h1>
	<p>Web services based on REST Architecture are known as RESTful Web Services. 
	<p>Restful web services use HTTP methods to implement the REST architecture.
	<p>A RESTful web service defines a URI (Uniform Resource Identifier).
	<p>URI is a service that provides resource representation such as JSON and a set of HTTP Methods.
	</p>
	<h1>Creation of RESTFul Web Service</h1>
	<p><b>Idempotent:</b>If an operation (or service call) to be idempotent, clients can make that same call repeatedly while producing the same result. 
	<p><b>ReadOnly:</b>If HTTP method is GET then its call ReadOnly operation type. This means that operation is for only reading or viewing purpose not for editing. This GET operations are very safe. 
	<table>
	<tr><th>HTTP Methods</th>
	<th>URI</th>
	<th>Operation</th>
	<th>Operation Type</th></tr>
	<tr>
	<td>PUT</td>
	<td>UserService/Users/1</td>
	<td>Insert User with ID1</td>
	<td>Idempotent</td>
	</tr>
	<tr>
	<td>GET</td>
	<td>UserService/Users</td>
	<td>Get all users list</td>
	<td>ReadOnly</td>
	</tr>
	<tr>
	<td>GET</td>
	<td>UserService/Users/2</td>
	<td>Get user with Id2</td>
	<td>ReadOnly</td>
	</tr>
	<tr>
	<td>POST</td>
	<td>UserService/Users/3</td>
	<td>Update user with Id3</td>
	<td>N/A</td>
	</tr>
	<tr>
	<td>OPTIONS</td>
	<td>UserService/Users</td>
	<td>Supported operations list in WebService</td>
	<td>ReadOnly</td>
	</tr>
	<tr>
	<td>DELETE</td>
	<td>UserService/Users/2</td>
	<td>Delete user with ID 2</td>
	<td>ReadOnly</td>
	</tr>
	</table>
	</article>
	
<%@include file="footer.jsp"%>
	
	
	
	
	
	
	
	
	
	
	
	
	