<%@include file="java-header.jsp"%>
  <%@include file="corejavaleftbar.jsp" %> 
<article>
<div>
	<p class="alignleft"><a href="java-packages.jsp" class="previous">&laquo; Previous</a>
<p class="alignright"><a href="variables-types.jsp" class="next">Next &raquo;</a></div>
<h1>Java Naming Conventions</h1>
<p>
		
		<h2>Class Naming Convention</h2>
		
				<p>	<b>Class:</b>Class is a blueprint. It is a collection of all
			variables , methods and interfaces.
		<p>
		<p>
			<b>Declaring a Class:</b> A Class is described by use of the class
			keyword the attributes and methods (Behavior) of a class are defined
			inside a class body. In java, the braces {} mark the beginning and
			the end of a class or method. Here we use the following notation.[ ]
			- optional - are mandatory (must) <b>Example:</b> Java follows Naming
			Conventions
		</p>
		<p>Class Name Declaration: class EducateWorld
		<p>{</p>
		}
		<p>First letter must be Uppercase and spaces not allowed in java.</p>
		<p>
		<h2>Object Naming Convention</h2>
			<p><b>Object:</b> Object is RealTime entity. In otherwords it is an<b>
				instance</b> of class.
		</p>
		<p>Object is a runtime entity and every object is independent.
			Every object has a state, identity and behavior. State represented by
			the variables of that object, identity referred by the reference
			variable of that object, behavior represents the methods of that
			class.</p>
		<p>
			<b>Example: </b>
		</p>
		<p>Emp e = new Emp();</p>
		<p>Emp() is a constructor.>Emp() is the method, that returns new
			instance of the class.</p>
		<p>new is an operator is used to allocate the memory to an object.</p>
		<p>e.eno=101;</p>
		<p>Here we are assigning values to instance variables using
			"."(Dot) operator</p>
		<p>e.getEmpDetails ();</p>
		<p>Here we are calling the method of an object using "."(Dot)
			operator</p>
		<p>
		<h2>Method Naming Convention</h2>
		<p><b>Method:</b>A method is a sequence of declaration and executable
			statements encapsulated together like an independent mini program
			(sub program).
		<p>
			<b>Declaration:</b>
		<p>public void show()
		<p>{
		<p>//Statements
		<p>}
		<p>
			<b>Method Naming rules</b>
		</p>
		<p>1.Method must be meaningful
		<p>2.Starting letter is lower case.
		<p>3.Method name should start with verb followed by noun
		<p>4.If the method name contains two or more words join the words
			and begin each word with an upper case letter.
		<p>
			<b>Example:</b>
		</p>
		<p>educateWorld()</p>
		<p>svGlobal()</p>
		<p>getDetails()</p>
		<p>
		<p>
			<b>The methods are of 2 Types</b>
		</p>
		<p>1. Predefined methods: These are library functions included
			along with the software.
		<p>2. User defined methods: These functions are defined and coded
			by the programmers for a specific purpose in a project.
		<p>

</article>

<%@include file="footer.jsp"%>