<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("doctor");    
    String pwd = request.getParameter("pass");
    
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Siddhartha!123");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from doctorlist2 where name='"+user+"'and password='"+pwd+"'");
    if (rs.next()) {
    	session.setAttribute("userid", user);
       response.sendRedirect("patientlist.jsp");
    } else {
        out.println("there is something wrong with password or name");
    }
%>