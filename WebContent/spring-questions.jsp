<!DOCTYPE html>
<%@include file="java-header.jsp"%>

<article>
<h1>Spring Questions</h1>
<p><b>1.What is Spring Framework?</b></p>
<p>Ans:The Spring framework is an application framework and inversion of control container.</p>
<p>Spring framework is used to integrate different frameworks into your application.</p>
<p>Spring Framework to create high performing, easily testable, and reusable code. </p>

<p><b>2.What are some of the important features and advantages of Spring Framework?</b></p>
<p>Spring enables the developers to develop the enterprise application using POJO class (plain old java object).</p>
<p>Spring Framework to create high performing, easily testable, and reusable code. 
<p>Spring is a light weight framework.</p>
<p>It provide the various frameworks such as hibernate, structs, EJB etc</p>

<p><b>4.What do you understand by Dependency Injection?</b></p>
<p>Dependency Injection is used to remove hard coded dependencies and it makes your application loosely coupled, extendable and maintainable. </p>
<p>uses: Boilerplate code reduction and easy unit testing</p>

<p><b>5.How do we implement DI in Spring Framework?</b><p>
<p>We can use spring XML based and annotation based configuration to implement Dependency Injection in spring applications.</p> 

<p><b>6.What are the benefits of using Spring Tool Suite?</b></p>
<p>Spring Tool Suite is a eclipse based development environment. this is customized to develop spring applications.</p>
<p>It is preconfigured eclipse. and it is free for any purpose.</p>
<p>It comes with eclipse with different things such as Maven support, template creating different types of spring applications.</p>

<p><b>7.Name some of the important Spring Modules?</b></p>
<p><b>Spring Context:</b> for dependency injection.
<p><b>Spring AOP</b> for aspect oriented programming.
<p><b>Spring DAO</b> for database operations using DAO pattern
<p><b>Spring JDBC:</b>for JDBC and DataSource support.
<p><b>Spring ORM:</b> for ORM tools support such as Hibernate
<p><b>Spring Web Module:</b>for creating web applications.
<p><b>Spring MVC</b> Model View Controller implementation for creating web applications, web services etc.

<p><b>8.What is the difference between Spring AOP and AspectJ AOP?</b></p>

<p><b>9.What is Spring IoC Container?</b></p>
<p>The container will create the objects, wire them together, configure them, and manage their complete life cycle from creation to destruction. The Spring container uses DI to manage the components that make up an application</p>
<p>A bean is an object that is instantiated, assembled, and otherwise managed by a Spring IoC container or bean is simply one of many objects in your application. Beans, and the dependencies among them, are reflected in the configuration metadata used by a container.</p>
<p>AOP breaks the program logic into distinct parts (called concerns). It is used to increase modularity by cross-cutting concerns.</p>

<p><b>10.What is a Spring Bean?</b></p>
<p>Spring bean is an object and it is maintained by IoC(inversion of Control).</p>

<p><b>11.What do you understand by Aspect Oriented Programming?</b></p>
<p>Aspect-oriented programming (AOP) is an approach to programming that allows global
 properties of a program to determine how it is compiled into an executable program. 
 AOP can be used with object-oriented programming. An aspect is a subprogram 
 that is associated with a specific property of a program.</p>
<p>Aspect-Oriented Programming (AOP) complements Object-Oriented Programming (OOP)
 by providing another way of thinking about program structure. The key unit of 
 modularity in OOP is the class, whereas in AOP the unit of modularity is the 
 aspect.One of the key components of Spring is the AOP framework.
 
<p><b>12.What is Aspect, Advice, Pointcut, JointPoint and Advice Arguments in AOP?</b></p>
<p><b>Aspect:</b> An aspect is a subprogram that is associated with a specific property of a program.It is a class that contains advices, joinpoints etc.</p>
<p><b>JointPointJoin point:</b>It is any point in your program such as method execution, exception handling, field access etc. Spring supports only method execution join point.
<p><b>Pointcut:</b>It is an expression language of AOP that matches join points.
<p><b>Advice:</b>It represents an action taken by an aspect at a particular join point.

<p><b>13.What are different ways to configure a class as Spring Bean?</b></p>
<p> 3 different ways to configure a class as Spring Bean.
 <p>XML Based Configuration</p>
 <p>Java Based Configuration</p>
 <p>Annotation Based Configuration</p>

<p><b>14.What are different scopes of Spring Bean?</b></p>
<p><b>singleton(default*):</b>Scopes a single bean definition to a single object instance per Spring IoC container.
<p><b>prototype:</b>Scopes a single bean definition to any number of object instances. 
<p><b>request:</b>Scopes a single bean definition to the  an HTTP request.Only valid in the context of a web-aware Spring ApplicationContext.
<p><b>session:</b>This scopes a bean definition to an HTTP session.Only valid in the context of a web-aware Spring ApplicationContext.
<p><b>global-session:</b>This scopes a bean definition to a global HTTP session. Only valid in the context of a web-aware Spring ApplicationContext.</p>

<p><b>15.What is Spring Bean life cycle?</b></p>
<p>InitializingBean and DisposableBean callback interfaces. Bean Name, bean factory and Application Context Aware interfaces for specific behavior. custom init() and destroy() methods in bean configuration file.
</p>

<p><b>16.What is the importance of Spring bean configuration file?</b></p>
<p>The spring configuration file is important. here we define all beans.when we create
an instance of spring ApplicationContextthat time beans are initialized .After initialization, we can use this
 applicationContext instance to get any bean instances.</p>

<p><b>17.Does Spring Bean provide thread safety?</b></p>
<p> Spring beans are not thread safe.
Spring doesn't guarantee thread-safety. It will be your responsibility.
Spring will create a Singleton, if it is mutable then it might not be thread safe.
It is programmer's responsibility to take care the spring bean class such way it should
 be thread safe.</p>

<p><b>18.What is a Controller in Spring MVC?</b></p>
In Spring Web MVC, DispatcherServlet class works as the front controller. 
It is responsible to manage the flow of the spring mvc application. 
The @Controller annotation is used to mark the class as the controller in Spring 3.
 The @RequestMapping annotation is used to map the request url.
<p><b>  DispatcherServlet:</b> DispatcherServlet that dispatches requests to handlers,
 with configurable handler mappings, view resolution, locale and theme resolution as
  well as support for upload files. 

<p><b>19.How to get ServletContext and ServletConfig object in a Spring Bean?</b></p>
 Spring bean may implement ServletContextAware and ServletConfigAware interfaces and aslo
  override the setServletContext() and setServletConfig() methods.

<p><b>20.What is Bean wiring and @Autowired annotation?</b></p>
<p><b>Bean wiring:</b>Wiring means referring a bean from another bean. It helps us to keep our application objects loosely coupled through dependency injection (DI). When our spring application is going up, an application context loads beans definitions from configuration file and wires them together.
 <p><b>@Autowired annotation:</b> The spring container is also able to autowire relationships between collaborating beans.
<p>Marks a constructor, field, setter method or config method as to be autowired by Spring's dependency injection facilities.

<p><b>21.What are different types of Spring Bean autowiring?</b></p>
<p><b>Autowire no:</b>It is the default autowiring mode. It means no autowiring bydefault.
<p><b>Autowire byName:</b>The byName mode injects the object dependency according to name of the bean. In such case, property name and bean name must be same. It internally calls setter method.
<p><b>Autowire byType: </b>The byType mode injects the object dependency according to data type. So property name and bean name can be different. It internally calls setter method.
<p>It then tries to match and wire a property if its type matches with exactly one of the beans name in configuration file. If more than one such beans exists, a fatal exception is thrown.
<p><b>Autowire by constructor:</b>The constructor mode injects the dependency by calling the constructor of the class. It calls the constructor having large number of parameters.</p>
<p><b>Autowire by autodetect:</b>Spring first tries to wire using autowire by constructor, if it does not work, Spring tries to autowire by byType.

<p><b>22.What’s the difference between @Component, @Repository and @Service annotations in Spring?</b></p>

<p><b>What is DispatcherServlet and ContextLoaderListener?</b></p>
<p><b>What is ViewResolver in Spring?</b></p>
<p><b>What is a MultipartResolver and when its used?</b></p>
<p><b>How to handle exceptions in Spring MVC Framework?</b></p>
<p><b>How to create ApplicationContext in a Java Program?</b></p>
<p><b>Can we have multiple Spring configuration files?</b></p>
<p><b>What is ContextLoaderListener?</b></p>
<p><b>What are the minimum configurations needed to create Spring MVC application?</b></p>
<p><b>How would you relate Spring MVC Framework to MVC architecture?</b></p>
<p><b>How to achieve localization in Spring MVC applications?</b></p>
<p><b>How can we use Spring to create Restful Web Service returning JSON response?</b></p>
<p><b>What are some of the important Spring annotations you have used?</b></p>
<p><b>Can we send an Object as the response of Controller handler method?</b></p>
<p><b>How to upload file in Spring MVC Application?</b></p>
<p><b>How to validate form data in Spring Web MVC Framework?</b></p>
<p><b>What is Spring MVC Interceptor and how to use it?</b></p>
<p><b>What is Spring JdbcTemplate class and how to use it?</b></p>
<p><b>How to use Tomcat JNDI DataSource in Spring Web Application?</b></p>
<p><b>How would you achieve Transaction Management in Spring?</b></p>
<p><b>What is Spring DAO?</b></p>
<p><b>How to integrate Spring and Hibernate Frameworks?</b></p>
<p><b>What is Spring Security?</b></p>
<p><b>How to inject a java.util.Properties into a Spring Bean?</b></p>
<p><b>Name some of the design patterns used in Spring Framework?</b></p>
<p><b>What are some of the best practices for Spring Framework?</b></p>
</article>
