<%-- 
    Document   : teacher
    Created on : 21 Mar 2017, 10:19:06 PM
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
  
  <title>Teacher Registration</title>
</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav class="navbar navbar-default navbar-static-top navbar-inverse">
	  <div class="container">
      <jsp:include 
        page="navigation.jsp?title=Teacher Registration&back=admin.jsp"/>
      <jsp:include page="username.jsp" />
	  </div>
	</nav> <!-- End Nav Bar -->

  <main>
    <!-- Teacher Registration -->
    <section class="container jumbotron">
    <div class="row">
      <div class="col-xs-11">
        <a href="newteacher.jsp" class="btn btn-primary registration">New Teacher</a>
      </div>
			<div class="col-xs-11">
        <a href="class_teacher.jsp" class="btn btn-primary registration">Assign Class</a>
      </div>
			<div class="col-xs-11">
        <a href="#" class="btn btn-danger registration">Delete Teacher</a>
      </div>
		</div>
    </section>
  </main>
  
  <section>
    <!-- footer here -->
    <jsp:include page="footer.jsp" />
  </section>  
<script type="text/javascript" src="../js/bootstrap.js"></script>
</body>
</html>