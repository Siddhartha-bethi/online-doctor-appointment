<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("name");    
    String pwd = request.getParameter("password");
    String mobile = request.getParameter("mobile");
    String age = request.getParameter("age");
    String email = request.getParameter("email");
    String address = request.getParameter("address");
    String gender = request.getParameter("gender");
    
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Siddhartha!123");
    Statement st = con.createStatement();
    
    ResultSet rs;
    rs=st.executeQuery("select * from registeredlist where email='"+email+"'");
    if(rs.next()){
    out.println("<h1 style='color:red'>This email id already registered</h1>");
    }
    else{
    int i = st.executeUpdate("insert into registeredlist(name, age,email, password,mobile ,gender,address) values ('" +user + "','" + age + "','" + email + "','"+pwd+"','" + mobile + "','"+gender+"','"+address+"')");
    if (i > 0) {    
        out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Home page</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
    }
%>