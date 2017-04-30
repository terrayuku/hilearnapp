<%-- 
    Document   : admin
    Created on : 21 Mar 2017, 10:17:51 PM
    Author     : TerraByte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="header.jsp?title=Admin Dashboard" />
</head>
<!-- Body -->
<body>
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid bg-dark">
          <jsp:include page="navigation.jsp?title=Admin Dashboard&back=../login/login.jsp" />
        </div>
        <!-- /.container-fluid -->
    </nav>
  <section class="container">
    <div class="row">
      <a href="teacher.jsp">
        <div class="col-lg-3 col-md-6 text-center">
          <div class="service-box">
            <i class="fa fa-4x fa-book text-primary sr-icons"></i>
              <h3>Teacher</h3>
          </div>
        </div>
      </a>
      <a href="student.jsp">
        <div class="col-lg-3 col-md-6 text-center">
          <div class="service-box">
            <i class="fa fa-4x fa-book text-primary sr-icons"></i>
              <h3>Student</h3>
          </div>
        </div>
      </a>
      <a href="newclass.jsp">
        <div class="col-lg-3 col-md-6 text-center">
          <div class="service-box">
            <i class="fa fa-4x fa-book text-primary sr-icons"></i>
              <h3>New Class</h3>
          </div>
        </div>
      </a>
      <a href="newsubject.jsp">
        <div class="col-lg-3 col-md-6 text-center">
          <div class="service-box">
            <i class="fa fa-4x fa-book text-primary sr-icons"></i>
              <h3>New Subject</h3>
          </div>
        </div>
      </a>
  </div>
  </section>

 <section class="bg-dark">
    <!-- footer here -->
    <jsp:include page="footer.jsp" />
  </section> 
</body>
</html>