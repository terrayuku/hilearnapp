<%-- 
    Document   : subjects
    Created on : 21 Mar 2017, 10:18:55 PM
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

<title>Student Subject</title>
</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav class="navbar navbar-default navbar-static-top navbar-inverse">
	  <section class="container">
	    <jsp:include 
      page="navigation.jsp?title=Subject Content&back=student_subjects.jsp" />
      <jsp:include page="username.jsp" />
	  </section>
	</nav> <!-- End Nav Bar -->

  <main class="jumbotron">
	<!-- Teacher Registration -->
	<div class="post">
		<div class="row">
			<a href="#">
				<div class="col-xs-11 post-item">
					<span class="glyphicon glyphicon-file"></span>
					<span>Notes</span><br />
					<span class=""></span>
				</div>
				<!--<div class="col-xs-3"><span class="glyphicon glyphicon-info-sign"></span></div>-->
			</a>
		</div>
		<div class="row">
			<a href="#">
				<div class="col-xs-11 post-item">
					<span class="glyphicon glyphicon-folder-open"></span>
					<span>Previous Question Papers</span><br />
					<span class=""></span>
				</div>
				<!--<div class="col-xs-3"><span class="glyphicon glyphicon-info-sign"></span></div>-->
			</a>
		</div>
		<div class="row">
			<a href="#">
				<div class="col-xs-11 post-item">
					<span class="glyphicon glyphicon-book"></span>
					<span>Study Guides</span><br />
					<span class=""></span>
				</div>
				<!--<div class="col-xs-2"><span class="glyphicon glyphicon-info-sign"></span></div>-->
			</a>
		</div>
		
		<div class="row">
			<a href="#">
				<div class="col-xs-11 post-item">
					<span class="glyphicon glyphicon-share"></span>
					<span>Exercise & Solution</span><br />
					<span class=""></span>
				</div>
				<!--<div class="col-xs-3"><span class="glyphicon glyphicon-info-sign"></span></div>-->
			</a>
		</div>
		<div class="row">
      <a href="chatroom.jsp?subject=<%= request.getParameter("subject") %>">
				<div class="col-xs-11 post-item">
					<span class="glyphicon glyphicon-comment"></span>
					<span>Peer Help</span><br />
					
				</div>
				<!--<div class="col-xs-3"><span class="glyphicon glyphicon-info-sign"></span></div>-->
			</a>
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