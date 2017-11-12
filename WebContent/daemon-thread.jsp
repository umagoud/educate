<%@include file="java-header.jsp"%>

<%@include file="multithreading-left-bar.jsp"%>
<article>
<div id="textbox">
  <p class="alignleft"><a href="thread-priority.jsp" class="previous">&laquo; Previous</a></p>
  <p class="alignright"><a href="pool-group.jsp" class="next" >Next &raquo;</a></p>
</div>	
<p><h1 class="entry-title">DAEMON THREAD</h1>
<p><b>Daemon Thread:</b>
<p>Daemon Threads runs at background continuously.
Daemon thread is service provider thread. daemon thread lifestyle depends on user. all user threads dies jvm terminate this daemon thread automatically. it is a low priority thread. java.lang.thread provides 2 methods for java daemon thread
</p>
<h1>Methods of DaemonThread</h1>
<p>1. setdaemon()
<p>2. isdaemon(public void setDaemon())
<p><b>examples of Daemon Threads:</b> garbage collector, finalizer</p>
<p>Below program shows how your marking user thread to  daemon thread
<h1>Program</h1>
<p>class NameDaemon extends Thread
<p>{
<p>public void run()
<p>{
<p>if(Thread.currentThread().isDaemon())
<p>{
<p>System.out.println("Thread is daemon" );
<p>}
<p>else
<p>{
<p>System.out.println("userthread");
<p>}
<p>}
<p>public static void main(String args[])
<p>{
<p>NameDaemon t1=new NameDaemon();
<p>NameDaemon t2=new NameDaemon();
<p>NameDaemon t3=new NameDaemon();
<p>t1.setDaemon(true);
<p>t1.start();
<p>t2.start();
<p>t3.start();
<p>}
<p>}

</p></article>

<%@include file="footer.jsp"%>
