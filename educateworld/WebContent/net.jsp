<%@include file="header.jsp" %>
 <!-- #main-nav -->
    
	<div id="content" class="site-content"><div class="container"><div class="inner-wrapper">    

	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">

			
				
<article id="post-13" class="post-13 page type-page status-publish hentry">
	<header class="entry-header">
		<h1 class="entry-title">.Net</h1>	</header><!-- .entry-header -->

	<div class="entry-content">
	<p>ASP.NET is a web application framework developed and marketed by Microsoft to allow programmers to build dynamic web sites. It allows you to use a full featured programming language such as C# or VB.NET to build web applications easily.<br>


ASP.NET is a web development platform, which provides a programming model, a comprehensive software infrastructure and various services required to build up robust web applications for PC, as well as mobile devices.<br>
ASP.NET works on top of the HTTP protocol, and uses the HTTP commands and policies to set a browser-to-server bilateral communication and cooperation.<br>
ASP.NET is a part of Microsoft .Net platform. ASP.NET applications are compiled codes, written using the extensible and reusable components or objects present in .Net framework. These codes can use the entire hierarchy of classes in .Net framework.<br>
The ASP.NET application codes can be written in any of the following languages:<br>
•	C#<br>
•	Visual Basic.Net<br>
•	Jscript<br>
•	J#<br>
ASP.NET is used to produce interactive, data-driven web applications over the internet. It consists of a large number of controls such as text boxes, buttons, and labels for assembling, configuring, and manipulating code to create HTML pages.<br>
ASP.NET Web Forms Model
ASP.NET web forms extend the event-driven model of interaction to the web applications. The browser submits a web form to the web server and the server returns a full markup page or HTML page in response.<br>
All client side user activities are forwarded to the server for stateful processing. The server processes the output of the client actions and triggers the reactions.
Now, HTTP is a stateless protocol. ASP.NET framework helps in storing the information regarding the state of the application, which consists of:
•	Page state
•	Session state
The page state is the state of the client, i.e., the content of various input fields in the web form. The session state is the collective information obtained from various pages the user visited and worked with, i.e., the overall session state. To clear the concept, let us take an example of a shopping cart.
User adds items to a shopping cart. Items are selected from a page, say the items page, and the total collected items and price are shown on a different page, say the cart page. Only HTTP cannot keep track of all the information coming from various pages. ASP.NET session state and server side infrastructure keeps track of the information collected globally over a session.
The ASP.NET runtime carries the page state to and from the server across page requests while generating ASP.NET runtime codes, and incorporates the state of the server side components in hidden fields.<br>
This way, the server becomes aware of the overall application state and operates in a two-tiered connected way.
The ASP.NET Component Model
The ASP.NET component model provides various building blocks of ASP.NET pages. Basically it is an object model, which describes:
•	Server side counterparts of almost all HTML elements or tags, such as 'form' and 'input'.
•	Server controls, which help in developing complex user-interface. For example, the Calendar control or the Gridview control.<br>
ASP.NET is a technology, which works on the .Net framework that contains all web-related functionalities. The .Net framework is made of an object-oriented hierarchy. An ASP.NET web application is made of pages. When a user requests an ASP.NET page, the IIS delegates the processing of the page to the ASP.NET runtime system.<br>
The ASP.NET runtime transforms the .aspx page into an instance of a class, which inherits from the base class page of the .Net framework. Therefore, each ASP.NET page is an object and all its components i.e., the server-side controls are also objects.<br>
Components of .Net Framework 3.5
Before going to the next session on Visual Studio.Net, let us go through at the various components of the .Net framework 3.5. The following table describes the components of the .Net framework 3.5 and the job they perform:<br>
Components and their Description
(1) Common Language Runtime or CLR<br>
It performs memory management, exception handling, debugging, security checking, thread execution, code execution, code safety, verification, and compilation. The code that is directly managed by the CLR is called the managed code. When the managed code is compiled, the compiler converts the source code into a CPU independent intermediate language (IL) code.<br>
 A Just In Time(JIT) compiler compiles the IL code into native code, which is CPU specific.<br>
(2) .Net Framework Class Library<br>
It contains a huge library of reusable types. classes, interfaces, structures, and enumerated values, which are collectively called types.<br>
(3) Common Language Specification<br>
It contains the specifications for the .Net supported languages and implementation of language integration.<br>
(4) Common Type System
It provides guidelines for declaring, using, and managing types at runtime, and cross-language communication.<br>
(5) Metadata and Assemblies
Metadata is the binary information describing the program, which is either stored in a portable executable file (PE) or in the memory. Assembly is a logical unit consisting of the assembly manifest, type metadata, IL code, and a set of resources like image files.<br>
(6) Windows Forms
Windows Forms contain the graphical representation of any window displayed in the application.<br>
(7) ASP.NET and ASP.NET AJAX<br>
ASP.NET is the web development model and AJAX is an extension of ASP.NET for developing and implementing AJAX functionality. ASP.NET AJAX contains the components that allow the developer to update data on a website without a complete reload of the page.<br>
(8) ADO.NET
It is the technology used for working with data and databases. It provides access to data sources like SQL server, OLE DB, XML etc. The ADO.NET allows connection to data sources for retrieving, manipulating, and updating data.<br>
(9) Windows Workflow Foundation (WF)<br>
It helps in building workflow-based applications in Windows. It contains activities, workflow runtime, workflow designer, and a rules engine.<br>
(10) Windows Presentation Foundation<br>
It provides a separation between the user interface and the business logic. It helps in developing visually stunning interfaces using documents, media, two and three dimensional graphics, animations, and more.<br>
(11) Windows Communication Foundation (WCF)<br>
It is the technology used for building and executing connected systems.<br>
(12) Windows CardSpace
It provides safety for accessing resources and sharing personal information on the internet.<br>
(13) LINQ
It imparts data querying capabilities to .Net languages using a syntax which is similar to the tradition query language SQL.<br>
	&hellip;</p>
  </div><!-- .entry-content -->	
</article><!-- #post-## -->
		</main><!-- #main -->
	</div><!-- #primary -->
<%@include file="footer.jsp" %>