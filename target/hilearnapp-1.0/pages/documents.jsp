<%-- 
    Document   : subjects
    Created on : 21 Mar 2017, 10:18:55 PM
    Author     : TerraByte
--%>

<%@page import="com.models.Student_Subject"%>
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
          <jsp:include page="navigation.jsp?title=Subject Content&back=contents.jsp" />
        </div>
        <!-- /.container-fluid -->
    </nav>

	<!-- Teacher Registration -->
	<section class="container">
		<div class="row">
      
			<a href="#">
				<div class="col-lg-3 col-md-3">
          <div class="service-box">
            <i class="glyphicon glyphicon-file fa-4x text-center sr-icons"></i>
              
                <% 
                  Student_Subject stu_sub = (Student_Subject)session.getAttribute("subject");
                %>
                <h3><%= stu_sub.getSubject_file() %></h3>
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