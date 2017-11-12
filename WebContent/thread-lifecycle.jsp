<%@include file="java-header.jsp"%>

<%@include file="multithreading-left-bar.jsp"%>
	<article><div>
	<!--  --><a href="thread-defination.jsp" class="previous">&laquo; Previous</a>
<a href="thread-class.jsp" class="next">Next &raquo;</a></div>
<h1>Thread Life Cycle</h1>
<p>If your using threads in your program then you must learn Thread lifecycle.With out learning life cycle you can't work with threads.
Thread contains various states in its life cycle.
 This life cycle of the thread in java is controlled by JVM.
			<p>1.New
		<p>2.Runnable
		<p>3.Running
		<p>4.Non-Runnable (Blocked)
		<p>5.Terminated</p>
		<img alt=""
			src="http://www.educateworld.org/images/java/thread lifecycle.png">
<p>A new thread begins its life cycle in the new state.
After a newly born thread is started, the thread becomes runnable.
		<p>The thread is in runnable state after invocation of start() method, but the thread scheduler has not selected 
	<p>	Thread scheduler picks one of the thread from the runnable thread pool and change it's state to Running.	
	Then CPU starts executing this thread.
			<p><b>1.New State:</b>The thread is in new state, before the invocation of
			start() method you create an instance of Thread class.
		<p>
			<b>2.Runnable:</b>The thread is in runnable state after invocation of
			start() method but thread scheduler has not selected.
		<p>
			<b>3.Running:</b>Thread run the functionality which  is assigned.If the thread scheduler has selected then Thread go to
			Running state.
		<p>
			<b>4.Blocked:</b> Thread go to blocked state when another thread is on running state.Thread is blocked not eligible to run. but thread is
			alive.
		<p>
			<b>5.Terminated:</b> After Running the thread go to dead state.
		<p>

</article>
			<%@include file="footer.jsp"%>	
	