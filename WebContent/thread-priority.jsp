<%@include file="java-header.jsp"%>

<%@include file="multithreading-left-bar.jsp"%>
	<article><div>
	<!--  --><a href="thread-defination.jsp" class="previous">&laquo; Previous</a>
<a href="thread-class.jsp" class="next">Next &raquo;</a></div>

<h1>
Thread Priority</h1>
<p>Each thread has its own priority. This thread priority is used to avoid the dead lock. this priorities are represented by numbers(1-10)

<p>MIN_PRIORITY
<p>MAX_PRIORITY
<p>NORM_PRIORITY

<h1>Representation Thread class Constants</h1>
<p>Thread class provides some constants. those are used to show the priorities of threads.
<p>public static int MIN_PRIORITY
<p><p>public static int NORM_PRIORITY
<p>public static int MAX_PRIORITY


<h1>Default priority for constants</h1>
<p>MIN_PRIORITY-0
<p>MAX_PRIORITY-10
<p>NORM_PRIORITY-5

<h1>Example of Thread Priority</h1>

<p>class NameThread1 extends Thread
<p>{
<p>public void run()
<p>{
<p>System.out.println("Thread is running is" + Thread.currentThread().getName());
<p>System.out.println("Thread is running is" + Thread.currentThread().getPriority());
<p>}
<p>public static void main(String args[])
<p>{
<p>NameThread1 t1=new NameThread1();
<p>NameThread1 t2=new NameThread1();
<p>t1.setPriority(Thread.MIN_PRIORITY);
<p>t1.start();
<p>t2.setPriority(Thread.NORM_PRIORITY);
<p>t2.start();
<p>}
<p>}





</article>
			<%@include file="footer.jsp"%>	