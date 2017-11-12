<%@include file="java-header.jsp"%>

<%@include file="corejavaleftbar.jsp"%>
	<article>
	<div id="textbox">
  <p class="alignleft"><a href="core-java.jsp" class="previous">&laquo; Previous</a></p>
  <p class="alignright"><a href="history-of-java.jsp" class="next">Next &raquo;</a></p>
</div>
		<h1 class="entry-title">Core Java</h1>
		<p>
			<strong>Core Java Notes</strong>
		</p>
		<p>
			<strong><b>Introduction</b></strong> java is a object oriented
			programming language
		<p>
			<b>Procedural programming:</b>A procedural program divides the code
			into smaller blocks called procedures. These procedures can interact
			with each other. The most important point to note in procedural
			programming is the idea of state. The state of a program is stored in
			variables. As the program execution goes on, the state changes. The
			actions (procedures or functions) will change the state (value of the
			variables). Prolog, Pascal, FORTRAN and PL/SQL are examples.
		<p>
			<b>Drawbacks:</b>In procedural language, if the programming code goes
			beyond around 25,000 lines, it becomes unmanageable and especially
			when the project comes for modification at a later stage.
		<p>
			<b>Structured programming:</b>Structured programming is a design
			approach where complex systems are broken down into smaller and more
			manageable pieces. That is, the programmer divides the programs
			source code into logically structured chunks (blocks) of code. The
			advantage is, it makes programs more readable, more reliable and more
			easily maintainer. Structured programming can be seen as a subset of
			procedural programming. It is most famous for removing or reducing
			dependency on the GOTO statement. Delphi and COBOL are examples of
			structured programming language.
		<p>
			<b>Advantages of structured programming language:</b>
		</p>
		<p>Structured programming reduces the complexity. Modularity
			allows the programmer to tackle problems in logical fashion. Also,
			using logical structures ensure that the flow of control is clear and
			readable.
		<p>
			<b>Java</b>
		</p>
		
	
		
			<b>Arguments passing:</b>
		</p>
		<p>1. Call by value (pass values)
		<p>2. Call by value (pass objects)
		<p>
			<b>Advantages of object-oriented programming</b>
		</p>
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
			<b>Java Environment</b>
		</p>
		<p>Java environment includes a large number of development tools
			and hundreds of classes and methods. The development tools are part
			of the system known as Java Development Kit (JDK) and the classes and
			methods are part of the Java Standard Library (JSL), also known as
			the Application Programming Interface (API) JRE stands for the Java
			Runtime Environment. This is the package of software that must be
			installed on a machine in order to run Java applications. That is,
			JRE gives runtime environment or execution environment to a Java
			program. It does not include development tools like compiler or
			debugger etc... JDK or SDK gives JRE and also a compiler. The JRE
			includes the Java Virtual Machine, core classes, and supporting
			files.
		<p>JRE(Java Runtime Environment)
		<p>JVM is colletion of class loader, bytecode verifier, Garbage
			collector and Execution engine.
		<p>JAVA API
		<p>
			<b>Java Development Kit: </b>The Java Development Kit comes with a
			collection of tools that are used for developing and running Java
			programs. They include:
		<p>Appletviewer (for viewing Java applets)
		<p>Javac -Java compiler
		<p>Java - Java interpreter
		<p>Javap - Java desassembler
		<p>Javah - for C header files
		<p>Javadoc - for creating HTML documents
		<p>Jdb - Java debugger it helps us to find errors in our programs
		
		
			<p>
				<b>JAVA Features</b>
			<p>Encapsulation</p>
			<p>Inheritance</p>
			<p>Polymorphism</p>
			<p>Abstraction</p>
		</div>
		<p>
			<b>Encapsulation:</b> bring all the variables and methods into one
			single unit is called class. This kind of process or data binding is
			called Encapsulation
		</p>
		<p>class A
		<p>{
		<p>int i; //variables
		<p>char ch;
		<p>public void set() // methods
		<p>{
		<p>}
		<p>}
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
			<b>Abstraction:</b>Hiding unnessasary data and It shows only
			important data or stuff is called Abstraction.
		<p>it has Abstract keyword.
		<p>
			<b>Abstraction Example:</b>
		<p>abstract class Phone
		<p>{
		<p>abstract call()
		<p>-
		<p>-
		<p>abstract camera()
		<p>}
		<p>class Samsung extends Phone
		<p>{
		<p>call()
		<p>{//Statements
		<p>} camera()
		<p>{//Statements
		<p>}
		<p>}
		<p>class Iphone extends Phone {
		<p>call() {//Statements
		<p>} camera()
		<p>{//Statements }
		<p>}
		<p>public class RepairShop {
		<p>public void repair(Iphone p) {
		<p>p.call() }
		<p>
			<b>Java program excution process:</b>
		<p>1.Write java program
		<p>2.Save it with class name and extension is .java(.java file)
		<p>3.Compile the program(javac classname.java).
		<p>4.Execute the program(java classname).
		<p>5.You will get Output
		<p>
			<b>Program name saving:</b> classname.java
		<p>
			<b>Compilation:</b>javac classname.java
		<p>
			<b>Execution command:</b> java classname
		<p>Java is platform Independent. these java programs(.class files)
			run on any type of OS(Operating System)by using JVM(Java Vertual
			Machine).
		<p>For every OS has its own JVM.
		<p>
			JVM Converts Byte code (.class file) to Machine language. <img alt=""
				src="http://www.educateworld.org/images/java/jvm.png">
		<p>
			<b>Java Buzz Words</b>
		<p>simple, object Oriented , Multi Threaded, interpreted, robust,
			portable, secure, dynamic, Architecture neutral, high performance
		<p>
			<b>Java DataTypes:</b>
		<p>
			<b>1.Primitive Defined DataTypes</b>
		<p>
			<b>Non Primitive(User Defined) DataTypes:</b> Array,String etc
		<p>
			<b>Primitive Defined DataTypes are:</b>
		<p>Character : char-2bytes(to support unicode characters)
		<p>Integer : short-2bytes, int-4bytes,long-8bytes, byte-1bytes
		<p>Floating : float-4bytes Double-8bytes
		<p>Boolean : boolean-1 bit(true or false)
		<p>
			<b>Integers: </b>
		</p>
		<p>This is for numbers without fractional part and negative values
			are also allowed. Java have four types of integer. They are byte,
			short, int and long. Java does not support the concept of unsigned
			data types and therefore all Java values are by default signed,
			meaning that they can be positive or negative unsigned is not a
			keyword. The size and range of these four integer types are shown in
			the following table:</p>
		<table>
			<tr>
				<th>Type</th>
				<th>Size</th>
				<th>Range</th>
			</tr>
			<tr>
				<td>Byte</td>
				<td>One byte</td>
				<td>-128 to 127</td>
			</tr>
			<tr>
				<td>Short</td>
				<td>Two bytes</td>
				<td>-32,768 to 32,767</td>
			</tr>
			<tr>
				<td>Int</td>
				<td>Four bytes</td>
				<td>-2,147,483,648 to 2,147,483,647</td>
			</tr>
			<tr>
				<td>Long</td>
				<td>Eight bytes</td>
				<td>-9,223,372,036,854,775,808 to 9,223,372,036,854,775,807</td>
			</tr>
		</table>

		<p>
			<b> Example:</b>
		</p>
		<p>Byte b=10;
		<p>Int i=450;
		<p>Short s=50;
		<p>Long l=50l;
		<p>Or
		<p>Long l=50; Floating-point Type: Floating-point type is used to
			hold numbers containing fractional parts such as 45.44 or -23.21.
			There are two types of floating-point types, float and double. The
			following table gives the size and range of these two types
		<table>
			<tr>
				<th>Type</th>
				<th>Size</th>
				<th>Range</th>
				<th>Description</th>
			</tr>
			<tr>
				<td>Float</td>
				<td>4 bytes</td>
				<td>3.4e-038 to 3.4e+038</td>
				<td>Use full when fractional part is needed.</td>
			</tr>
			<tr>
				<td>Double</td>
				<td>8 bytes</td>
				<td>1.7e-308 to 1.7e+308</td>
				<td>Useful for mathematical functions like sin, cos etc..</td>
			</tr>
		</table>

		<p>
			<b> Example:</b>
		</p>
		<p>Float sal=50.600f;</p>
		<p>Or</p>
		<p>Float sal=49.900F;</p>
		<p>It must to suffix the float value with f or F. else, it is a
			compilation error and floating-point number is taken as double by
			default.
		<p>Double price=94.15d;</p>
		<p>or</p>
		<p>Double price=39.15;</p>
		<p>
			<b>Characters:</b>This is used to store characters in Java. Char in
			Java is not the same as char in C or C++.Java char is of 2 bytes (16
			bits) size. C/C++ char is an integer type of 1 byte (8 bits) wide.
		<p>java follows Unicode to represent Characters. Unicode defines a
			fully international character set that can represent all of the
			characters (alphabets) found in all general human languages like
			English,Thai, Hebrew, Telugu etc..
		<p>
			<b> Example:</b>
		</p>
		<p>char ch1,ch2;</p>

		<p>
			<b>Object Creation:</b>
		<p>public class Tablet
		<p>{
		<p>int i=10;
		<p>int j=4;
		<p>private void show()
		<p>{
		<p>i=i+j;
		<p>} public static void main(String args[]) { Tablet t= new
			Tablet(); t.show(); }
		<p>}
		<p>
			<b>Access Modifiers:</b>
		</p>
		<p>
			<b>public:</b> This works in any package.
		<p>
			<b>private:</b> This works in with in the class.
		<p>
			<b>protected:</b> This works in with in the package and subclasses of
			other package.
		<p>
			<b>default:</b> This works in with in the package.
		<p>
			<b>final:</b>Final member variable are constant that is unchangeable.
		
		<p>
			<b>static:</b>Each class instance has its own copy of any member
			variables. It shows member variable belonging to the class itself,
			independent of any objects of that class. Such member variables are
			called static members and are declared with the static modifier
			keyword. Static variables are often used when finding global data
			about the instances of a class.
		<p>
			<b>abstract: </b>When applied to a class, It indicates that the class
			has not implemented and that is should not be instantiated. If
			applied to member function declaration, the abstract modifier means
			that the function will be implemented in a subclass. Since the
			function has no implementation, the class cannot be instantiated and
			must be declared as abstract. Interfaces are by default abstract.
		<p>
			<b>native:</b>Native methods are implemented in other Languages, such
			as C, so they have no code block. Many of the classes in the Core api
			are native
		<p>
			<b>Example:</b> public static native double sin (double a ) ;
		</p>
		<p>
			<b>synchronized: </b>This allows only one thread to execute the
			function at a time.
		</p>
		<p>Synchronized methods are by default not static , but you can
			declare them as static.</p>
		<p>The synchronized modifier does not apply to classes or member
			variables.</p>
		<p>
			<b>transient:</b> It is used in conjunction with serialization to
			provide for persistent objects. These objects can be avid to disk and
			restored on another machine or on the same machine.This transient
			modifier means not to save the variable.
		</p>
		<p>
			<b>volatile:</b> Volatile variable is one whose value may change
			independent of the Java program itself.
		</p>
		<p>
			<b>strictfp: </b>This restricts floating-point calculations to ensure
			portability.
		</p>

		<p>class Test
		<p>{
		<p>class Workbook
		<p>{
		<p>}
		<p>}
		<p>interface Test
		<p>{
		<p>interface Workbook
		<p>{
		<p>}
		<p>}
		<p>
			<b>public:</b>outer classes, inner classes, methods, variables,
			constructors, interfaces(inner and outer), enum(inner and outer)
		<p>
			<b>private:</b> inner classes, methods, variables,constructors, inner
			interface,inner enum
		<p>
			<b>protected:</b>inner classes, methods, variables,constructors,
			inner interface,inner enum
		<p>1.class EducateWorld
		<p>{
		<p>class SvGlobal
		<p>{
		<p>}
		<p>}
		<p>
			<b>2.Interface with in Class:</b>
		<p>class A
		<p>{
		<p>static interface C
		<p>{
		<p>}
		<p>}
		<p>3.interface A
		<p>{
		<p>public static interface B
		<p>{
		<p>}
		<p>}
		<p>4.interface A
		<p>{
		<p>public static class B
		<p>{
		<p>}
		<p>}
		<p>JRE
		<p>-JVM
		<p>-Java API
		<p>JNI: java native interface:
		<p>
			<b>Memory Areas in JVM</b>
		<p>
			<b>Heap Area:</b> Heap area is used the store the memory for
			dynamically allocated objects.
		<p>
			<b>Method Area:</b> This is a apart of heap area JVM allocate this to
			threads.
		<p>
			<b>program counter:</b>This is a register in a computer processor
			that contains the address (location) of the instruction being
			executed at the current time.
		<p>
			<b>stack:</b>stack is used to store the local variables declared in
			methods, and blocks.
		<p>
			<b>native method stack:</b>It access the runtime data areas of the
			virtual machine.
		<p>
			<b>String:</b>it is Non-mutable. Once you create string object
			provided with value that we can not change.
		<p>
			<b>String Creation possible in 2ways:</b>
		<p>String is a class in java
		<p>
			<b>First way: </b>
		<p>String s="Hello";
		<p>String s1="Hello";
		<p>if(s==s1)-->true
		<p>s and s1 locate same memory location because they are storing
			same variable so JVM keeps it as one copy in one memory location.
		<p>
			<b>Second way</b>
		<p>String s= new String("hello");
		<p>String s1= new String("hello");
		<p>if(s==s1)-->false
		<p>s and s1 points different memory locations.
		<p>
			<b>StringBuffer:</b>It is mutable. We can change the string value in
			the program. String Buffer contains some methods
		<p>they are:
		<p>insert(), replace(), append()
		<p>
			<b>String Buffer Example:</b>
		<p>String s="Hello";
		<p>String s+="world";
		<p>JVm internally called StringBuffer because here s value is
			changing to Helloworld.
		<p>String s= new StringBuffer("Hello") append("world").toString();
		
		<p>
			<b>String class methods:</b>
		<p>
			<b>length():</b>It gives length of the String.
		<p>
			<b>Example:</b>
		<p>public class LengthExample{
		<p>public static void main(String args[]){
		<p>String s1="Educate";
		<p>String s2="World";
		<p>System.out.println("string length is: "+s1.length());//7 is the
			length of Educate string
		<p>System.out.println("string length is: "+s2.length());//6 is the
			length of world string
		<p>}
		<p>}
		<p>
			<b>indexOf(char/string)</b>--returns--Index position for given string
			or char
		<p>public class IndexOfExample{
		<p>public static void main(String args[]){
		<p>String s1="This is educate world website";
		<p>//giving substring
		<p>int index1=s1.indexOf("is");//returns the index of is substring
		
		<p>int index2=s1.indexOf("world");//returns the index of index
			substring
		<p>System.out.println(index1+" "+index2);//2 17
		<p>//giving substring with from index
		<p>int index3=s1.indexOf("is",4);//returns the index of is
			substring after 4th index
		<p>System.out.println(index3);//5 i.e. the index of another is
		<p>//passing char value
		<p>int index4=s1.indexOf('h');//returns the index of h char value
		
		<p>System.out.println(index4);//1
		<p>}
		<p>}
		<p>
			<b>charAt(int)</b>--returns-character value at given index integer
		<p>public class Test{
		<p>public static void main(String args[]){
		<p>String name="EducateWorld";
		<p>char ch=name.charAt(4);//returns the char value at the 4th
			index
		<p>System.out.println(ch);
		<p>}
		<p>}
		<p>Output: a
		<p>
			<b>subString(int startIndex, int endIndex): </b>it gives the
			subString from the given String.
		<p>public class A{
		<p>public static void main(String args[]){
		<p>String s1="EducateWorld";
		<p>System.out.println(s1.substring(3,6));//returns ucat
		<p>System.out.println(s1.substring(7));//returns world
		<p>}
		<p>}
		<p>
			<b>concat():</b>combines specified string to another string gives
			combination of two strings as one string.
		<p>public class A{
		<p>public static void main(String args[]){
		<p>String s1="Educate world";
		<p>s1.concat("is a technical website");
		<p>System.out.println(s1); //Educate world is a technical website
		
		<p>s1=s1.concat(" you can refer java concepts here");
		<p>System.out.println(s1); //Educate world you can refer java
			concepts here
		<p>}
		<p>}
		<p>
			<b>toLowerCase():</b>this returns the string in lowercase format.
		<p>
			<b>Example</b>
		<p>public class StringTest{
		<p>public static void main(String args[]){
		<p>tring s1="EDUCATE WORLD buiLDS YOUR caREER";
		<p>String s2=s1.toLowerCase();
		<p>System.out.println(s2); //educate world build your career
		<p>}
		<p>}
		<p>
			<b>toUpperCase():</b>this returns the string in uppercase format.
		<p>
			<b>Example</b>
		<p>public class StringTest{
		<p>public static void main(String args[]){
		<p>String s1="educate WORld buiLDS your caREER";
		<p>String s2=s1.toUpperCase();
		<p>System.out.println(s2); //EDUCATE WORLD BUILD YOUR CAREER
		<p>}
		<p>}
		<p>
			<b>super Keyword: </b>super variable references immediate parent
			class object
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
			<p>
			<b>Abstract class</b>
		<p>1. This class have both abstract methods and concrete methods
		<p>2.it may contain non final variables.
		<p>3.Abstract methods doent have implementation.
		<p>4. An abstract class can extend only one class or one abstract
			class at a time.
		<p>5.Abstract Method Implementation done in different class.
		<p>6.mandatory to declare abstract in front of abstract methods.
		<p>7.methods are public or protected
		<p>8.an abstract class can have static, final or static final with
			any access specifiers
		<p>
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
			<b>Final Keyword</b>
		<p>final keyword we can use with variables, methods and classes
		<p>
			<b>Final variables:</b> We can not change final variable values
		<p>
			<b>Final variable Example:</b>
		<p>public class Demo
		<p>{
		<p>public static void main(String args[])
		<p>{
		<p>final int i=5;
		<p>System.out.println(i);
		<p>}
		<p>}
		<p>output 5
		<p>
			<b>Final Method Example</b>
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
		<p>final public void display()//error we can not override final
			methods
		<p>{
		<p>System.out.println("hi");
		<p>}
		<p>}
		<p>
			<b>Final classes</b>
		<p>class Demo
		<p>{
		<p>Public static void main(String args[])
		<p>{
		<p>A obj= new A();
		<p>B obj1=new B();
		<p>obj1.show
		<p>}
		<p>}
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
		<p>}
		<p>
			<b>Types of Variables</b>
		<p>
			<b>1.Instance variables:</b> Presents with in the class and outside a
			method
		<p>
			<b>2. Local variables:</b>We declare these local variables inside a
			method
		<p>
			<b>3.Class variable:</b>Presents inside a class but it is static
			variable
		<p>
			<b>Variable example</b>
		<p>int i;
		<p>
			<b>This keyword:</b>It is used to show current Instance variable
		<p>public class Demo
		<p>{
		<p>Public static void main(String args[])
		<p>{
		<p>A obj=new A(6);
		<p>obj.show();
		<p>}
		<p>}
		<p>
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
			<b>Static Keyword</b>
		<p>
			<b>Static:</b> static is a ketword used in java. this static used
			with class variables and methods. so that you can call these
			variables and methods without creating any object or instance.
		<p>We dont need to instantiate any class to call that class
			members.
		<p>
			<b>Example for static variable</b>
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
		<p>}
		<p>}
		<p>
			<b>Static Methods</b>
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
		<p>}
		<p>}
		<p>
			<b>Exception Handling in Java</b>
		<p>
			<b>Exception Handling :</b> is the process of responding to the
			occurrence of exceptions at the time of computation is called
			Exception Handling.
		<p>
			<b>Advantage:</b> It is Used to maintain a normal flow of Application
			or Program.
		<p>java.lang--->object--->Throwable
		<p>Throwable class has 2 suclasses
		<p>1.Error
		<p>2.Exception
		<p>
			<b>Error:</b> Error is subclass of Throwable class which we can not
			handle.
		<p>Error is irrecoverable.
		<p>1.Stack overflow Error
		<p>2.Virtual machine error
		<p>3.Out of memory Error
		<p>
			<b>Exception:</b>Exception is subclass of Throwable class which we
			can handle.
		<p>
			<b>Exceptions are 2 types:</b>
		<p>1.Runtime Exceptions(unchecked Exceptions)
		<p>2.Compile time exceptions(Checked Exceptions)
		<p>
			<b>Checked Exceptions:</b> the classes extend Throwable class except
			error and runtime exceptions
		<p>These checked Exceptions checked at Compile Time.
		<p>
			<b>Examples:</b>IOException, SQLException etc
		<p>
			<b>UnChecked Exceptions:</b>Classes extend Runtime Exceptions these
			runtime exceptions are known as Unchecked Exceptions.
		<p>
			<b>Examples:</b> ArithmeticException(divided by
			0),NullPointerException,
			ArrayIndexOutOfBoundException,NumberFormatException
		<p>
			<b>KeyWords in Exception Handling</b>
		<p>1.try
		<p>2.catch
		<p>3.Throw
		<p>4.Throws
		<p>3.finally
		<p>
			<b>Syntax try-catch</b>
		<p>try
		<p>{
		<p>//code which gives exception
		<p>}
		<p>catch(ExceptionName ref)
		<p>{
		<p>}
		<p>
			<b>Try and Finally</b>
		<p>try
		<p>{
		<p>//code which gives exception
		<p>}
		<p>finally
		<p>{
		<p>}
		<p>
			<b>Annotations</b>
		</p>
		<p>Annotation is a tag this represent metadata that is attached
			with class, interface, methods or fields to indicate some additional
			information which can be used by java compiler and JVM.</p>
		<p>These are used to provide additional information.</p>
		<p>Annotations are alternate option for XML and marker interface.</p>
		<p>
			<b>Built-In Java Annotations</b>
		</p>

		<p>@Override</p>
		<p>@SuppressWarnings</p>
		<p>@Deprecated</p>
		<p>
			<b>Built-In Java Annotations used in other annotations</b>
		</p>
		<p>@Target</p>
		<p>@Retention</p>
		<p>@Inherited</p>
		<p>@Documented</p>
		<p>
			<b>@Override</b>
		</p>

		<p>@Override annotation assures that the subclass method is
			overriding the parent class method.if it not then compile time error
			occurs. Some times we do spelling mistakes then try to mark it with
			Override annotation so it assures that method is overridden.</p>
		<p>class College{
		<p>void javaExam(){System.out.println("eating something");}
		<p>}
		<p>class Cse extends College{
		<p>@Override
		<p>void javaexam(){System.out.println("eating foods");}//should be
			javaExam
		<p>}
		<p>class TestAnnotation{
		<p>public static void main(String args[]){
		<p>College c=new Cse();
		<p>c.javaExam();
		<p>}
		<p>}
		<p>
			<b>Output:</b>Comple Time Error
		</p>
		<p>import java.util.*;
		<p>class ExampleSuppress{
		<p>@SuppressWarnings("unchecked")
		<p>public static void main(String args[]){
		<p>ArrayList list=new ArrayList();
		<p>list.add("uma");
		<p>list.add("ram");
		<p>list.add("rajesh");
		<p>for(Object o:list)
		<p>System.out.println(o);
		<p>}
		<p>}
		<p>
			<b>Output:</b>
		</p>
		<p>uma</p>
		<p>ram</p>
		<p>rajesh</p>
		<p>If you remove the @SuppressWarnings("unchecked") annotation
			then you will get warning at compile time because we are using
			non-generic collection.</p>
		<p>
			<b>non-generic:</b> we can store any type of objects in collection
		</p>
		<p>
			<b>@Deprecated</b>
		</p>
		<p>@Deprecated annotation is used for informing compiler class or
			method or field is deprecated it should not use in present version.
			these deprecated class or method or field is no longer important.so
			that you should not use since it has been superseded.
		<p>class Animal{
		<p>void eat(){System.out.println("print food");}
		<p>@Deprecated
		<p>void shape(){System.out.println("print shape of animal");}
		<p>}
		<p>class ExampleAnnotation{
		<p>public static void main(String args[]){
		<p>A a=new A();
		<p>a.shape();
		<p>}
		<p>}
		<p>
			<b>Output:</b>
		<p>
			<b>At Compile Time:</b>
		<p>Note: ExampleAnnotation.java uses or overrides a deprecated
			API.
		<p>
			<b>At Runtime:</b>
		<p>print shape of animal
		<p>
			<b>Applets in java</b>
		</p>
		An applet is a Java program that runs in a Web browser.
</article>
<%@include file="footer.jsp"%>