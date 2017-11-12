<%@include file="java-header.jsp"%>
  <%@include file="corejavaleftbar.jsp" %> 
<article>
<div>
	<p class="alignleft"><a href="java-static-final.jsp" class="previous">&laquo; Previous</a>
<p class="alignright"><a href="multithreading.jsp" class="next">Next &raquo;</a></div>
<p><h1>Exception Handling</h1>
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
		<img src="http://www.educateworld.org/images/java/ExceptionHandling.png" style="vertical-align:middle">
			<p><b>Error:</b> Error is subclass of Throwable class which we can not
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

</article>
	<%@include file="footer.jsp"%>