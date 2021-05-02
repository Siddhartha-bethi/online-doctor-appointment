<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Siddhartha!123");
    Statement st = con.createStatement();
    
    ResultSet rs;
    rs=st.executeQuery("select * from discharged");
    %>
<!DOCTYPE html>
<html>
<style>
body {
  font-family: Arial;
  background-color: #f2f2f2;
}

input,input[type=passowrd], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div.container {
  border-radius: 5px;
  background-color: orange;
  padding: 20px;
  width:300px;
height:290px;
}
form{
width:300px;
height:200px;
}
</style>
<body>   

    <%
        while(rs.next())
        {
            %>
            <h1>Discharged Patient</h1>
            <div class="container">
           <form action="doctorpatient.jsp" method="post">
           <input  name="patientname" value="Patient Name <%=rs.getString(1) %>"  readonly="readonly"/>
            <input  name="patientage" value="Patient age <%=rs.getString(2) %>"  readonly="readonly"/>
                         <input  name="rcu" value="Consultant doctor  <%=rs.getString(4) %>"  readonly="readonly"/>
                       <input  name="rcu" value="Problem  <%=rs.getString(3) %>"  readonly="readonly"/>
                       <input  name="rcu" value="Bill  <%=rs.getString(5) %>"  readonly="readonly"/>
                       <input name="time" value="discharged time <%=rs.getString(6) %>" readonly="readonly">
           </form>
            </div>
            <% 
        }
    %>
</body>
</html>