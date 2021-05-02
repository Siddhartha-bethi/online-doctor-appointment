<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color:violet;
  padding: 20px;
  width:400px;
height:600px;
}
form{

width:350px;
height:100px;
}
</style>
</head>
<body>

<h1>Contact Us</h1>

<div class="container">
  <form action="contactusdata.jsp">
    <label>Name</label>
    <input type="text" name="name"  placeholder="Your name..">

    <label>Email</label>
    <input type="text" name="email"  placeholder="Your email">

    <label for="country">branch</label>
    <select id="country" name="branch">
      <option value="australia">Madapur</option>
      <option value="canada">Kondapur</option>
      <option value="usa">LB Nagar</option>
    </select>

    <label >Subject</label>
    <textarea id="subject" name="message" placeholder="Write subject" style="height:200px"></textarea>

    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>
    