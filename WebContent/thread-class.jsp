<%@include file="java-header.jsp"%>

<%@include file="multithreading-left-bar.jsp"%>
	<article><div>
	<p class="alignleft"><a href="exception-handling.jsp" class="previous">&laquo; Previous</a>
<p class="alignright"><a href="java-collections.jsp" class="next">Next &raquo;</a></div>
<h1>Thread Class:</h1>
<p>Java provides a thread class that has various methods and constructors.These methods and constructors are used to manage the behavior of threads.
Thread class is the main class.Thread class is used to create the thread. By extending Thread class we can create threads.
Java.lang package provides this thread class.
	Java.lang.Thread Class</p>
	
	<h1>Thread Class Constructors</h1>
		<p><b>Thread()</b></p>
		This allocates a new Thread object.
		<p><b>Thread(String name)</b></p>
		his constructs allocates a new Thread object.
		<p><b>Thread(Runnable r)</b></p>
		This allocates a new Thread object.
		<p><b>Thread(Runnable r,String name)</b></p>
		This allocates a new Thread object.
		<p><b>Thread(ThreadGroup group, Runnable r, String name)</b></p>
		This allocates a new Thread object so that it has target as its run object, has the specified name as its name, and belongs to the thread group referred to by group.
		<p><b>Thread(ThreadGroup group, Runnable target, String name, long stackSize)</b></p>
		This allocates a new Thread object so that it has target as its run object, has the specified name as its name, belongs to the thread group referred to by group, and has the specified stack size.
		<p>	<b>Thread(ThreadGroup group, String name)</b></p>
This allocates a new Thread object.
		
		<h1>Thread Class Fields:</h1>
		<p>Thread class provide different fields.
		<p><b>1.static int MAX_PRIORITY :</b> This is the minimum priority that a thread can have.</p>
<p><b>static int NORM_PRIORITY </b>This is the default priority that is assigned to a thread.</p>

<h1>Thread Class methods</h1>
	<p><b>void start()</b></p>
This method used to start the thread. The Java Virtual Machine calls the run method of this thread.
<p><b>void run()</b></p>
This method is used to run the thread functionality.

<p>
			<b>public void suspend()</b></p>It puts a thread in the suspended state.
		
		<p>
			<b>public void resume()</b></p>It resume the thread from suspended
			state.
	
<p><b>String getName()</b></p>
This method returns this thread's name.
<p><b>	int getPriority()</b></p>
This method Returns this thread's priority.
<p><b>long getId()</b></p>
This method returns the identifier of this Thread.
<p><b>ThreadGroup getThreadGroup()</b></p>
This method returns the thread group to which this thread belongs.
<p><b>void interrupt()</b></p>
This method interrupts this thread.
<p><b>static boolean interrupted()</b></p>
This method tests whether the current thread has been interrupted.
<p><b>boolean isAlive()</b></p>
This method tests if this thread is alive.
<p><b>boolean isDaemon()</b></p>
This method tests if this thread is a daemon thread.
	<p><b>boolean isInterrupted()</b></p>
This method tests whether this thread has been interrupted.
<p><b>void join()</b></p>
This is used to Wait for this thread to die.
<p><b>	void join(long millis)</b></p>
This is used to Wait at most millis milliseconds for this thread to die.
<p><b>	void join(long millis, int nanos)</b></p>
This is used to Wait at most millis milliseconds plus nanos nanoseconds for this thread to die.
<p><b>	void setDaemon(boolean on)</b></p>
This method marks this thread as either a daemon thread or a user thread.

<p><b>	void setDaemon(boolean on)</b></p>
This method used to convert the thread as either a daemon thread or a user thread.

<p><b>	void setName(String name)</b></p>
This method changes the name of this thread to be equal to the argument name.
<p><b>	void setPriority(int newPriority)</b></p>
This method changes the priority of this thread.
<p><b>static void sleep(long millis)</b></p>
This method used to call the currently executing thread to sleep (temporarily cease execution) for the specified number of milliseconds.

<p><b>static void sleep(long millis, int nanos)</b></p>
This method used to call the currently executing thread to sleep (cease execution) for the specified number of milliseconds plus the specified number of nanoseconds.
<p><b>String toString()</b></p>
This method Returns a string representation of this thread, including the thread's name, priority, and thread group.

<p><b>	static void yield()</b></p>
This method used to call the currently executing thread object to temporarily pause and allow other threads to execute.
</article>

		<%@include file="footer.jsp"%>


