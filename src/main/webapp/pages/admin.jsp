<%-- 
    Document   : admin
    Created on : 21 Mar 2017, 10:17:51 PM
    Author     : TerraByte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=9">
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  
  <script type="text/javascript" src="../js/bootstrap.js"></script>
  <link rel="stylesheet" type="text/css" href="../css/main.css" />
  <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
  
	<title>Admin Dashboard</title>
</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav class="navbar navbar-static-top navbar-inverse fixed">
	  <section class="container">
       <jsp:include 
        page="navigation.jsp?title=Dashboard&back=../login/login.jsp"/>
      <jsp:include page="username.jsp" />
	  </section>
	</nav> <!-- End Nav Bar -->
  
  <main class="jumbotron">
	<!-- Teacher Registration -->
	<section class= "registration">
		<a href="teacher.jsp">
		<div class="row">
			<div class="col-xs-4"><span class="glyphicon glyphicon-user"></span></div>
			<div class="col-xs-4">Teacher</div>
			<div class="col-xs-4"><span class="glyphicon glyphicon-chevron-right"></span></div>
		</div>	
		</a>		
	</section>
	<!-- Student Registration -->
	<section class="registration">
		<a href="student.jsp">
	 	<div class="row">
			<div class="col-xs-4"><span class="glyphicon glyphicon-user"></span></div>
			<div class="col-xs-4">Student</div>
			<div class="col-xs-4"><span class="glyphicon glyphicon-chevron-right"></span></div>
		</div>
		</a>
	</section>
  <!-- Add Subject to a School -->
  <section class="registration">
		<a href="newclass.jsp">
	 	<div class="row">
			<div class="col-xs-4"><span class="glyphicon glyphicon-blackboard"></span></div>
			<div class="col-xs-4">Add Class</div>
			<div class="col-xs-4"><span class="glyphicon glyphicon-chevron-right"></span></div>
		</div>
		</a>
	</section>
  <!-- Add Subject to a School -->
  <section class="registration">
		<a href="newsubject.jsp">
	 	<div class="row">
			<div class="col-xs-4"><span class="glyphicon glyphicon-book"></span></div>
			<div class="col-xs-4">Add Subject</div>
			<div class="col-xs-4"><span class="glyphicon glyphicon-chevron-right"></span></div>
		</div>
		</a>
	</section>
  </main>
 <section>
    <!-- footer here -->
    <jsp:include page="footer.jsp" />
  </section> 
<script type="text/javascript" src="../js/bootstrap.js"></script>
</body>
</html>