<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
table, th,td {
  border: 1px solid black;
}
div {
  width: 98%;
  padding: 50px;
  border: 5px solid gray;
  color:red;
}
img{
    position: relative;
    float:right;
    top: -115px; /* Moves the image 2px closer to the top of the page */
}
}
</style>
</head>
<body>

<form action='appointment.jsp?dname=Siddhartha&problem=fever' method="POST">
<div>
Name : Dr.Siddhartha<br><br>
Specialization:MBBS<br><br>
<img src="image/doctor.jpg">
<input type="submit" value="Book appointment">
</div>
</form>
<form action="appointment.jsp?dname=Sumanth&problem=fever" method="POST">
<div>
Name : Dr.Sumanth<br><br>
Specialization:MBBS<br><br>
<img src="image/doctor.jpg">
<input type="submit" value="Book appointment">
</div>
</form>
<form action="appointment.jsp?dname=Ajith&problem=fever" method="POST">
<div>
Name : Dr.Ajith<br><br>
Specialization:MBBS<br><br>
<img src="image/doctor.jpg">
<input type="submit" value="Book appointment">
</div>
</form>


</body>
</html>