<%@include file="java-header.jsp"%>
  <%@include file="corejavaleftbar.jsp" %> 
<article>
<div>
	<p class="alignleft"><a href="java-inheritance.jsp" class="previous">&laquo; Previous</a>
<p class="alignright"><a href="java-abstact-class.jsp" class="next">Next &raquo;</a></div>
<h1>Polymorphism</h1>

<b>PolyMorphism: </b>existing in many forms.
		<p>
			<b>poly-</b> many
		<p>
			<b>morphism- </b>behaviour or forms
		<p>
			<b>Use:</b> It is used in implementing inheritance. Its main role is
			allowing objects having different internal structures. then these
			objects share the same external interface.
		<p>This is nothing but one to many relationship. One object
			references to different states.
		<p>
			<b>Types of Polymorphism</b>
		<p>
			<b>1.Compiletime Polymorphism</b>(Static binding)
		<p>
			<b>2.Runtime Polymorphism</b>(Dynamic Binding)
		<p>Polymorphism performs by function Overloading(method
			Overloading) and function Overriding(method overriding).
		<p>
			<b>Method OverLoading(Static binding):</b> Same class same method
			name but differnt parameters is called OverLoading
		<p>
			<b>Runtime Polymorphism</b>
		</p>
		<p>class Car{
		<p>int getSpeed(){return 0;}
		<p>}
		<p>class Gear1 extends Car{
		<p>float getSpeed(){return 20;}
		<p>}
		<p>class Gear2 extends Car{
		<p>float getSpeed(){return 40;}
		<p>}
		<p>class Gear3 extends Car{
		<p>float getSpeed(){return 60;}
		<p>}
		<p>class TestPolymorphism{
		<p>public static void main(String args[]){
		<p>Car c;
		<p>c=new Gear1();
		<p>System.out.println("Gear1 Limit Speed: "+c.getSpeed());
		<p>c=new Gear2();
		<p>System.out.println("Gear1 Limit Speed: "+c.getSpeed());
		<p>c=new Gear3();
		<p>System.out.println("Gear1 Limit Speed: "+c.getSpeed());
		<p>}
		<p>}
		<p>
			<b>Output:</b>
		<p>Gear1 Limit Speed: 20</p>
		<p>Gear1 Limit Speed: 40</p>
		<p>Gear1 Limit Speed: 60</p>
		<p>
			<b>Runtime Polymorphism Example 2</b>
		</p>
		class Shape{ void draw(){System.out.println("drawing shape");} } class
		Rectangle extends Shape{ void draw(){System.out.println("draw
		rectangle...");} } class Circle extends Shape{ void
		draw(){System.out.println("draw circle...");} } class Triangle extends
		Shape{ void draw(){System.out.println("draw triangle...");} } class
		TestPolymorphism{ public static void main(String args[]){ Shape s;
		s=new Rectangle(); s.draw(); s=new Circle(); s.draw(); s=new
		Triangle(); s.draw(); } }
		<p>
			<b>Output:</b>
		<p>draw rectangle</p>
		<p>draw circle</p>
		<p>draw triangle</p>
		<p>
			<b>Method Overloading Example</b>
		<p>class A {
		<p>public void show() {
		<p>} public void show( int i)
		<p>{ }
		<p>A(class name) obj(object)= new A()(constructor); obj.show();
		<p>obj.show(10); }
		<p>
			<b>Method OverRiding(Dynamic Binding):</b> Same Method name same
			Parameters but different classes
		<p>
			<b>Method OverRiding</b>
		<p>class A {
		<p>public void show()
		<p>{
		<p>}
		<p>class B extends A
		<p>{
		<p>public void show()
		<p>{
		<p>}
		<p>}
		<p>B obj=new B();
		<p>obj.show();
		<p>}
		<p>
</article>
	<%@include file="footer.jsp"%>