<%-- 
    Document   : student
    Created on : 21 Mar 2017, 10:18:42 PM
    Author     : TerraByte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=9">
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  
  <link rel="stylesheet" type="text/css" href="../css/main.css" />
  <script type="text/javascript" src="../js/bootstrap.js"></script>
  <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />

<title>Student Portal</title>

</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav class="navbar navbar-default navbar-static-top navbar-inverse">
	  <div class="container">
	    <jsp:include 
        page="navigation.jsp?title=Student Portal&back=admin.jsp" />
      <jsp:include page="username.jsp" />
	  </div>
	</nav> <!-- End Nav Bar -->
  <main class="jumbotron container">
    <div class="row">
      <div class="col-xs-11">
        <a href="newstudent.jsp" class="btn btn-primary registration">New Student</a>
      </div>
			<div class="col-xs-11">
        <a href="student_subject.jsp" class="btn btn-primary registration">Assign Subject</a>
      </div>
			<div class="col-xs-11">
        <a href="#" class="btn btn-danger registration">Delete Student</a>
      </div>
		</div> 
  </main>
	 <section>
    <!-- footer here -->
    <jsp:include page="footer.jsp" />
  </section> 
<script type="text/javascript" src="../js/bootstrap.js"></script>
</body>
</html>