<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<% 
    String patientname = request.getParameter("pname");
    String patientage = request.getParameter("age");
    String bloodgroup= request.getParameter("bloodgroup");
    String rcu = request.getParameter("recentcheckup");
    String symptoms = request.getParameter("symptoms");
    String doctor = request.getParameter("doctor");
    String problem = request.getParameter("problem");
    String date = request.getParameter("date");
    String month = request.getParameter("month");
    String year = request.getParameter("year");
    String opp=date+" "+month+" "+year;
    
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Siddhartha!123");
    Statement st = con.createStatement();
    ResultSet rs;
    int i=st.executeUpdate("insert into appointment(patientname,patientage,email,mobile,bloodgroup,recentcheckup,symptoms ,doctor,problem, dateofappointment) values ('" +patientname + "','" + patientage + "','" + session.getAttribute("email") + "','"+session.getAttribute("mobile")+"','" + bloodgroup + "','"+rcu+"','"+symptoms+"','"+doctor+"','"+problem+"','"+opp+"')");
    if(i>0){
    	out.println("Your appointment sucessfully booked <a href='loggined.jsp'>Go back</a>");
    }
%>