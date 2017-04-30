<%-- 
    Document   : subjects
    Created on : 21 Mar 2017, 10:18:55 PM
    Author     : TerraByte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="header.jsp?title=Student Subject" />
</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid bg-dark">
          <jsp:include page="navigation.jsp?title=Subject Content&back=student_subject.jsp" />
        </div>
        <!-- /.container-fluid -->
    </nav>

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
	<section class="bg-dark">
    <!-- footer here -->
    <jsp:include page="pages/footer.jsp" />
  </section>
</body>
</html>