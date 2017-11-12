<%@include file="java-header.jsp"%>
  <%@include file="corejavaleftbar.jsp" %> 
<article>
<div>
	<p class="alignleft"><a href="multithreading.jsp" class="previous">&laquo; Previous</a>
<p class="alignright"><a href="core-java.jsp" class="next">Next &raquo;</a></div>
<h1>Java Collections</h1>

<h2>Collections:</h2><p>Collections is a framework. This collections Framework provides an architecture to store and modify the group of objects.
You can perform all operations on data like searching, sorting, manipulation,updating and deletion.
Collections framework provide many interfaces.
<p> Collections Framework is a set of classes and interfaces.
 These implement reusable collection data structures.
<p>It provides
<p>1. interfaces and classes
<p>2.Ready made Architecture 
<h2>Collection:</h2><p>Collection is an interface. it contains different interfaces.
Collection is a group. 

<p><b>Set Interface</b>
<p><b>List Interface</b>
<p><b>Queue Interface</b>
<p> Again each interface is implemented by many classes

<h2>Collection Framework Hierarchy</h2>
<p><b>java.util</b>package contains all interfaces and classes
<p>All interfaces extends Collection interface.And all classes implements related interfaces.
		<img src="http://www.educateworld.org/images/java/collections.png" style="vertical-align:middle">

 <p><b>Set Interface</b>
 <p>Java.util.Set is sub interface of java.util.Collection Interface.
 <p>Set is a Collection that cannot contain duplicate elements.
 <p>Set ristrict the duplicate elements.
 <p>Set interface inherit properties of collection interface. It extends all properties of collection.
 <p>Many classes implements set interface.
<p> 1.HashSet
<p> 2.LinkedHashSet.
 <p>3.TreeSet
 
 <p><b>List Interface</b>
 <p>List is a collection that represents ordered list of elements.
 <p> The java.util.List interface is a subtype of the java.util.Collection interface.
 <p>List allow duplicate elements. It means you can add same elements more than one.
 <p>List interface inherit properties of collection interface. It extends all properties of collection.
<p> Many classes implement List interface.
 <p>1.ArrayList
 <p>2.LinkedList
 <p>3.Vector
 
<p><b> Queue Interface</b>
 <p>Queue Interface Extends all the properties of Collection Interface.
<p> The java.util.Queue interface is a subtype of the java.util.Collection interface.
 <p>A queue is designed to have elements inserted at the end of the queue, and elements removed from the beginning of the queue.
 <p>It represents an ordered list of objects just like a List.
<p>Classes implement Queue interface
<p>1. Priority Queue(class)
<p>2. Deque(this is an Interface)
<p>3.Array Deque(class)
<p>4. Linked List all so implement queue interface(class)

<p><b>Deque Interface</b>
<p>Deque is short for Double Ended Queue. from both sides you can insert and delete elements from deque.
<p>Deque extends all properties of queue Interface
<p>The java.util.Deque interface is a subtype of the java.util.Queue interface.
<p>Array Deque and Linked List are classes these are implement Deque interface.





  
<p><b>Iterator Interface</b>
<p>Iterators are used in Collection framework in Java to retrieve elements one by one.
</article>