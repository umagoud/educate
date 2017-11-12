
<%@include file="java-header.jsp"%>
<%@include file="corejavaleftbar.jsp"%>
<article>
	<div>
		<p class="alignleft">
		<a href="super-this.jsp" class="previous">&laquo; Previous</a>
		<p class="alignright"> <a
			href="exception-handling.jsp" class="next">Next &raquo;</a>
	</div>
	<p><h1>Static Keyword</h1>
	<p><b>Static: </b>static is a ketword used in java. this static used with class variables and methods. so that you can call these variables and methods without creating any object or instance.
We dont need to instantiate any class to call that class members. Independent of any objects of that class</p>
<h2>Static Variables</h2>
<p>Variables declared with static modifier is called static variables.We can access these static variables with class name here no need to create any object to class. with out object we can access these static variables.
Static variables are often used when finding global data about the instances of a class.
<p><b>Example for static variable</b>
<p>public class Demo
<p>{
<p>public static void main(String agrs[])
<p>{
<p>FirstClass.i=10;
<p>FirstClass f = new nFirstClass();
<p>f.show();
<p>}
<p>}
<p>class FirstClass
<p>{
<p>static int i;
<p>System.out.println(i);
<p>public void show()
<p>{
<p>System.out.println("hello");
<p>}<p>}</p>

<h2>Static Methods</h2>
<p> Methods declared with static modifier is called static Methods.We can access these static methpods with class name. Here no need of creating object. Without creating object we are calling parent class static methods.
<p>Example is public static void main(String args[])
<p>With out creating any object JVM calling static main() method.
<p><b>Example code</b>
<p>public class Demo
<p>{
<p>public static void main(String agrs[])
<p>{
<p>FirstClass.i=10;
<p>FirstClass.show();
<p>}
<p>}
<p>class FirstClass
<p>{
<p>static int i;
 <p>public static void show()
<p>{
<p>System.out.println("hello");
<p>System.out.println(i);
<p>}<p>}
</p>
	
	<p><h1>Final Keyword</h1>
	<p>final keyword we can with variables, methods and classes</p>
<h2>Final variables</h2>
<p>Variables declared with final modifier is called final variables.We can not change final variable values. these are constant or unchangable.
<p><b>Final variable Example:</b>
<p>public class Demo
<p>{
<p>public static void main(String args[])
<p>{
<p>final int i=5;
<p>System.out.println(i);
<p>}
<p>}
<p>output 5</p>

<h2>Final Methods</h2>
<p>Methods declared with final modifier is called final Methods.Final methods are con not overridde by others.
<p><b>Example Code</b>
<p>public class Demo
<p>{
<p>public static void main(String args[])
<p>{
<p>B obj=new B();
<p>obj.show();
<p>obj.display();
<p>}
<p>}
<p>class A
<p>{
<p>final public void show()
<p>{
<p>System.out.println("hello");
<p>}
<p>}
<p>class B extends A
<p>{
<p>final public void display()//error we can not override final methods
<p>{
<p>System.out.println("hi");
<p>}
<p>}</p>

<h2>Final classes</h2>
<p>Classes declared with final modifier is called final classes.Final classes can not inherit or can not extended by sub class.

<p>class Demo
<p>{
<p>Public static void main(String args[])
<p>{
<p>A obj= new A();
<p>B obj1=new B();
<p>obj1.show
<p>}<p>}
<p>final class A
<p>{
<p>System.out.prinln("hello");
<p>}
<p>class B extends A// error We can not extend final classes
<p>{
<p>public void show()
<p>{
<p>System.out.prinln("hi");
<p>}

	</p>
	

</article>
	<%@include file="footer.jsp"%>