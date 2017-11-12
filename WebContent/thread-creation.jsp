<%@include file="java-header.jsp"%>

<%@include file="multithreading-left-bar.jsp"%>
	<article><div>
	<p class="alignleft"><a href="exception-handling.jsp" class="previous">&laquo; Previous</a>
<p class="alignright"><a href="java-collections.jsp" class="next">Next &raquo;</a></div>
<h1>Threading Creation:</h1>
<p>we can create threads by 2 ways those are
		
		<p>1. By extending Thread Class
		<p>2. By implementing Runnable interface
			<h1>By extending Thread Class</h1>
			<p>Here thread is created by extending thread class. Thread class have many number of methods, constructors and fields. So created thread can use all properties of thread class for performing its assigned task.
		 it wont allow multiple inheritance.	
		<p>Example By extending Thread class
		<p>class SimpleThread extends Thread
		<p>{
		<p>public void run()
		<p>{
		<p>System.out.println("thread running");
		<p>}
		<p>public static void main(String args[])
		<p>{
		<p>SimpleThread st=new SimpleThread();
		<p>st.start();
		<p>}
		<p>}
		</p>
		<h1>By Implementing Runnable Interface:</h1>
		<p><b>Runnable interface:</b>(Runnable is an Interface) that can be put into a thread, describing what the thread is supposed to do.
		The Runnable interface marks an object that can be run as a thread.
		<p>You can save space for your class to
			extend any another class in future or now itself.
		<p>Java doesn't support multiple inheritance which means in java
			you can extend only one class. so once you extend thread class you
			lost your chance to extend another class.
		For that reason we use Runnable interface concept. Java allows you to implement multiple interfaces at a time.
		<p>Example:
		<p>class B
		<p>{
		<p>System.out.println("Hello");
		<p>}
		<p>class SimpleThread implements Runnable extend B
		<p>{
		<p>public void run()
		<p>{
		<p>System.out.println("thread running");
		<p>}
		<p>public static void main(String args[])
		<p>{
		<p>SimpleThread st=new SimpleThread();
		<p>Thread t1= new Thread(st);
		<p>t1.start();
		<p>}
		<p>}
		</p></article>
		
		<%@include file="footer.jsp"%>
		