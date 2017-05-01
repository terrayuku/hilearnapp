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

	<!-- Teacher Registration -->
	<section class="container">
		<div class="row">
			<a href="#">
				<div class="col-lg-3 col-md-6">
          <div class="service-box">
            <i class="glyphicon glyphicon-file fa-4x text-primary sr-icons"></i>
              <h3>Notes</h3>
          </div>
				</div>
				<!--<div class="col-xs-3"><span class="glyphicon glyphicon-info-sign"></span></div>-->
			</a>
      
			<a href="#">
				<div class="col-lg-3 col-md-6">
					<div class="service-box">
            <i class="glyphicon glyphicon-folder-open fa-4x text-primary sr-icons"></i>
              <h3>Previous Question Papers</h3>
          </div>
				</div>
				<!--<div class="col-xs-3"><span class="glyphicon glyphicon-info-sign"></span></div>-->
			</a>
      
			<a href="#">
				<div class="col-lg-3 col-md-6">
					<div class="service-box">
            <i class="glyphicon glyphicon-book fa-4x text-primary sr-icons"></i>
              <h3>Study Guides</h3>
          </div>
				</div>
				<!--<div class="col-xs-2"><span class="glyphicon glyphicon-info-sign"></span></div>-->
			</a>
      
			<a href="#">
				<div class="col-lg-3 col-md-6">
					<div class="service-box">
            <i class="glyphicon glyphicon-share fa-4x text-primary sr-icons"></i>
              <h3>Exercise & Solution</h3>
          </div>
				</div>
				<!--<div class="col-xs-3"><span class="glyphicon glyphicon-info-sign"></span></div>-->
			</a>
      
      <a href="chatroom.jsp?subject=<%= request.getParameter("subject") %>">
				<div class="col-lg-3 col-md-6">
					<div class="service-box">
            <i class="glyphicon glyphicon-comment fa-4x text-primary sr-icons"></i>
              <h3>Peer Help</h3>
          </div>
				</div>
				<!--<div class="col-xs-3"><span class="glyphicon glyphicon-info-sign"></span></div>-->
			</a>
        
    </div>
				
	</section>
	<section class="bg-dark">
    <!-- footer here -->
    <jsp:include page="footer.jsp" />
  </section>
</body>
</html>