package org.eduacteworld.dirverConnection;
import java.sql.*;  
class MysqlCon{  
public static void main(String args[]){  
try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://166.62.93.201:3306/educatew_educateworld","educatew_educate","Rajesh@513");  
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from login");  
while(rs.next())  
System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3));  
con.close();  
}catch(Exception e){ System.out.println(e);}  
}  
}  