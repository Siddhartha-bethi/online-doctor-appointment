<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Siddhartha!123");
    Statement st = con.createStatement();
    
    ResultSet rs;
    rs=st.executeQuery("select * from feedbacktable");
    %>
<!DOCTYPE html>
<html>
<style>
body {
  font-family: Arial;
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
height:180px;
}
form{
width:300px;
height:200px;
}
</style>
<body>   
  <h1>Feedbacks of patients</h1>
    <%
        while(rs.next())
        {
        	out.println("--------------------------------------------------------------");
            %>           
            <div class="container">
           <form>
           <input  name="patientname" value="Name <%= rs.getString(1) %>"  readonly="readonly"/>
            <input  name="email" value="Email <%= rs.getString(2) %>"  readonly="readonly"/>
            <input  name="feedback" value="feedback <%=rs.getString(3) %>"  readonly="readonly"/>
           
           </form>
            </div>
            <% 
        }
    %>
</body>
</html>