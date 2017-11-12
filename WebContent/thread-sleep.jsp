<%@include file="java-header.jsp"%>

<%@include file="multithreading-left-bar.jsp"%>
	<article><div>
	<a href="exception-handling.jsp" class="previous">&laquo; Previous</a>
<a href="java-collections.jsp" class="next">Next &raquo;</a></div>
<h1>Sleep Method:</h1>
<p>
The sleep() method of Thread class is used to sleep a thread for the specified amount of time.
</p>
<h1>Syntax of sleep() method</h1>

<p>The Thread class provides two methods for sleeping a thread:

<p>1.public static void sleep(long miliseconds)throws InterruptedException
<p>2.public static void sleep(long miliseconds, int nanos)throws InterruptedException

<h1>sleep method example:</h1>

		<p>class SimpleThread extends Thread
		<p>{
		<p>public void run()
		<p>{
		<p>for(int i=1;i<5;i++)
		<p>{
		<p>try(Thread.sleep(500);
		<p>}
		<p>catch(Interrupted e)
		<p>{
		<p>System.out.println(e);
		<p>}
		<p>System.out.println(i);
		<p>}
		<p>}
		<p>public static void main(String args[])
		<p>{
		<p>SimpleThread st=new SimpleThread();
		<p>SimpleThread st2=new SimpleThread();
		<p>st.start();
		<p>st2.start();</p>
		}
		<p>}
		
		</p></article>
		
		<%@include file="footer.jsp"%>