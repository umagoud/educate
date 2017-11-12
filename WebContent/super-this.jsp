
<%@include file="java-header.jsp"%>
<%@include file="corejavaleftbar.jsp"%>
<article>
	<div>
	
		<p class="alignleft"><a href="java-interface.jsp" class="previous">&laquo; Previous</a> 
		
		<p class="alignright"><a href="java-static-final.jsp" class="next">Next &raquo;</a></div>
		
	<p>
			<h1>super Keyword: </h1>
			<p>super variable references immediate parent
			class object. We can apply super keyword for variables and methods.This super keyword is used to call the parent class or super class variables and methods in sub class. 
		<p>
			<b>super keyword with variable</b>
			
		<p>class Test
		<p>{
		<p>String exam="java";
		<p>void printExam1()</p>
		{
		<p>System.out.println("opps");
		<p>}
		<p>class Test1 extends Test
		<p>{super.printExam1();
		<p>String exam="clanguage";
		<p>
			<b>super keyword with method</b>
		<p>void printExam() {
		<p>System.out.println(exam);
		<p>System.out.println(super.exam);
		<p>}
		<p>}
		<p>class AllTest
		<p>{
		<p>public static void main(String args[])
		<p>{
		<p>Test1 t=new Test1();
		<p>t.printExam();
		<p>t.printExam1();
		<p>}
		<p>}
		<p>class Test
		<p>{
		<p>void printExam1()
		<p>{
		<p>System.out.println("opps exam");
		<p>}
		<p>class Test1 extends Test
		<p>{
		<p>void printExam1()
		<p>{ System.out.println("C language exam");
		<p>}
		<p>void printExam2()
		<p>{
		<p>System.out.println("Oracle exam");
		<p>}
		<p>void printTest()
		<p>{
		<p>super.printExam1();
		<p>printExam2();
		<p>}
		<p>class AllTest
		<p>{
		<p>public static void main(String args[])
		<p>{
		<p>Test1 t=new Test1();
		<p>t.printprintTest();
		<p>t.printExam1();
		<p>}
		<p>}
		<p>
			<b>This:</b> It is a variable that refers to current object
		<p>class Employee
		<p>{
		<p>int eid;
		<p>String ename;
		<p>float sal;
		<p>Employee( int eid, String ename, float sal)
		<p>{
		<p>this.eid=eid;
		<p>this.ename= ename;
		<p>this.sal=sal;
		<p>}
		<p>void dispaly()
		<p>{
		<p>System.out.println(eid+""+ename+""+sal);
		<p>}
		<p>}
		<p>class EmpThis
		<p>public static void main(String args[])
		<p>{
		<p>Employee e= new Employee(11,"ravali",200000);
		<p>Employee e1=new Employee(12,"uma", 500);
		<p>e.display();
		<p>e1.display();
		<p>}
		<p>}
		<p>
			<b>Example 2:</b>
		<p>
			<b>This keyword is used to show current Instance variable</b>
		<p>public class Demo
		<p>{
		<p>Public static void main(String args[])
		<p>{
		<p>A obj=new A(6);
		<p>obj.show();
		<p>}
		<p>}
		<p>class A
		<p>{
		<p>int i;// instance variable
		<p>public A(int i)// local variable
		<p>{
		<p>this.i=i;//current instance variable
		<p>}
		<p>public void show()
		<p>{
		<p>System.out.println("i value is"+i);
		<p>}
		<p>}
		<p>
		
	

</article>
	<%@include file="footer.jsp"%>