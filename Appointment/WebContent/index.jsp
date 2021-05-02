<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html> 
<html> 
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title> Home page </title>
<style> 
Body {
  font-family: Calibri, Helvetica, sans-serif;
  background-image:url(image/img1.jpg);
  background-repeat:no-repeat;
  background-position:2px 110px;
  background-size:1500px 650px;
 }
button { 
       background-color: #4CAF50; 
       width: 100%;
        color: orange; 
        padding: 15px; 
        margin: 10px 0px; 
        border: none; 
        cursor: pointer; 
         } 
 form { 
        border: 3px solid #f1f1f1; 
        width:500px;
        float:right;
        
        
    } 
 input[type=text], input[type=password] { 
        width: 100%; 
        margin: 8px 0;
        padding: 12px 20px; 
        display: inline-block; 
        border: 2px solid green; 
        box-sizing: border-box; 
    }
 button:hover { 
        opacity: 0.7; 
    } 
 
.navi {

    display:inline-block;
    width:130px;
    float:left;
}     
   
 .container { 
        padding: 25px; 
        background-color: lightblue;
        postion:relative;
        left:10px;
        top:7px;
        height:200px;
    } 
table{
        border-collapse: collapse; /* Remove cell spacing */
        background-color:white;
        }
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li{
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color: #111;
}
.images{
float:left;
width:100px;
height:500px;
}
</style> 
</head>  
<body>  
<center><div style="font-size:90px;color:red">Apollo Hospital</div></center>
<ul>
  
  <li><a href="index.jsp">Home</a></li>
  <li><a href="mdetails.jsp">Register</a></li>
  <li><a href="index2.jsp">Doctor Login</a></li>
  <li><a href="admindetails.jsp">Admin Login</a></li>
  <li style="float:right;"><a href="aboutus.jsp">About us</a></li>
  <li style="float:right;"><a href="contact.jsp">Contact</a></li>

</ul>


    <form style="position:relative;bottom:-56px;"action="checklogin.jsp" method="post">
         <h1 Style="color:red;">Patient login form</h1>
        <div class="container"> 
            <label>Email: </label> 
            <input type="text"  name="email" required>
            <label>Password : </label> 
            <input type="password" name="pass" required>
            <input type="submit" value="Login" style="width:200px;height:40px;"/>
        </div>        
    </form> 
<div style="position:relative;bottom:-620px;left:520px;">
<img alt="" src="image/car.jpg" align="right">
</div>
<div class ="par1" style="font-size:30px;width: 50%;display:inline;position:relative;bottom:-160px;float:left;">
<b>Cardiology</b><br>
The Apollo Heart Institutes are regarded as one 
of the best heart hospitals in India, performing a multitude of treatments and procedures in cardiology and cardiothoracic surgery. The scorecard shows an unmatched record of over 1,52,000 cardiac and cardiothoracic surgeries.

We have vast experience in the most complicated coronary artery bypass surgery, surgery for all types of valvular heart diseases, paediatric heart surgery, adult and paediatric heart transplantation with success rates comparable to international standards.
</div> 
<div>
<div style="position:relative;bottom:-650px;">
<img alt="" src="image/ortho.jpg" style="width:730px;height:500px;" align="right">
</div>
<div class ="par1" style="font-size:30px;width: 50%;display:inline;position:relative;bottom:-280px;float:left;">
<b>Orthopedics</b><br>
The Apollo Institutes of Orthopaedics is regarded as one of the best & top orthopaedics hospitals in India with a legacy of innovation and excellence. The Institutes are at the forefront in offering the latest in Orthopedic treatments and Orthopedic surgical advancements in India on par with the best centres in the world.

Apollo Hospitals offers key & best orthopedic surgeries and procedures in India. We perform bone and joint replacement surgeries which include the most current Arthroscopic and Reconstructive techniques.
</div>


</body>   
</html>

 
