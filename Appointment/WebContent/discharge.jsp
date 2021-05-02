<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
height:200px;
}
form{
width:300px;
height:200px;
}
</style>
<body>

<center><h3>Doctor Login</h3>

<div class="container">
  <form action="discharge2.jsp">
  <input  name="name" placeholder="Patient Name" required>
    <select id="doctor" name="doctor">
      <option value="doctor">Consultant Doctor</option>
      <option value="Rishi">Rishi</option>
      <option value="Siddhartha">Siddhartha</option>
      <option value="Harshit">Harshit</option>
      <option value="Likith">Likith</option>
      <option value="Sriram">Sri ram</option>
      <option value="Hemanth">Hemanth</option>
      <option value="Sumanth">Sumanth</option>
      <option value="Hari">Hari</option>
      <option value="Ajith">Ajith</option>
    </select>
    
    
    <input type="submit" value="Login">
  </form>
</div>
</center>

</body>
</html>