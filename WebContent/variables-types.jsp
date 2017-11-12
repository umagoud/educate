<%@include file="java-header.jsp"%>
  <%@include file="corejavaleftbar.jsp" %> 
<article>
<div>
	<p class="alignleft"><a href="java-naming-conventions.jsp" class="previous">&laquo; Previous</a>
<p class="alignright"><a href="java-inheritance.jsp" class="next">Next &raquo;</a></div>
<p><h1>Types of Variables</h1>
<p><b>1.Instance variables:</b>These Instance variables are presents with in the class and outside a method or constructor.
<p><b>2. Local variables:</b>We declare these local variables inside a method or constructor.
<p><b>3.Class variable:</b>These Class variables are presents inside a class but it is static variable
<h2>Variable Declaration</h2>
 <p>int i;
 <p>float j;</p>

<h2>Variable types are shown in below program</h2>
<p>public class Demo
<p>{
<p>public static void main(String args[])
<p>{
<p>A obj=new A(6);
<p>obj.show();
<p>}<p>}
 <p>class A
<p>{
static int j;<b>// static variable</b>
<p>int i;<b>// instance variable</b>
<p>public A(int i)<b>// local variable</b>
<p>{
<p>this.i=i;<b>//current instance variable</b>
<p>}
<p>public void show()
<p>{
<p>System.out.println("i value is"+i);
<p>}
<p>}

</article>