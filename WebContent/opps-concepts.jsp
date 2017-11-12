
<%@include file="java-header.jsp"%>
<%@include file="corejavaleftbar.jsp"%>
<article>
	<div>
		<p class="alignleft">
		<a href="jvm-memory-areas.jsp" class="previous">&laquo; Previous</a> <p class="alignright"><a
			href="java-packages.jsp" class="next">Next &raquo;</a>
	</div>
	<p>
			<h1>Advantages of object-oriented programming</h1>
		<p>OOPs provides useful features like encapsulation, inheritance
			and polymorphism, not available in traditional programming.
		<p>Through inheritance, we can eliminate redundant code and extend
			the use of existing classes.
		<p>We can build programs from the standard working modules that
			communicate with one another. This leads to saving of development
			time and higher productivity.
		<p>The principle of data hiding helps the programmer to build
			secure programs that cannot be invaded by code in other parts of the
			program.
		<p>Object-oriented systems can be easily upgraded from small to
			large systems.</p>
		<p>Program development becomes easy due to increased modularity.</p>
		<p>
	<h1>OOPs Concepts</h1>
	<p>Class</p>
	<p>Object</p>
	<p>Encapsulation</p>
	<p>Inheritance</p>
	<p>Polymorphism</p>
	<p>Abstraction</p>
	
	
					<h2>Class:</h2>Class is a blueprint. It is a collection of all
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
			<h2>Object:</h2> <p>Object is RealTime entity. In otherwords it is an<b>
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
	<h2>Encapsulation</h2>
	<p>Encapsulation is one of the main object oriented programming language.Encapsulation is nothing but binding all the data into single unit.
	
	<p><b>Example: </b>Class
	<p>Bring all the variables , methods, constructors and interfaces into one single unit is called class. This process of binding is called Encasulation.
	<p>
    This CPU is one of the Example for Encapsulation. RAM, Motherboard, Hard disk and ROM etc parts are fixed in to one single unit is called CPU. This is one type of binding.
    <img src="http://www.educateworld.org/images/java/cpu.jpg" style="vertical-align:middle">
</p>
	
	<p>public class EducateWorld
	<p>{
	<p>int i=5;
	<p>float sal;//variables
	<p>public EducateWorld()//constructor
	<p>{
	<p>System.out.println("Constructor")
	<p>}
	<p>	public void dispaly()//method
	<p>{
	<p>System.out.println("Hello Educate World")
	<p>}
	<p>}
	</p>
	<p>
	<h2>Inheritance:</h2>
	<p> Subclass acquiring all the properties(variables and methods)of parent class is called Inheritance.
	<p>We use "extends" keyword to represent Inheritance.
	<p>The extends keyword indicating that subclass is extending or inheriting its parent class properties.
	
	<p><b>Syntax</b>
	<p>class Subclass-name extends Superclass-name  
<p>{  
  <p>//fields  
  <p>//methods
<p>}
</p>

<h2>Polymorphism</h2>
<p>Existing in many forms.One work is performed by different ways.
<p><b>Examples:</b> 1.Ice can exist in liquid state and vapor state.
<p>2.one woman can play different roles for her children she act as mother, for her parents she acts as daughter, for her husband she acts as wife.
		<p><b>poly-</b> many
		<p><b>morphism- </b>behaviour or forms
		<p>
			<b>1.Compiletime Polymorphism</b>(Static binding)
		<p>
			<b>2.Runtime Polymorphism</b>(Dynamic Binding)
			<p> polymorphism performed by Method Overloading and Method Overriding.</p>
<p>			
<h2>Abstraction</h2>	
<p>
			<b>Abstraction:</b>Hiding unnecessary data and It shows only
			important data  is called Abstraction.
		<p>It has Abstract keyword. This abstract keyword represents Abstraction.			

</article>