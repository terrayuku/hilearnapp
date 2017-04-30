<%-- 
    Document   : teacher
    Created on : 21 Mar 2017, 10:19:06 PM
    Author     : TerraByte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="header.jsp?title=Teacher Registration" />
</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid bg-dark">
          <jsp:include page="navigation.jsp?title=Teacher Registration&back=admin.jsp" />
        </div>
        <!-- /.container-fluid -->
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
  
  <section class="bg-dark">
    <!-- footer here -->
    <jsp:include page="footer.jsp" />
  </section>
</body>
</html>