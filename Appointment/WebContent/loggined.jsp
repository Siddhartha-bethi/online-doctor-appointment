<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<html>
<head><style>

.service {
    text-align: center;
    padding: 70px 20px 80px 20px;
    transition: all ease-in-out 0.3s;
    background: rgba(17, 219, 207,0.8);
    box-shadow: 0px 5px 90px 0px rgba(3, 117, 111, 0.63);
  }
  
 .service .icon {
    margin: 0 auto;
    width: 64px;
    height: 64px;
    display: flex;
    align-items: center;
    justify-content: center;
    transition: ease-in-out 0.3s;
    position: relative;
    background: #f5f5f5;
    border-radius: 50px;
  }
  
   .service .icon i {
    font-size: 32px;
    transition: 0.5s;
    line-height: 1;
    position: relative;
  }
  
   .service h4 {
    font-weight: 600;
    margin: 10px 0 15px 0;
    font-size: 22px;
  }
  
   .service h4 a {
    color: #000;
    transition: ease-in-out 0.3s;
  }
  
   .service p {
    line-height: 24px;
    font-size: 14px;
    margin-bottom: 0;
  }
  
    .services i{
    color: #47aeff;
  }
 
  /*----about -section*/
  .about-section {
    margin-top: 5rem;
    margin-bottom: 5rem;
  }
  
  .about-heading {
    text-transform: uppercase;
  }
  
  .about-heading .about-heading-upper {
    display: block;
    font-size: 1rem;
    font-weight: 800;
  }
  
  .about-heading .about-heading-lower {
    display: block;
    font-size: 38px;
    font-weight: 100;
  }
  
  .bg-faded {
    background-color: rgba(17, 219, 207,0.8);
  }

  .about-button .btn-color{
    background: #03a59a;
    font-weight: bold;
    color: #fff;
  }
  .about {
    position: relative;
  }
  <script> 
  @media (min-width: 992px) {
    .about .about-img {
      width: 75%;
      float: right;
    }
    .about .about-text {
      left: 0;
      width: 60%;
      margin-top: 3rem;
      position: absolute;
    }
    .about .about-text .about-button {
      width: 100%;
      left: 0;
      position: absolute;
      bottom: -2rem;
    }
  }
 
  @media (min-width: 1200px) {
    .about .about-text {
      width: 45%;
    }
  }
</script> 

</style></head>  

<section id="services" class="services mt-5 mb-3 py-3">
    <div class="container">
    <a href="viewappointment.jsp" style="float:right;"><button><h1>My appointments</h1></button></a>
      <div class="section-title">
        <h1 class="text-center" style="font-size:50px;">Services</h1>
        
        <p>Please choose your related problems here</p>
      </div>
      <div class="row">
       <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
          <div class="service shadow">
            
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwakq4h5H_IUSZbNdOUQMcRtyMEVw9dbqTxkVWGYHq27LMn5oTz2jscBpWZdneKHuU6o0&usqp=CAU"></img>
           
            <h4><a href="fever.jsp">Fever</a></h4>
            <p>FEVER</p>
          </div>
        </div>

        <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
          <div class="service shadow">
            
                <img src="data:image/jpeg;base64,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"></img>
           
            <h4><a href="surgery.jsp">SURGERY</a></h4>
            <p>surgey</p>
          </div>
        </div>

         <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
          <div class="service shadow">
            
                <img src="https://static.medmonks.com/home/img/blog/cardiologist-india.jpg" width="350" height="200"></img>
           
            <h4><a href="cardiologist.jsp">Cardialogist</a></h4>
            <p>cardialogist</p>
          </div>
        </div>


       <center> <a href="feedbackform.jsp"><button><h1>Give Feedback</h1></button></a>
      </div></center>

    </div>
  </section>

</html>