<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("email");    
    String pwd = request.getParameter("pass");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Siddhartha!123");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from registeredlist where email='"+user+"' and password='"+pwd+"'");
    if (rs.next()) {
    	session.setAttribute("email",user);
    	session.setAttribute("mobile",rs.getString(5));
    	
       response.sendRedirect("loggined.jsp");
    } else {
    	
        out.println("<br>username or password is incorrect");
    }
%>