<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<%
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","Siddhartha!123");
    String user = request.getParameter("name");    
    String doctor = request.getParameter("doctor");
    String age = request.getParameter("age");
    String prb = request.getParameter("prb");
    int b1=Integer.parseInt(request.getParameter("b1"));
    int b2=Integer.parseInt(request.getParameter("b2"));
    int b3=Integer.parseInt(request.getParameter("b3"));
    int b4=b1+b2+b3;
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into discharged(pname, age,problem, doctor,total_bill) values ('" +user + "','" + age + "','" + prb + "','" + doctor + "','" + b4+ "')");
    if(i<0){
    	out.println("Some thing is wrong in discharging table");
    }
    int j = st.executeUpdate("delete from appointment where patientname='"+user+"' and doctor='"+doctor+"' and problem='"+prb+"'");
    if(i<0){
    	out.println("Some thing is wrong in deleting from database");
    }
    
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
  background-color: #f2f2f2;
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
        
        
            %>
            <h1>Bill of the patient</h1>
            <div class="container">
           <form>
           <input  name="name" value="<%=user %>"  readonly="readonly"/>
            <input  name="age" value="<%=age %>"  readonly="readonly"/>
            doctor Name
                         <input  name="doctor" value="<%=doctor %>"  readonly="readonly"/>
                       <input  name="prb" value="<%=prb %>"  readonly="readonly"/>
                   <input  name="b1"  value="Hospital bill <%=b1%>"readonly="readonly"/>
                   <input  name="b2" value="Doctor bill <%=b2%>"readonly="readonly"/>
                   <input  name="b3" value="Other bill <%=b3%>"readonly="readonly"/>
                   <input  name="b4" value="Total bill <%=b4%>"readonly="readonly"/>
          
            
           </form>
            </div>
            <% 
        
    %>
 <h1>Patient discharged</h1>
</body>
</html>