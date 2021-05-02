<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("name");    
    String email = request.getParameter("email");
    String branch = request.getParameter("branch");
    String message = request.getParameter("message");
    
    
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Siddhartha!123");
    Statement st = con.createStatement();
    
    ResultSet rs;
    rs=st.executeQuery("select * from registeredlist where email='"+email+"'");
    int i = st.executeUpdate("insert into contactus(name,email,branch,message) values ('" +user + "','" + email + "','" + branch + "','"+message+"')");
    if(i>0){
    	out.println("Thankyou for your valuable information");
    }
    else{
    	out.println("Some problem contact admin");
    }
%>