<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("name");    
    String email = request.getParameter("email");
    String feedback = request.getParameter("feedback");
    
    
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Siddhartha!123");
    Statement st = con.createStatement();
    
    ResultSet rs;
    int i = st.executeUpdate("insert into feedbacktable(name,email,feedback) values ('" +user + "','" + email + "','"+feedback+"')");
    if(i>0){
    	out.println("Thankyou for your feedback");
    }
    else{
    	out.println("Some problem contact admin");
    }
%>