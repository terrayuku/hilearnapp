<%-- 
    Document   : teacher
    Created on : 21 Mar 2017, 10:19:06 PM
    Author     : TerraByte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="header.jsp?title=New Class" />
</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid bg-dark">
          <jsp:include page="navigation.jsp?title=Add Class&back=admin.jsp" />
        </div>
        <!-- /.container-fluid -->
    </nav> <!-- End Nav Bar -->

 <section class="container">
    <div class="row">
      <div class="col-md-offset-5 col-md-3">
        <div class="form-login">
          <h4 class="text-center text-primary">Add class</h4>
        <form method="POST" action="../School_Class" >
          <input type='text' class="form-control input-sm chat-input"
                 name="class_name" placeholder='Class Name: i.e. 10A'/><br/>
          <input type='text' class="form-control input-sm chat-input"
                 name="number_of_studets" placeholder='Number of Students'/><br/>
          <input type='text' class="form-control input-sm chat-input"
                 name="number_of_teachers" placeholder='Number of Teacher'/><br/>
          <input class="btn btn-primary" type="submit" name="submit" value="Add" />
          <input class="btn btn-default" type="reset" name="reset" value="Reset" />
        </form>
      </div>
    </div>
 </section>
  
  <section class="bg-dark">
    <!-- footer here -->
    <jsp:include page="footer.jsp" />
  </section>
</body>
</html>