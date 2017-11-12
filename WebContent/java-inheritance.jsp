 <%@include file="java-header.jsp"%>
  <%@include file="corejavaleftbar.jsp" %> 
<article>
<div>
	<p class="alignleft"><a href="variables-types.jsp" class="previous">&laquo; Previous</a>
<p class="alignright"><a href="java-polymorphism.jsp" class="next">Next &raquo;</a></div>
<h1>Inheritance</h1>
<p>
			<b>Inheritance:</b>
		<p>Inheriting parent class properties to sub class
		<p>class A(parent class)
		<p>{
		<p>add()
		<p>{}
		<p>}
		<p>class B(child class) extends A
		<p>{
		<p>sub()
		<p>{
		<p>}
		<p>}
		<p>class MainClass
		<p>{
		<p>public static void main(String args[])
		<p>{
		<p>B obj= new B();
		<p>obj.add();
		<p>obj.sub();
		<p>}
		<p>
			<b>Single Inheritance:</b>One sub class inherit the properties from
			one parent class(one to one relation)
		<p>class B extends A (parent class)
		<p>Example:
		<p>class A
		<p>{
		<p>//Statements
		<p>}
		<p>class B extends A
		<p>{
		<p>//Statements
		<p>}
		<p>
			<b>MultiLevel Inheritance: </b>One parent class extended by one mid
			level class(sub class) that mid level class extended by another sub
			child class.
		<p>Example:
		<p>class A
		<p>{
		<p>//Statements
		<p>}
		<p>Class B(child class) extends A
		<p>{
		<p>//Statements
		<p>}
		<p>Class C(sub child) extends B
		<p>{
		<p>//Statements
		<p>}
		<p>
			<b>Multiple Inheritance:</b> One subclass extending two parent
			classes.
		<p>Example: class A and class B are parent classes
		<p>class A(parent class)
		<p>{
		<p>//Statements
		<p>}
		<p>Class B(parent class)
		<p>{
		<p>//Statements
		<p>}
		<p>Class C(child class) extends B,A
		<p>{
		<p>//Statements
		<p>}
		<p>class C(child class) extends A, B(parent classes)
		<p>class c extends B, A //This is not possible JVM throughs
			Ambiguity related error.
		<p>If class B, A both have same method name third class tring to
			acces that method.Then JVM will confuse between these 2 classes.
			These kind of Ambiguity problem will and program is correpted.
		<p>
			For this reason Multiple inheritance is not possible in java
			direclty. Through <b>interface</b> Multiple Inheritance is possible .
		
		<p>
			<b>Inheritance use:</b>Code reusability
		<p>

</article>