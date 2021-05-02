<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%
    String doctor = request.getParameter("dname");
    String problem = request.getParameter("problem");
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
height:380px;
}
form{
width:300px;
height:200px;
}
</style>
<body>

<center><h3>Patient details</h3>
<div class="container">
<form action="doctorpatient.jsp" method="post">

    <input  name="pname" placeholder="Patient name" required>
    <input  name="age" placeholder="Patient age" required>
    <input  name="bloodgroup" placeholder="Patient bloodgroup">
    <input  name="recentcheckup" placeholder="details of any recent checkup">
    <input  name="symptoms" placeholder="Any symptoms eg:vomitings,headache ">
    <input  name="doctor" value= "<%=doctor%>"  readonly="readonly"/>
    <input  name="problem" value="<%=problem %>" readonly="readonly"/>
    <label>Appointment Date</label><br>
    <select style="width:33%;float:left;" id="date" name="date">
      <option value="-1">day</option>
      <option value="1">1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
      <option value="5">5</option>
      <option value="6">6</option>
      <option value="7">7</option>
      <option value="8">8</option>
    </select>
    <select style="width:33%;float:left;" id="month" name="month">
      <option value="Month">Month</option>
      <option value="January">January</option>
      <option value="Febuary">Febuary</option>
      <option value="March">March</option>
      <option value="April">April</option>
      <option value="May">May</option>
      <option value="June">June</option>
      <option value="July">July</option>
      <option value="August">August</option>
    </select>
    <select style="width:33%;float:left;" id="year" name="year">
      <option value="Year">Year</option>
      <option value="2021">2021</option>
      <option value="2022">2022</option>
      <option value="2023">2023</option>
    </select>
    
 
    <input type="submit" value="Submit">
  </form>
</div>
</center>

</body>
</html>
    