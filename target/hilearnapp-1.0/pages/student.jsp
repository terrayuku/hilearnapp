<%-- 
    Document   : student
    Created on : 21 Mar 2017, 10:18:42 PM
    Author     : TerraByte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="header.jsp?title=Student Portal" />

</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid bg-dark">
          <jsp:include page="navigation.jsp?title=Student Portal&back=admin.jsp" />
        </div>
        <!-- /.container-fluid -->
    </nav> <!-- End Nav Bar -->
  <section class="container">
    <div class="row">
      <div class="col-lg-3 col-md-6 text-center">
      <div class="service-box">
          <a href="newstudent.jsp" class="btn btn-primary">New Student</a>
        </div>
      </div>
      
        <div class="col-lg-3 col-md-6 text-center">
      <div class="service-box">
          <a href="student_subject.jsp" class="btn btn-primary">Assign Subject</a>
        </div>
      </div>
      
        <div class="col-lg-3 col-md-6 text-center">
      <div class="service-box">
          <a href="#" class="btn btn-danger">Delete Student</a>
        </div>
      </div>
		</div> 
  </section>
	<section class="bg-dark">
    <!-- footer here -->
    <jsp:include page="footer.jsp" />
  </section>
</body>
</html>