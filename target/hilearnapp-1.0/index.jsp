<%-- 
    Document   : index
    Created on : 21 Dec 2016, 5:08:43 AM
    Author     : terra
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
      <meta name="viewport" content="width=device-width" initial-scale="1"/>
      <title>Hi-Learn</title>
      <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
      <script type="text/javascript" src="js/bootstrap.js"></script>
      <link rel="stylesheet" type="text/css" href="css/main.css" />
      <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
    </head>
    <body>
        <!-- Nav Bar -->
	<nav class="navbar navbar-static-top navbar-inverse">
	  <section class="container">
      <div class="row" style="margin-top: 10px; color: white;">
        <div class="col-xs-10">
          <span style="font-size: 30px;">
            Hi-Learn
          </span>
        </div>
        <div class="col-xs-2">
          <a href="login/login.jsp">
            <span>
              Login
            </span>
          </a>
        </div>
      </div>
	  </section>
	</nav> <!-- End Nav Bar -->
  <main>
    <!-- How it Works -->
    <section class="how-it-works">
      <div class="container">
      <div class="row">
        <div class="col-sm-6">
        <!-- Couresel Of All Registered Schools.
          Using a panel body as the image part and the 
          panel footer to describe the schools response.
        -->
          <article>
            <img src="images/khanyisa.jpg" alt="KHANYISA SSS" width= "auto"/>
            <section>Our Piloting High School in Umtata.</section>
          </article>
        </div>
        <div class="col-sm-6">
          <!-- UnOrdered List with instructions of how Hi-Learn Works -->
          <article>
            <h4><strong>How Hi-Learn works</strong></h4>
            <ul class="list-group">
              <li>Apply for your school to Hi-Learn, by contacting Hi-Learn Administrator</li>
              <li>Add your school classes, subjects, teachers, and students to Hi-Learn</li>
              <li>Teachers add subject materials, reply to students off-class issues</li>
              <li>Student get efficient communication with teachers and their peers</li>
              <li>Maintain your school profile</li>
            </ul>
          </article>
        </div>
      </div>
      </div>
      </section>
    
    <section class="description">
      <div class="container">
      <div class="row">
        <div class="col-sm-6">
          <h4><strong>What is Hi-Learn</strong></h4>
          <article>
            <centre>
              Hi-Learn is a student-centric e-learning platform for high schools.
              The aim is to provide efficient teacher-to-student, student-to-student communication,
              and allow quick response to student study rising questions while off-class.
            </centre>
          </article>
        </div>
        <div class="col-sm-6">
        </div>
      </div>
      </div>
    </section>
  </main>
  <section>
    <!-- footer here -->
    <jsp:include page="pages/footer.jsp" />
  </section>  
  </body>
</html>
