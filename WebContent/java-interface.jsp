<%@include file="java-header.jsp"%>
  <%@include file="corejavaleftbar.jsp" %> 
<article>
<div>
	<p class="alignleft"><a href="java-abstact-class.jsp" class="previous">&laquo; Previous</a>
<p class="alignright"><a href="java-keywords.jsp" class="next">Next &raquo;</a></div>
<h1>Interface</h1>
<p>
			<b>Interface</b>
		<p>1.Interface have only abstract methods. by default methods are
			abstract (optional)
		<p>2.variables are by default final
		<p>3. Abstract methods doent have implementation. Interface purely
			abstact.
		<p>4. a class can implement multiple interfaces
		<p>5. A interface can extend no of interfaces.
		<p>6. "abstract" is optional to declare a method as an abstract
		<p>7. it only have public abstract methods
		<p>8.public static final variables
		<p>
			<b>Abstract class example</b>
		<p>
			<b>An abstract class can extend only one class or one abstract
				class at a time</b>
		<p>class Student1
		<p>{
		<p>public void displayOne()
		<p>{
		<p>System.out.println("Student1 details");
		<p>}
		<p>}
		<p>abstract class Student2
		<p>{
		<p>public void displayTwo()
		<p>{
		<p>System.out.println("Student2 details");
		<p>}
		<p>}
		<p>abstract class Student3 extends Student1
		<p>{
		<p>abstract void displayTree();
		<p>}
		<p>class Student4 extends Student3
		<p>{
		<p>public void displayTree()
		<p>{
		<p>System.out.println("Display Student3 details");
		<p>}
		<p>}
		<p>class College
		<p>{
		<p>public static void main(String args[])
		<p>Student4 s4=new Student4();
		<p>s4.displayTree();
		<p>}
		<p>}
		<p>
			<b>Interface Example</b>
		<p>
			<b>One interface can Extend more thand two interfaces</b>
		<p>
			<b>One class can implement one interface and extend one class at
				a time</b>
		<p>interface Student1
		<p>{
		<p>public void diplay1();)
		<p>{
		<p>}
		<p>interface Student2
		<p>{
		<p>public void display2();
		<p>}
		<p>interface Student3 extends Student1, Student2
		<p>{
		<p>}
		<p>class Student4 implements Student3
		<p>{
		<p>public void diplay1()
		<p>{
		<p>System.out.println("Display Student1 details");
		<p>}
		<p>public void diplay1()
		<p>{
		<p>System.out.println("Display Student2 details");
		<p>}
		<p>public void diplay4()
		<p>{
		<p>System.out.println("Display Student4 details");
		<p>}
		<p>class College
		<p>{
		<p>public static void main(String args[])
		<p>{
		<p>Student4 s4= new Student4();
		<p>s4.display1();
		<p>s4.display2();
		<p>}
		<p>}
		<p>
		<b>An abstract class bstract methods are public or protected</b>
		<p>abstract class Employee1
		<p>{
		<p>protected abstract void display1();
		<p>public abstract void display2();
		<p>public void display3();
		<p>}
		<p>class Employee2 extends Employee1
		<p>{
		<p>public void display1()
		<p>{
		<p>System.out.println("Display Employee1 domain details");
		<p>}
		<p>public void display2()
		<p>{
		<p>System.out.println("Display Employee1 personal details");
		<p>}
		<p>}
		<p>class Office
		<p>{
		<p>public static void main(String args[])
		<p>{
		<p>Employee2 e2= new Employee2();
		<p>e2.display1();
		<p>e2.display2();
		<p>}
		<p>}
		<p>
			<b>an abstract class can have static, final or static final with
				any access specifiers</b>
		<p>abstract class Employee1
		<p>{
		<p>private int emp_id=111;
		<p>protected final int emp_no=120;
		<p>public static final int Domain_id=10;
		<p>public void display1()
		<p>{
		<p>System.out.println("emp1 details"+emp_id);
		<p>}
		<p>}
		<p>class Employee2 extends Employee1
		<p>{
		<p>public void diplay2()
		<p>{
		<p>System.out.println("employee2 details"+emp_no);
		<p>System.out.println("employee2 details"+domain_id);
		<p>}
		<p>}
		<p>class Office
		<p>{
		<p>public static void main(String args[])
		<p>{
		<p>Employee2 e2=new Employee2();
		<p>e2.display2();
		<p>e2.display1();
		<p>}
		<p>}
		<p>
			<b>Interface can have only public static final variables</b>
		<p>interface Emp1
		<p>{
		<p>int emp_id=15;
		<p>}
		<p>class Emp2 implements Emp1
		<p>{
		<p>public void display1()
		<p>{
		<p>System.out.println("employee details="+emp_id);
		<p>}
		<p>}
		<p>class Office
		<p>{
		<p>public stativ void main(String args[])
		<p>{
		<p>Emp2 e2= new Emp2();
		<p>e2.display1();
		<p>}
		<p>}
		<p>
			<b>Marker interface:</b>Marker interface is interface with no field
			or methods.
		<p>In otherwords we called it as empty interface</p>
		<p>Examples of Marker interfaces are Serializable, Clonable,
			SingleThreadModel, Event listener.
		<p>These are implemented by the classes or their super classes in
			order to add some functionality.</p>

		<p>

</article>