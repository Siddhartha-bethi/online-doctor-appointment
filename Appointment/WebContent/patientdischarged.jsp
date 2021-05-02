<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Siddhartha!123");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from discharge");
        try{
        	out.println("<table><th>Patient Name</th><th>Patient Age</th><th>Problem</th><th>Consultant Doctor</th><th>Total Bill</th><th>Dischage Time</th>");
        while(rs.next()) {
        	
        	
        	out.print("<tr><td>"+rs.getString(1)+"</td>");
        	out.print("<td>"+rs.getString(2)+"</td>");
        	out.print("<td>"+rs.getString(3)+"</td>");
        	out.print("<td>"+rs.getString(4)+"</td>");
        	out.print("<td>"+rs.getString(5)+"</td>");
        	out.print("<td>"+rs.getString(6)+"</td></tr>");
        	
        
    }
        }
    finally{
    	out.println("</table>");
    }
     	
   
%>