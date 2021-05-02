<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Siddhartha!123");
    String user = request.getParameter("name");    
    String doctor = request.getParameter("doctor");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from appointment where patientname='"+user+"' and doctor='"+doctor+"'");

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
  background-color:#f2f2f2;
  padding: 20px;
  width:300px;
height:500px;
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
            <h1>Bill of the patient</h1>
            <div class="container">
           <form action="bill.jsp" method="post">
           <input  name="name" value="<%=rs.getString(1) %>"  readonly="readonly"/>
            <input  name="age" value="<%=rs.getString(2) %>"  readonly="readonly"/>
            doctor Name
                         <input  name="doctor" value="<%=rs.getString(8) %>"  readonly="readonly"/>
                       <input  name="prb" value="<%=rs.getString(9) %>"  readonly="readonly"/>
                   <input  name="b1" placeholder="Hospital bill"/>
                   <input  name="b2" placeholder="Doctor bill"/>
                   <input  name="b3" placeholder="Other"/>
            <input type="submit" value="Generate Bill">
            
           </form>
            </div>
            <% 
        }
    %>
</body>
</html>