<%@include file="java-header.jsp"%>
<%@include file="corejavaleftbar.jsp"%>
					<article>
						<p>	<h1 class="entry-title">Core Java Interview Questions</h1>
							<p><b>1. What is nested class?</b></p>
	<p>A class within another class is called nested class.

</p><p><b>2. Is there any difference between nested classes and inner classes?</b>
<p>	A non-static class within another class is called Inner class. A static class within another class is called Nested class 

</p><p><b>3. Can we access the non-final local variable, inside the local inner class?</b>
<p>	No, local variable must be constant if we want to access it in local inner class. The local variable exist on the stack  only for the lifetime of the method.
<p>Because the local variables are not guaranteed to exist as long as the method local ineer class object, the inner class object can't use them. Only final local variable can be used.

</p><p><b>4. What is nested interface ?</b>
	<p>An interface i.e. declared within another interface or class is known as nested interface. The nested interfaces are used to group related interfaces so that they can be easy to maintain.

</p><p><b>5. Can a class have an interface?</b>
<p>	Yes,we can write default implementation for interface methods.

</p><p><b>6. Can an Interface have a class?</b>
	<p>Yes, you can create both a nested class or an inner class inside a Java interface

</p><p><b>7. What is multithreading?</b>
<p>	Multithreading in java is a process of executing multiple threads simultaneously.
	
</p><p><b>8. What is thread?</b>
	<p>It's an independent path of execution through program code. When multiple threads execute, one thread's path through the same code usually differs from the others.

</p><p><b>9. What is the difference between preemptive scheduling and time slicing?</b>
<p>Preemptive scheduling: The highest priority task executes until it enters the waiting or dead states or a higher priority task comes into existence.
<p>Time slicing: A task executes for a predefined slice of time and then reenters the pool of ready tasks. The scheduler then determines which task should execute
next, based on priority and other factors.

</p><p><b>10. What does join() method?</b>
	<p>join( ) method wait for a thread to finish .This method waits until the thread on which it is called terminates. Its name comes from the concept of the calling thread waiting until the specified thread joins it.

</p><p><b>11. What is difference between wait() and sleep() method?</b>
<p>	Wait() is an instance method that is used for thread synchronization. It can be called on any object, as it’s defined right on java.lang.Object, but it can only be called from a synchronized block
Thread.sleep() is a static method that can be called from any context. Thread.sleep() pauses the current thread and does not release any locks.

</p><p><b>12. Is it possible to start a thread twice?</b>
	<p>No. After starting a thread, it can never be started again. If you does so, an IllegalThreadStateException is thrown. In such case, thread will run once but for second time, it will throw exception.	

<p><b>13. Can we call the run() method instead of start()?</b>
	<p>If you directly call run() method its body is executed in context of current thread. When you invoke start() method a new thread is created and run() method is executed in this new thread.	

<p><b>14. What about the daemon threads?</b>
	<p>Daemon thread in java is a service provider thread that provides services to the user thread. Its life depend on the mercy of user threads i.e. when all the user threads dies, JVM terminates this thread automatically.

<p><b>15. Can we make the user thread as daemon thread if thread is started?</b>
	<p>you can make a user thread to Daemon by using setDaemon() method of thread class. Your program will run on this thread, unless you create additional threads yourself.

<p><b>16. What is shutdown hook?</b>
	<p>The shutdown hook can be used to perform cleanup resource or save the state when JVM shuts down normally or abruptly. Performing clean resource means closing log file, sending some alerts or something else. So if you want to execute some code before JVM shuts down, use shutdown hook.

<p><b>17. When should we interrupt a thread?</b>
	<p>If any thread is in sleeping or waiting state (i.e. sleep() or wait() is invoked), calling the interrupt() method on the thread, breaks out the sleeping or waiting state throwing InterruptedException. If the thread is not in the sleeping or waiting state, calling the interrupt() method performs normal behaviour and doesn't interrupt the thread but sets the interrupt flag to true. Let's first see the methods provided by the Thread class for thread interruption.


<p><b>18. What is synchronization?</b>
	<p>Synchronization in java is the capability to control the access of multiple threads to any shared resource. Java Synchronization is better option where we want to allow only one thread to access the shared resource.

<p><b>19. What is the purpose of Synchronized block?</b>
	<p>Synchronized block can be used to perform synchronization on any specific resource of the method. Suppose you have 50 lines of code in your method, but you want to synchronize only 5 lines, you can use synchronized block. If you put all the codes of the method in the synchronized block, it will work same as the synchronized method.

<p><b>20. Can Java object be locked down for exclusive use by a given thread?</b>
<p>	Yes, it is locked

<p><b>21. What is static synchronization?</b>
<p>	If you make any static method as synchronized, the lock will be on the class not on object.

<p><b>22. What is the difference between notify() and notifyAll()?</b>
	

<p><b>23. What is deadlock?</b>
<p>	Deadlock describes a situation where two or more threads are blocked forever, waiting for each other. ... A Java multithreaded program may suffer from the deadlock condition because the synchronized keyword causes the executing thread to block while waiting for the lock, or monitor, associated with the specified object.


<p><b>24. What is Garbage Collection?</b>
<p>	In java, garbage means unreferenced objects. Garbage Collection is process of reclaiming the runtime unused memory automatically. In other words, it is a way to destroy the unused object

<p><b>25. What is gc()?</b>
	<p>The gc() method is used to invoke the garbage collector to perform cleanup processing. The gc() is found in System and Runtime classes.
	

<p><b>26. What is the purpose of finalize() method?</b>
	<p>The Object class provides a callback method, finalize(), that may be invoked on an object when it becomes garbage.

<p><b>27. Can an unrefrenced objects be refrenced again?</b>
	<p>Yes it is possible we can get the reference of unreferenced objects by this keyword in finalize method. 

<p><b>28. What kind of thread is the Garbage collector thread?</b>
<p>	It is a Daemon Thread.	

<p><b>29. What is difference between final, finally and finalize?</b>
<p>	Final is used to apply restrictions on class, method and variable. Final class can't be inherited, final method can't be overridden and final variable value can't be changed.
<p> Finally is used to place important code, it will be executed whether exception is handled or not. 
<p>Finalize is used to perform clean up processing just before object is garbage collected.
<p>Final is a keyword. Finally is a block. Finalize is a method.

<p><b>30. What is the purpose of the Runtime class?</b>
	<p>The purpose of the Runtime class is to provide access to the Java runtime system. The runtime information like memory availability, invoking the garbage collector, etc.

<p><b>31. How will you invoke any external process in Java?</b>
	<p>We can invoke the external process in Java using exec() method of Runtime Class 
</p>
<p><b>32.What is a deadlock?</b>
<p><b>33. What is method overloading?</b>  <p>
	Method overloading is nothing but the static binding. It have the same class name same method name but different parameters.

<p><b>34. Why method overloading is not possible by changing the return type in java?</b>  <p>
	In java, method overloading is not possible by changing the return type of the method because there may occur ambiguity.
There should be same return type.

<p><b>35. Can we overload main() method?</b>  <p>
	Yes, by not using static we can overload main method. You can have any number of main methods in a class by method overloading. But JVM calls main() method which receives string array as arguments only.

<p><b>36. What is &lsquo;this&rsquo; in java?</b>  <p>
	this can be used to refer current class instance variable. this can be used to invoke current class method (implicitly). this() can be used to invoke current class constructor. this can be passed as an argument in the method call. this can be passed as argument in the constructor call. this can be used to return the current class instance from the method
	
<p><b>37. What is Inheritance?</b>  <p>
	The process by which one class acquires the properties(data members) and functionalities(methods) of another class is called inheritance. The aim of inheritance is to provide the reusability of code so that a class has to write only the unique features and rest of the common properties and functionalities can be extended from the another class.
	

<p><b>38. Which class is the super class for every class?</b>  <p>
	java.lang.Object class is the super class for all java classes
	
<p><b>39. Why multiple inheritance is not supported in java?</b>  <p>
	 The problem with multiple inheritance is that two classes may define different ways of doing the same thing, and the subclass can't choose which one to pick. And arises ambiguty problem. Interfaces help in doing that. Because Interfaces specify only what the class is doing, not how it is doing it.

<p><b>40. What is composition?</b>  <p>
	Composition in java is the design technique to implement has-a relationship in classes. We can use java inheritance or Object composition in java for code reuse.

09
<p><b>41. Why Java does not support pointers?</b>  <p>
	In order to make it more secure,it doesn't allow pointers directly(Manually). Pointers works internally in java.	

<p><b>42. What is super in java?</b>  <p>
	super can be used to refer immediate parent class instance variable. super can be used to invoke immediate parent class method. super() can be used to invoke immediate parent class constructor.	

<p><b>43.Can you use this() and super() both in a constructor?</b>  <p>
	Both this() and super() are constructor calls. Constructor call must always be the first statement. So we can not have two statements as first statement, hence either we can call super() or we can call this() from the constructor, but not both.

<p><b>44. What is object cloning?</b>  <p>
	The object cloning is a way to create exact copy of an object. For this purpose, clone() method of Object class is used to clone an object.
	
<p><b>45. What is method overriding?</b>  <p>
	If subclass (child class) has the same method as declared in the parent class, it is known as method overriding in java. 
	In other words, If subclass provides the specific implementation of the method that has been provided by one of its parent class, it is known as method overriding.

<p><b>46. Can we override static method?</b>  <p>
	No,Static methods can not be overridden because there is nothing to override, as they would be two different methods.

<p><b>47. Why we cannot override static method?</b>  <p>
	Static methods can not be overridden because there is nothing to override, as they would be two different methods.

<p><b>48. Can we override the overloaded method?</b>  <p>
	Its possible to overload main in Java but its not possible to override it, simply because its a static method. Execution of Java program has no impact on overloading main because JVM always call the original main method and if it doesn't found in class then it throws java.lang.NoSuchMethodError: main Exception in thread "main" error at runtime.


<p><b>49. Difference between method Overloading and Overriding?</b>  <p>
	Overloading happens at compile-time while Overriding happens at runtime. The binding of overloaded method call to its definition has happens at compile-time however binding of overridden method call to its definition happens at runtime.
	The most basic difference is that overloading is being done in the same class while for overriding base and child classes are required. Overriding is all about giving a specific implementation to the inherited method of parent class.

<p><b>50. Can you have virtual functions in Java?</b>  <p>
	In Java, all non-static methods are by default "virtual functions." Only methods marked with the keyword final, which cannot be overridden, along with private methods, which are not inherited, are non-virtual

<p><b>51. What is covariant return type?</b>  <p>
	Covariant return, means that when one overrides a method, the return type of the overriding method is allowed to be a subtype of the overridden method's return type.
<b>Example</b>
<p>public class Animal {

  <p>  protected Food seekFood() {

    <p>    return new Food();
  <p>  }
<p>}
</p>
<p><b>52. What is final variable?</b>  <p>
	Final is a constant keyword, which we can use with variables, methods and classes.
	The final keyword can be applied with the variables, a final variable that have no value it is called blank final variable or uninitialized final variable. It can be initialized in the constructor only. The blank final variable can be static also which will be initialized in the static block only.

<p><b>53. What is final method?</b>  <p>
	If you make any method as final, you cannot override it.

<p><b>54. What is final class?</b>  <p>
	If you make any class as final, you cannot extend it.

<p><b>55. Can you declare the main method as final?</b>  <p> 
	Yes, main can be declared as final. Final means the method or variable cannot be modified in sub-class. It does not have any impact on main because Static function is not a part of object instance.

<p><b>56. What is Polymorphism?</b>  <p>
	Polymorphism in java is a concept by which we can perform a single action by different ways. Polymorphism is derived from 2 greek words: poly and morphs. The word "poly" means many and "morphs" means forms. So polymorphism means many forms.
	There are two types of polymorphism in java: compile time polymorphism and runtime polymorphism. We can perform polymorphism in java by method overloading and method overriding.

<p><b>57. How Polymorphism is achieved?</b>  <p>
	compile time polymorphism and runtime polymorphism. We can perform polymorphism in java by method overloading and method overriding.

<p><b>58. What is Runtime Polymorphism?</b>  <p>
	Runtime polymorphism or Dynamic Method Dispatch is a process in which a call to an overridden method is resolved at runtime rather than compile-time.
	In this process, an overridden method is called through the reference variable of a superclass. The determination of the method to be called is based on the object being referred to by the reference variable.

<p><b>59. Can you achieve Runtime Polymorphism by data members?</b>  <p>
	 Yes. When you declare data member on parent class then you don’t need to redefine it on child class data member’s value will get resolved to overridden value in actual object type just use or change its value based on your requirement.

<p><b>60. What is static binding?</b>  <p>
	Static binding is nothing but method overloading or function overloading. It have the same class name same method name but different parameters.

<p><b>61. What is dynamic binding?</b>  <p>
	Dynamic binding is nothing but mathod over riding or functional overridding. It have the same method name same parameters but different class names.

<p><b>62. What is the difference between static binding and dynamic binding?</b>  <p>
	When type of the object is determined at compiled time(by the compiler), it is known as static binding
	When type of the object is determined at run-time, it is known as dynamic binding.

<p><b>64. What is Abstraction?</b>  <p>
	Abstraction is the process of abstraction in Java is used to hide certain details and only show the essential features of the object. In other words, it deals with the outside view of an object (interface). 

<p><b>65. What is the difference between abstraction and encapsulation?</b>  <p>
	Abstraction is implemented in Java using interface and abstract class while Encapsulation is implemented using private, package-private and protected access modifier. Design principles "programming for interface than implementation" is based on abstraction and "encapsulate whatever changes" is based upon Encapsulation.


<p><b>66. What is abstract class?</b>  <p>
	A class that is declared as abstract is known as abstract class. It needs to be extended and its method implemented. It cannot be instantiated.
	
<p><b>67. Can there be any abstract method without abstract class?</b>  <p>
	No we can not use abstract methods with out abstract class.If u define one method as absract automatically the class having that method become abstract.

<p><b>68. Can you use abstract and final both with a method?</b>  <p>
	No, Abstract method cannot be declared as final. This is because, abstract method has to be overridden to provide implementation. If it is declared as final, it cannot be overridden.

<p><b>69. Is it possible to instantiate the abstract class?</b>  <p>
	No, Because an abstract class is an incomplete class (incomplete in the sense it contains abstract methods without body and output) we cannot create an instance or object.

<p><b>70.What is interface?</b>  <p>
	An interface in java is a blueprint of a class. It has static constants and abstract methods.
The interface in java is a mechanism to achieve abstraction. There can be only abstract methods in the java interface not method body. It is used to achieve abstraction and multiple inheritance in Java.
Java Interface also represents IS-A relationship.
	
<p><b>71. Can you declare an interface method static?</b>  <p>
<p>Yes, In Java 8, interfaces can contain implemented methods, static methods, and the so-called "default" methods.</p>

<p><b>72. Can an Interface be final?</b>  <p>
	No. We can not instantiate interfaces, so in order to make interfaces useful we must create subclasses. The final keyword makes a class unable
to be extended.

<p><b>73. What is marker interface?</b>  <p>
	Marker interface in Java is interfaces with no field or methods or in simple word empty interface in java is called marker interface. 

<p><b>74. What is difference between abstract class and interface?</b>  <p> 
	Abstract class can have constructor, where you need an object to call the methods in subclass. But in case of default method without any reference you can invoke the interface method, like InterfaceName.super.method()


<p><b>75. Can we define private and protected modifiers for variables in interfaces?</b>  <p>
	When you Declare interface The java compiler adds public and abstract keywords before the interface method and public, static and final keywords before data members automatically 
public interface Test{
   public string name1;
   private String email;
   protected pass;
}
as you have declare variable in test interface with private and protected it will give error. if you do not specify the modifier the compiler will add public static final automatically.

</p>
<p><b>76. When can an object reference be cast to an interface reference?</b>  
<p>
	An object reference be cast to an interface reference when the object implements thereferenced interface.

</p><p><b>77. What is package?</b>  <p>
	A package is a grouping of related types providing access protection and name space management.

</p>
<p><b>78. Do I need to import java.lang package any time? Why ?</b>  <p>
	No because the Java compiler automatically imports the "java.lang.*" package 

</p><p><b>79. Can I import same package/class twice? Will the JVM load the package twice at runtime?</b>  <p>
	One can import the same package or same class multiple times. Neither compiler nor JVM complains abt it. And the JVM will internally load the class only once no matter how many times you import the same class.

</p><p><b>80. What is static import ?</b>  <p>
	The static import feature of Java 5 facilitate the java programmer to access any static member of a class directly. There is no need to qualify it by the class name.

</p><p><b>81. How to create a package?</b>  <p>
	To create a package, you choose a name for the package (naming conventions are discussed in the next section) and put a package statement with that name at the top of every source file that contains the types (classes, interfaces, enumerations, and annotation types) that you want to include in the package.
	The package statement (for example, package graphics;) must be the first line in the source file. There can be only one package statement in each source file, and it applies to all types in the file.

</p><p><b>82. What is Exception Handling?</b>  <p>
	Exception Handling is a mechanism to handle runtime errors such as ClassNotFound, IO, SQL, Remote etc.

</p><p><b>83. What is difference between Checked Exception and Unchecked Exception?</b>  <p>
	The exceptions that are checked at compile time. If some code within a method throws a checked exception, then the method must either handle the exception or it must specify the exception using throws keyword.
	The exceptions that are not checked at compiled time. In C++, all exceptions are unchecked, so it is not forced by the compiler to either handle or specify the exception. It is up to the programmers to be civilized, and specify or catch the exceptions.

</p><p><b>84. What is the base class for Error and Exception?</b>  <p>
	Throwable is the base class for the classes Error and Exception.

</p><p><b>85. Is it necessary that each try block must be followed by a catch block?</b>  <p>
	It is not necessary that each try block must be followed by a catch block. It should be followed by either a catch block OR a finally block. And whatever exceptions are likely to be thrown should be declared in the throws clause of the method

</p><p><b>86. What is finally block?</b>  <p>
	Java finally block is a block that is used to execute important code such as closing connection, stream etc. Java finally block is always executed whether exception is handled or not. Java finally block follows try or catch block.

</p><p><b>87. Can finally block be used without catch?</b>  <p>
	YES, It possible to have try without catch or finally.

</p><p><b>88. Is there any case when finally will not be executed?</b>  <p>
	If the thread executing the try or catch code is interrupted or killed, the finally block may not execute even though the application as a whole continues.

</p><p><b>89. What is difference between throw and throws?</b>  <p>
	Java throw keyword is used to explicitly throw an exception. Java throws keyword is used to declare an exception. Checked exception cannot be propagated using throw only. Checked exception can be propagated with throws.

</p><p><b>90. Can an exception be re thrown?</b>  <p>
	exceptions occurred in the try block are caught in catch block. Thus caught exceptions can be re-thrown using throw keyword. Re-thrown exception must be handled some where in the program, otherwise program will terminate abruptly.	

</p><p><b>91. Can subclass overriding method declare an exception if parent class method doesn't throw an exception ?</b>  <p>
	Yes but only unchecked exception not checked.	

</p><p><b>92. What is exception propagation?</b>  <p>
	An exception is first thrown from the top of the stack and if it is not caught, it drops down the call stack to the previous method,If not caught there, the exception again drops down to the previous method, and so on until they are caught or until they reach the very bottom of the call stack.This is called exception propagation.

</p><p><b>93. What is the meaning of immutable in terms of String?</b>  <p>
	In java, string objects are immutable. Immutable simply means unmodifiable or unchangeable. Once string object is created its data or state can't be changed but a new string object is created.
	
</p><p><b>94. Why string objects are immutable in java?</b>  <p>
	There are multiple reasons that String is designed to be immutable in Java. A good answer depends on good understanding of memory, synchronization, data structures, etc.

</p><p><b>95. How many ways we can create the string object?</b>  <p>
	There are two ways to create String object:

		1)By string literal
		String s="welcome"; 

		2)By new keyword
		String s=new String("Welcome")
	

</p><p><b>96. How many objects will be created in the following code?</b>  <p>
String s1="Welcome";  
String s2="Welcome";  
String s3="Welcome";  
	Only one String object is created which is referred by three references 

</p><p><b>97. Why java uses the concept of string literal?</b>  <p>
	Each time you create a string literal, the JVM checks the string constant pool first. If the string already exists in the pool, a reference to the pooled instance is returned. If string doesn't exist in the pool, a new string instance is created and placed in the pool.

</p><p><b>98. How many objects will be created in the following code?</b> 
<p>String s = new String("Welcome");  	
	<p>Two objects, one in string constant pool and other in non-pool(heap)
	
</p><p><b>99. What is the basic difference between String and StringBuffer object?</b>
	<p>String class is immutable. String is slow and consumes more memory when you concat too many strings because every time it creates new instance. String class overrides the equals() method of Object class. So you can compare the contents of two strings by equals() method.
	<p>StringBuffer class is mutable. StringBuffer is fast and consumes less memory when you cancat strings. StringBuffer class doesn't override the equals() method of Object class.
	
</p><p><b>100. What is the difference between StringBuffer and StringBuilder?</b>
	<p>StringBuffer is synchronized i.e. thread safe. It means two threads can't call the methods of StringBuffer simultaneously. StringBuilder is non-synchronized i.e. not thread safe. It means two threads can call the methods of StringBuilder simultaneously. StringBuffer is less efficient than StringBuilder. StringBuilder is more efficient than StringBuffer.


</p><p><b>101. What is the purpose of toString() method in java ?</b>
	<p>By overriding the toString() method of the Object class, we can return values of the object, so we don't need to write much code.
	
	
	
	<p>
										<strong>What is procedural programming?</strong>
									</p>
									<p>A procedural program divides the code into smaller
										blocks called procedures. Procedures can interact with each
										other. An important point to note in procedural programming is
										the idea of state. The state of a program is stored in
										variables. As the program execution goes on, the state
										changes. The actions (procedures or functions) will change the
										state (value of the variables). Prolog, Pascal, FORTRAN and
										PL/SQL are examples.</p>
									<p>
										<strong>Drawbacks:</strong>
									</p>
									<p>In procedural language, if the programming code goes
										beyond around 25,000 lines, it becomes unmanageable and
										especially when the project comes for modification at a later
										stage.</p>
									<p>
										<strong>What is structured programming?</strong>
									</p>
									<p>Structured programming is a design approach where
										complex systems are broken down into smaller and more
										manageable pieces. That is, the programmer divides the
										program&rsquo;s source code into logically structured chunks
										(blocks) of code. The advantage is, it makes programs more
										readable, more reliable and more easily maintainer. Structured
										programming can be seen as a subset of procedural programming.
										It is most famous for removing or reducing dependency on the
										GOTO statement.</p>
									<p>Delphi and COBOL are examples of structured programming
										language.</p>
									<p>
										<strong>Advantages of structured programming
											language:</strong>
									</p>
									<p>Structured programming reduces the complexity.
										Modularity allows the programmer to tackle problems in logical
										fashion. Also, using logical structures ensure that the flow
										of control is clear and readable.</p>
									<p>
										<strong>What is java? </strong>
									</p>
									<p>Java (with a capital J) is a high-level, programming
										language, like C, FORTRAN, Smalltalk, Perl, and many others.
										And also we can say Java is an object-oriented programming
										language. This means that the language is based on the concept
										of an object. You can use Java to write computer applications
										and thousands of other things computer software can do. Using
										java we can build special programs called applets. Applet is a
										small java program that can be downloaded from the Internet
										and played safely within a web browser.</p>
									<p>
										<strong>What is the History of Java?</strong>
									</p>
									<p>1. Java was invented by James Gosling in the year of
										1991 developed by Sun Micro Systems of U.S.A. 2. In 1991,
										Patrick Naughton and James Gosling with his co-workers started
										a secret project called Green in Sun Micro System
										Company their primary aim to design a small computer language
										that could be used for consumer devices like cable TV
										switchboxes, Microwave ovens and remote controls. Gosling
										decided to call his language "oak". 3. In 1992, they
										developed and delivered product called *7 it was an
										extremely intelligent remote control. 4. In 1995 "oak" was
										renamed as "java" because of some legal problems. The main
										reason is oak was the name of an already available computer
										language so they changed the name to java. 5. Many popular
										companies including IBM, Microsoft, Netscape and many others
										support java.</p>

									<p>
										<strong> Explain the features of java?</strong>
									</p>
									<p>
										Simple and small, Familiar, Object Oriented, Distributed, two
										Staged, platform Independent, Robust and Secure,
										Multithreaded, High performance, Dynamic, Extensible. <br>
									<p>
										<b>Simple and Small:</b> </p>
										<p>Java is a simple and small language
										that can be learned easily, even if you have just started
										programming, and many features of C and CPP that are not added
										here like pointers, preprocessor header files, GOTO, SIZE OF,
										and TYPEDEF statement and JAVA does not contain data types
										STRUCT, and JAVA does not support operator overloading,
										template classes, multiple inheritance, global variables,
										pointers, header files and many others <br> <b>Familiar:</b>
										It is familiar language because java uses many constructs of C
										and CPP and therefore java is looks like a CPP code. <br>
										<b>Object Oriented: </b>Almost everything in java is a class,
										or an object. Any code that you write in java is inside a
										class. Java is purely Object Oriented and provides
										Abstraction, Encapsulation, Inheritance and Polymorphism. An
										Object is a software bundle of variables and related methods.
										<br> <b>Distributed:</b> Java is designed as a
										distributed language for creating applications on network it
										has the ability to share both data and programs. Java
										applications can open and access remote objects on internet
										very easily. RMI packages are used for creating distributed
										server and client application. <br> <b>Two Stage
											Systems: </b>Java is both compiled and interpreted language.
										Compiler (javac) is used to translate a java program into an
										intermediate language called java byte code (.class files), it
										is platform independent code and interpreter (java) is used to
										read each byte code instruction and to run on the computer. <br>
										<b>Platform Independence:</b> We know that, java compiler
										produce the byte code. The byte code can be executed on a
										variety of computers running on different operating systems
										such as windows 95/98, Windows NT, Sun Solaris and Mac OS.
										Another reason is, size of the primitive data types are
										machine independent. <br> <b>Robust:</b> Java is a robust
										language because it provides many safeguards to ensure
										reliable code. It has strict compile time checking, runtime
										checking, it is designed as a garbage-collected language to
										free the programmers from all memory management problems. Also
										provides the exception handling technique to handle the
										exceptions occurred at runtime. <br> <b>Secure:</b>
										Security is very important issue when you are going to
										implement a network based application. Java system doesn't
										allow the virus affected applets to run. We are not using the
										pointers here, so programs cannot gain access to memory
										locations without proper authorization. <br> <b>Multithreaded:</b>
										Multithreading is the ability of an application to perform
										multiple tasks at the same time. For example when you watch a
										movie on your computer, one task of program is to handle sound
										effects and another handle screen display so simple programs
										do many tasks simultaneously. <br> <b>High
											Performance:</b> Java byte code was efficiently designed so that
										it would be easy to translate directly into native machine
										code for high performance by using a Just-in-Time (JIT)
										compiler. Java is faster than other interpreted language.
										Since it is compiled and interpreted. Multithreading provides
										the overall execution speed of java programs. <br> <b>Dynamic:</b>
										Maintaining different versions of an application is very easy
										in Java.Java is capable of dynamically linking in new class
										libraries, methods and objects. In java almost everything will
										be done at run time. <br> <b>Extensible:</b> Java
										programs support functions written in other languages such as
										C and CPP. These functions are known as native methods. Native
										methods are linked dynamically at runtime.
									</p>
									<p>
										<strong>What is Object Oriented Programming Language?
											And explain the principles of OOPs concepts.</strong>
									</p>
									<p>
										<b>Object Oriented Programming Language:</b> <br>
										<p> Object
										Oriented Programming language is an approach which provides
										the way of modularizing the programs or it is a programming
										methodology that helps to organize complex program through the
										use of inheritance, encapsulation, abstraction and
										polymorphism. </p><br>
									<p>
										<b>Principles of OOPs concept: </b><br> <br>
									<p>
										<b>What is class in java</b>
									<p>
										<b>Class:</b> Class is a User-defined abstract data type which
										contains data members and Member functions or it is a
										collection of similar objects. Declaring a Class: A Class is
										described by use of the class keyword the attributes and
										methods (Behavior) of a class are defined inside a class body.</p>
									<p>
										In java, the braces {} mark the beginning and the end of a
										class or method. Here we use the following notation.[ ] -
										optional< > - are mandatory (must) <br><b>Syntax:</b></br><br>
										[Access-specifier][Modifier] class <br> { <br>
										Data-type instance-variable1; <br> Data-type
										instance-variable2; <br> Data-type instance-variable-n; <br>
										Data-type methodname-1 (parameter list) <br> { <br>
										Body of method <br> } <br> Data-type method-name-n
										(parameter list) <br> { <br> Body of method <br>
										} <br> } <br> <br> Here data, or variable
										defined with in a class are called instance variable. The code
										is contained with in a method. <br><b> Example:</b> <br>
										Emp.java <br> <br> class Emp <br> { <br>
										int eno; <br> String name; <br> String desig; <br>
										double sal; <br> void getEmpDetails() <br> { <br>
										System.out.println ("eno=\t"+eno); <br>
										System.out.println ("ename=\t"+ename); <br>
										System.out.println ("desig:\t"+desig); <br>
										System.out.println (""sal:\t"+sal); <br> } <br> } <br>
										Class ObjectDemo <br> { <br> public static void
										main(String args[]) <br> { <br> Emp e=new Emp(); <br>
										e.eno=101; <br> e.ename="Naresh"; <br>
										e.sal=20000.00; <br> e.desig="Faculty"; <br>
										e.getEmpDetails(); <br> } <br> } <br><b>For compilation</b>
										D:\java\javac ObjectDemo.java <br><b>ByteCode</b> D:\java\dir *.class <br>
										Emp.class <br>After Compilation Emp.java converts into Emp.class <br><b>For Running code:</b> D:\java\java
										Emp <br> Output: <br> 101 <br> Naresh <br>
										Faculty <br> 20000.00 <br>
									</p>

									<p>
										<strong>What are the Rules for Naming Classes?</strong>
									</p>
									<p>A class name must not be a keyword in Java.It can begin
										with a letter, an underscore (or) a $ symbol The name must not
										contain embedded space or period (.) It can contain characters
										from various alphabets like Greek, Hebrew and Japanese. They
										can be of any length</p>

									<p>
										<strong>What are Conventions for naming classes?</strong>
									</p>
									<p>A class name must be meaningful. It usually represents a
										real life class. Class names are nouns and must begin with
										capital letters (Ex: TVs, Bike etc) If it is too long, the
										leading upper case letter and each subsequent word with a
										leading upper case letter. E.g., HelloWorld, FirstExample etc.</p>

									<p>
										<strong>What is Object?</strong>
									</p>
									<P>Object is an instance of a class, or a runtime entity
										and every object is independent. Every object has a state,
										identity and behavior. State represented by the variables of
										that object, identity referred by the reference variable of
										that object, behavior represents the methods of that class.</P>

									<p>
										<strong>What is Method Overloading?</strong>
									</p>
									<p>Same class same method name but differnt parameters is
										called OverLoading
									<p>
										<b>Method Overloading Example</b>
									<p>class A {
									<p>public void show() {
									<p>} public void show( int i)
									<p>{ }
									<p>A(class name) obj(object)= new A()(constructor);
										obj.show();
									<p>obj.show(10);</p>
									}
									<p>
										<strong>What is Method OverRiding?</strong>
									</p>
									<p>Same Method name same Parameters but differnt classes
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
										<strong>What is Abstraction?</strong>
									</p>
									Hiding unnessasary data and It shows only important data or
									stuff is called Abstraction.
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
									<p>p.call()
									<p>}
									<p>
										<strong>What is JVM?</strong>
									</p>
									<p>full form is Java virtual machine The JVM allow your
										Java to run on the specific platform or OS.It converts byte
										code to machine code.
									<p>includes registers, stack, heap area, method area,
										program counter etc</p>
									<p>JVM is different for different Operating Systems.</p>
								<p><strong>What is difference between JDK,JRE and JVM?</strong>
	<p>JDK is the Java Development Kit which consists of jvm and jre in it and tools such as the compilers and debuggers necessary for developing applets and applications.</p>
	<p>JRE is the Java Runtime Environment  provides the libraries, the Java Virtual Machine and applications written in the Java programming language</p>
	<p>JVM is the Java Virtual Machine provides the platform which handles byte code,JIT compiler, Hardware and Softwares. It provides different environments.</p>
<p>
<strong> How many types of memory areas are allocated by JVM?</strong>
<p>	There are 4 types of memory areas in JVM. They are 
<p>Heap area
<p>Method area
<p>Program counter stack
<p>Native library stack
</p><p>
<strong> What is JIT compiler?</strong>
	<p>Just-In-Time compiler runs after the program has started and compiles the code. It is used to improve the performance. It will execute  bytecode similar functionalities at same time. it reduces the compilation time.
</p><p>
<strong>What is platform?</strong>
	<p>The platforms for java means those software that helps us to develop and run java programs and also have various features to help in building the applications and every platforms for java should have Java Runtime Environment ( JRE ) and Java Development Kit ( JDK ).
</p>
<p><strong> What is the main difference between Java platform and other platforms?</strong>
	<p>Java platform consists of JVM (Java virtual machine ) and JAVA API where API supports to write java files then java compiler converts java file to class file (byte stream) and JVM converts byte stream  to machine language which any computer can read. Java platform is independent. other platforms are dependents which cannot run the files in any other operating systems.
</p>
<p><strong> What gives Java its 'write once and run anywhere' nature?</strong>
	<p>'write once and run anywhere' this means Java can be developed on any device, compiled into a standard bytecode and be expected to run on any device equipped with a JVM 
</p>
<p><strong> What is class loader?</strong>
	<p>The java files are converted into .class files with the help of JVM, here the .class files are loaded into memory for further executions by the class loader.
</p>
<p><strong> If I don't provide any arguments on the command line, then the String array of Main method will be empty or null?</strong>
<p>String array of main method will be null. Because the default value of string is null.
</p>
<p><strong> What if I write main method as static public void instead of public static void?</strong>
	<p>The code runs without any error. But the standard form of writing main method is public static void main.

</p>
<p><strong> What is the default value of the local variables?</strong>
	<p>The default value for local variables is null.
</p>
<p><strong> What is difference between object oriented programming language and object based programming language?</strong>
	<p>Object-oriented language supports all the features of OOPs. Object-oriented language doesn't has in-built object. Object-oriented languages are C++, C#, Java etc.

	<p>Object-based language doesn't support all the features of OOPs like Polymorphism and Inheritance. Object-based language has in-built object like javascript has window object. Object-based languages are Javascript, VB etc.
</p>
<p><strong> What will be the initial value of an object reference which is defined as an instance variable?</strong>
	<p>Any variable that you define in Java which you do not assign a value, whether it is an instance variable or a local variable, or a static variable, will have a default value of null.
</p>
<p><strong> What is constructor?</strong>
	<p>Constructor is same like the method but with the same name as the class name. constructors may be dafault or parameterised, parameterised constructors is nothing but, constructor with arguments is known as parametrized constructor.
	</p>
<p><strong> What are Rules to define a constructor?</strong>
	<p>Constructors should have the same name as the class name. constructors do not have any return type. It will be accessed by the private accesss specifier but inside the class.
</p>
<p><strong> If we place return type in constructor prototype will it leads to Error?</strong>
<p>Yes,it leads to error. Because it is not called by code but it is called by memory allocation.
</p>
<p><strong> What is the purpose of default constructor?</strong>
	<p>Class cannot be executed without creating an object or instance, and to declare an instance we need the constructors.
</p>
<p><strong> When compiler provides default constructor?</strong>
<p>Constructors are manditory in any program. When we do not provide a constructor JVM itself creates a default constructor.
</p>
<p><strong> Does constructor return any value?</strong>
	<p>constructor return object,and cannot return value and has not return type as well. 
</p>
<p><strong> How compiler and JVM can differentiate constructor and method definitions of both have same class name?</strong>
	<p>Constructors are called at the instance declartion. They do not contain any return type
</p>
<p><strong> Is constructor inherited?</strong>
	<p>Unlike fields, methods, and nested classes ,Constructors are not class members. Hence constructors are not inherited.
</p>
<p><strong> Why return type is not allowed for constructor?</strong>
	<p>The reason the constructor doesn't return a value is because it's not called directly by your code, it's called by the memory allocation and object initialization code in the runtime.
</p>
<p><strong> Can you make a constructor final?</strong>
	<p>No, because a constructor can't be inherited so can't be overridden , so there is no use of making constructor final.
	</p>
<p><strong> Is Constructor definition is mandatory in class?</strong>
<p>	Yes, Constructors are mandatory in any program. If we do not provide a constructor JVM itself creates a default constructor.
</p>
<p><strong> When developer must provide constructor explicitly?</strong>
	<p>If there is no constructor defined explicitly by programmer, then compiler inserts a default constructor during compilation.
</p>
<p><strong> If class has explicit constructor , will it has default constructor?</strong>
	<p>No, The constructor is mandatory but if the user provides the constructor there is no use of any default constructor.
</p>
<p><strong> What is static variable?</strong>
	<p>It is a variable which belongs to the class and not to object(instance). Static variables are initialized only once , at the start of the execution . These variables will be initialized first, before the initialization of any instance variables
</p>
<p><strong>What is static method?</strong>
	<p>It is a method which belongs to the class and not to the object(instance). A static method can access only static data. It can not access instance variables.
</p>
<p><strong> Why main method is static?</strong>
	<p>The method is static because otherwise there would be ambiguity: which constructor should be called.
</p>
<strong>What is static block?</strong>
	<p>Static block is used for initializing the static variables.This block gets executed when the class is loaded in the memory. A class can have multiple Static blocks, which will execute in the same sequence in which they have been written into the program.
</p>
<p><strong> Can we execute a program without main() method?</strong>
	<p>We cannot execute without a main method because when your running the java program. java Virtual machine look for the main method .if JVM could not find the main method it will show you run time error Exception in thread main could not find the main class.
</p>
<p><strong> What if the static modifier is removed from the signature of the main method?</strong>
	<p>It doesn't matter if you remove "static" from the main method signature you will need an instance of that class in order to execute it
	<p>for example:
</p>
<p>if you want to just run a Java application in a batch environment MainClass.main(String[]) is called....which can happen because the main method is static and does not require an instance of an object. 
</p>
<p><strong> What is difference between static (class) method and instance method?</strong>
	<p>Static methods are the methods in Java that can be called without creating an object of class. They are referenced by the class name itself or reference to the Object of that class.
	<p>Instance method can access the instance methods and instance variables directly. Instance method can access static variables and static methods directly. Static methods can access the static variables and static methods directly. Static methods can't access instance methods and instance variables directly. They must use reference to object.
									33. What is method overloading?
	Method overloading is nothing but the static binding. It have the same class name same method name but different parameters.

<p><strong> Why method overloading is not possible by changing the return type in java?</strong></p>
	<p>In java, method overloading is not possible by changing the return type of the method because there may occur ambiguity.
There should be same return type.</p>

<p><strong> Can we overload main() method?</strong></p>
	<p>Yes, by not using static we can overload main method. You can have any number of main methods in a class by method overloading. But JVM calls main() method which receives string array as arguments only.
<p><strong> What is 'this' in java?</strong></p>
	<p>this can be used to refer current class instance variable. this can be used to invoke current class method (implicitly). this() can be used to invoke current class constructor. this can be passed as an argument in the method call. this can be passed as argument in the constructor call. this can be used to return the current class instance from the method
	
<p><strong>What is Inheritance?</strong></p>
	<p>The process by which one class acquires the properties(data members) and functionalities(methods) of another class is called inheritance. The aim of inheritance is to provide the reusability of code so that a class has to write only the unique features and rest of the common properties and functionalities can be extended from the another class.
	</p>

<p><strong>. Which class is the super class for every class?</strong></p>
	<p>java.lang.Object class is the super class for all java classes
	
<p><strong> Why multiple inheritance is not supported in java?</strong></p>
	<p> The problem with multiple inheritance is that two classes may define different ways of doing the same thing, and the subclass can't choose which one to pick. And arises ambiguty problem. Interfaces help in doing that. Because Interfaces specify only what the class is doing, not how it is doing it.

<p><strong> What is composition?</strong></p>
	<p>Composition in java is the design technique to implement has-a relationship in classes. We can use java inheritance or Object composition in java for code reuse.


<p><strong> Why Java does not support pointers?</strong></p>
	<p>In order to make it more secure,it doesn't allow pointers directly(Manually). Pointers works internally in java.	

<p><strong> What is super in java?</strong></p>
	<p>super can be used to refer immediate parent class instance variable. super can be used to invoke immediate parent class method. super() can be used to invoke immediate parent class constructor.	
<p><strong> Can you use this() and super() both in a constructor?</strong></p>
	<p>Both this() and super() are constructor calls. Constructor call must always be the first statement. So we can not have two statements as first statement, hence either we can call super() or we can call this() from the constructor, but not both.

<p><strong> What is object cloning?</strong></p>
	<p>The object cloning is a way to create exact copy of an object. For this purpose, clone() method of Object class is used to clone an object.
	
<p><strong> What is method overriding?</strong></p>
	<p>If subclass (child class) has the same method as declared in the parent class, it is known as method overriding in java. 
	In other words, If subclass provides the specific implementation of the method that has been provided by one of its parent class, it is known as method overriding.

<p><strong> Can we override static method?</strong></p>
	<p>No,Static methods can not be overridden because there is nothing to override, as they would be two different methods.

<p><strong> Why we cannot override static method?</strong></p>
	<p>Static methods can not be overridden because there is nothing to override, as they would be two different methods.

<p><strong> Can we override the overloaded method?</strong></p>
	<p>Its possible to overload main in Java but its not possible to override it, simply because its a static method. Execution of Java program has no impact on overloading main because JVM always call the original main method and if it doesn't found in class then it throws java.lang.NoSuchMethodError: main Exception in thread "main" error at runtime.


<p><strong> Difference between method Overloading and Overriding?</strong></p>
	<p>Overloading happens at compile-time while Overriding happens at runtime. The binding of overloaded method call to its definition has happens at compile-time however binding of overridden method call to its definition happens at runtime.
	The most basic difference is that overloading is being done in the same class while for overriding base and child classes are required. Overriding is all about giving a specific implementation to the inherited method of parent class.

<p><strong> Can you have virtual functions in Java?</strong></p>
	<p>In Java, all non-static methods are by default "virtual functions." Only methods marked with the keyword final, which cannot be overridden, along with private methods, which are not inherited, are non-virtual

<p><strong> What is covariant return type?</strong></p>
	<p>Covariant return, means that when one overrides a method, the return type of the overriding method is allowed to be a subtype of the overridden method's return type.
<p><b>Example</b>
<p>public class College <p>{

    <p>protected Exam javaExam() <p>{

       <p> return new Exam();
   <p> }
<p>}

<p><strong>What is final variable?</strong></p>
	<p>Final is a constant keyword, which we can use with variables, methods and classes.
	The final keyword can be applied with the variables, a final variable that have no value it is called blank final variable or uninitialized final variable. It can be initialized in the constructor only. The blank final variable can be static also which will be initialized in the static block only.
<p><strong> What is final method?</strong></p>
	<p>If you make any method as final, you cannot override it.

<p><strong> What is final class?</strong></p>
	<p>If you make any class as final, you cannot extend it.

<p><strong> Can you declare the main method as final? </strong></p>
	<p>Yes, main can be declared as final. Final means the method or variable cannot be modified in sub-class. It does not have any impact on main because Static function is not a part of object instance.

<p><strong> What is Polymorphism?</strong></p>
	<p>Polymorphism in java is a concept by which we can perform a single action by different ways. Polymorphism is derived from 2 greek words: poly and morphs. The word "poly" means many and "morphs" means forms. So polymorphism means many forms.
	There are two types of polymorphism in java: compile time polymorphism and runtime polymorphism. We can perform polymorphism in java by method overloading and method overriding.

<p><strong> How Polymorphism is achieved?</strong></p>
	<p>compile time polymorphism and runtime polymorphism. We can perform polymorphism in java by method overloading and method overriding.

<p><strong> What is Runtime Polymorphism?</strong></p>
	<p>Runtime polymorphism or Dynamic Method Dispatch is a process in which a call to an overridden method is resolved at runtime rather than compile-time.
	<p>In this process, an overridden method is called through the reference variable of a superclass. The determination of the method to be called is based on the object being referred to by the reference variable.

<p><strong> Can you achieve Runtime Polymorphism by data members?</strong></p>
	<p> Yes. When you declare data member on parent class then you don't need to redefine it on child class data member's value will get resolved to overridden value in actual object type just use or change its value based on your requirement.

<p><strong> What is static binding?</strong></p>
	<p>Static binding is nothing but method overloading or function overloading. It have the same class name same method name but different parameters.

<p><strong> What is dynamic binding?</strong></p>
	<p>Dynamic binding is nothing but mathod over riding or functional overridding. It have the same method name same parameters but different class names.

<p><strong> What is the difference between static binding and dynamic binding?</strong></p>
	<p>When type of the object is determined at compiled time(by the compiler), it is known as static binding
	<p>When type of the object is determined at run-time, it is known as dynamic binding.
									<p>
										<strong>What is String?</strong></p>
									<p>it is Non-mutable. Once you create string object provided with
									value that we can not change.
									<p>
										<strong>How many ways are there to create String? and
											explain ?</strong>
									</p>
									<p>2ways:
									<p>1. String s="Hello";
									<p>2. String s= new String("hello");</p>
									<p>
										<strong>What is StringBuffer?</strong>
									</p>
									It is mutable. We can change the string value in the program.
									String Buffer contains some methods
									<p>
										<strong>What are StringBuffer methods?</strong>
									</p>
									<p>insert()
									<p>replace()</p>
									append()
									<p>
										<strong>Write a java code to explain StringBuffer?</strong>
									</p>
									<p>public class StringbufferExample</p>
									{
									<p>public static void main(String args[])</p>
									{
									<p>String s1="Educate";</p>
									<p>String s+="world";</p>
									System.out.println(s);
									<p>}
									<p>output: Educateworld</p>
									<p>JVm internally called StringBuffer because here s value
										is changing to Educateworld.</p>
										
								
								<p><b>What is marker interface? </b></p>
								<p> Marker Interface doesn't contain any Data Members and Member Functions</p>
<p><b>Can we create user define marker interface?</b></p>
<p>Yes, We can write our own Marker Interface</p>
	

</article>
<%@include file="footer.jsp"%>