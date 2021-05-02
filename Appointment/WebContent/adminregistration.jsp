<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("name");    
    String pwd = request.getParameter("pass");
    String mobile = request.getParameter("mobile");
    String age = request.getParameter("age");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Siddhartha!123");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into doctorlist2(name, age, mobile, password) values ('" +user + "','" + age + "','" + mobile + "','" + pwd + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        out.print("Registration Successfull!"+"<a href='adminlogin.jsp'>Go back</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>