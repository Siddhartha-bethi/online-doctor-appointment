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
  background-color: purple;
  padding: 20px;
  width:300px;
height:400px;
}
form{
width:300px;
height:200px;
}
</style>
<body>

<h3>Registration Form</h3>

<div class="container">
  <form action="registration.jsp">
    
    <input name="name" placeholder="Your Name" required> 
     <input name="age" placeholder="Your age" required> 
    <input name="email" placeholder="Your email" required>
    <input type="password" name="password" placeholder="password" required>
    <input name="mobile" placeholder="Your Mobile Number" required>
    <select id="gender" name="gender" placeholder="Gender">
      <option value="Male">Male</option>
      <option value="Female">Female</option>
      <option value="Others">Others</option>
    </select>
    <input name="address" placeholder="Your Address" required>
    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>
    