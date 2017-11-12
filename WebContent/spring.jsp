
<!DOCTYPE html>
<%@include file="java-header.jsp"%>
<%@include file="springleftbar.jsp"%>
<article>
	<h1>Spring with ORM Frameworks</h1>
	<p>Spring provides API to easily integrate Spring with ORM
		frameworks such as Hibernate, JPA(Java Persistence API), JDO(Java Data
		Objects), Oracle Toplink and iBATIS.</p>
	<p>Advantages of ORM Frameworks with Spring There are a lot of
		advantages
	<p>
		<b>There are as follows:</b>
	</p>
	<p>
		<b>Less coding is required:</b> By the help of Spring framework, you
		don't need to write extra codes before and after the actual database
		logic such as getting the connection, starting transaction, commiting
		transaction, closing connection etc.
	<p>
		<b>Easy to test: </b>Spring's IoC approach makes it easy to test the
		application.
	<p>
		<b>Better exception handling:</b> Spring framework provides its own
		API for exception handling with ORM framework.
	<p>
		<b>Integrated transaction management: </b>By the help of Spring
		framework, we can wrap our mapping code with an explicit template
		wrapper class or AOP style method interceptor.
	<h1>Hibernate integration with Spring framework</h1>
	<p>In hibernate we provide all database information in
		hibernate.cfg.xml but if hibernate integrates with Spring we no need
		to create this file. we can provide """"applicationContex.xml""""
	<p>Understanding problem without using spring:
	<p>Let's understand it by the code of hibernate given below:
	<p>//creating configuration
	<p>Configuration cfg=new Configuration();
	<p>cfg.configure("hibernate.cfg.xml");
	<p>//creating seession factory object
	<p>SessionFactory factory=cfg.buildSessionFactory();
	<p>//creating session object
	<p>Session session=factory.openSession();
	<p>//creating transaction object
	<p>Transaction t=session.beginTransaction();
	<p>Employee e1=new Employee(111,"arun",40000);
	<p>session.persist(e1);//persisting the object
	<p>t.commit();//transaction is commited
	<p>session.close();
	<p>It saves a lot of code
	<p>HibernateTemplate class of Spring Framework:
	<p>Employee e1=new Employee(111,"arun",40000);
	<p>hibernateTemplate.save(e1);
	<p>
		<b>Steps for hibernate and spring integration:</b>
	</p>

	<p>1 create table in the database (It is optional.
	<p>2 create applicationContext.xml (file It contains information of
		DataSource, SessionFactory etc.
	<p>3 create Employee.java (file It is the persistent class
	<p>4 create employee.hbm.xml (file It is the mapping file.
	<p>5 create EmployeeDao.java (file It is the dao class that uses
		HibernateTemplate.
	<p>6 create InsertTest.java (file It calls methods of EmployeeDao
		class.
	<p>
		<b>1) create the table in the database</b></p>
		<p> <img alt=""
			src="http://www.educateworld.org/images/java/spring1.PNG"></p>
	<p><b>2 Employee.java(pojo class(plain old java object)</b></p>Here it works
		as the persistent class for hibernate.
	<p>Java classes whose objects or instances will be stored in
		database tables are called persistent classes in Hibernate.
	<p>Hibernate works best if these classes follow some simple rules,
		also known as the Plain Old Java Object (POJO) programming model.
	<p>JavaBean follows a set of rules.
	<p>
		commonly Beans use getters and setters to protect their member
		variables </p>
		<p><img alt=""
			src="http://www.educateworld.org/images/java/springEmployee.PNG"></p>
	<p>Annotations we have in this persistance class
	<p>@Entity(JPA annotations) these are used to map the data base
		table details
	<p>@Table(name = "CUSTOMER")
	<p>@Id
	<p>@Column(name = "id")
	<p>@GeneratedValue(strategy = GenerationType.IDENTITY)
	<p>
		<b>3) employee.hbm.xml</b>
	<p>
		(This mapping file contains all the information of the persistent
		class(getters and setters class)</p><p> <img alt=""
			src="http://www.educateworld.org/images/java/springhbm.PNG"></p>
	<p>
		<b>4) EmployeeDao.java</b>
	<p>
		This java class uses the hibernate template </p>
		<p><img alt=""
			src="http://www.educateworld.org/images/java/springEmployeeDao.PNG"></p>
	<p>
		<b>5.applicationContex.xml</b>
	<p>In this file, we are providing all the information of the
		database in the BasicDataSource object.
	<p>This object is used in the LocalSessionFactoryBean class object,
		containing some other informations
	<p>such as mappingResources and hibernateProperties. The object of
		LocalSessionFactoryBean class is used
	in the HibernateTemplate class. 
	</p>
	<p>Example: applicationContext.xml </p>
	<p><img
			alt="" src="http://www.educateworld.org/images/java/Spring.PNG"></p>
		<p><b>6) InsertValues.java</b></p>
		 This class uses the EmployeeDao class object and
		calls its saveEmployee method by passing the object of Employee class.
	<p>	<img alt=""
			src="http://www.educateworld.org/images/java/SpringInsertTest.PNG">
</p><p>If you write this code,no need to create table because table will be
		created automatically.</p>
</article>


<%@include file="footer.jsp"%>