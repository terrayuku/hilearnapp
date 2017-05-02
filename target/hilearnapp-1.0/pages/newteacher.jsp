<%-- 
    Document   : newteacher
    Created on : 21 Mar 2017, 11:16:51 PM
    Author     : TerraByte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="header.jsp?title=New Teacher" />
</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid bg-dark">
          <jsp:include page="navigation.jsp?title=New Teacher&back=teacher.jsp" />
        </div>
        <!-- /.container-fluid -->
    </nav> <!-- End Nav Bar -->

      <!-- Teacher Registration -->
  <section class="container">
    <div class="row">
      <div class="col-md-offset-5 col-md-3">
        <div class="form-login">
          <form method="POST" action="../Teacher" >
            <h4 class="text-center">Add new teacher</h4>
              <input type='text' class="form-control input-sm chat-input" 
                     name="staff_number" placeholder='Staff Number' required=""/><br />
              <input type='text' class="form-control input-sm chat-input" 
                     name="last_name" placeholder='Name' required=""/><br />
              <input type='text' class="form-control input-sm chat-input" 
                     name="first_name" placeholder='Surname' required=""/><br />
              <input type='text' class="form-control input-sm chat-input" 
                     name="email" placeholder='Email' required=""/><br />
              <input type='password' class="form-control input-sm chat-input" 
                     name="password" placeholder='Default Password' required=""/><br />
              <input type='text' class="form-control input-sm chat-input" 
                     name="cell_number" placeholder='Phone Number' required=""/><br />             
          <input class="btn btn-primary" type="submit" name="submit" value="Add Teacher" />
          <input class="btn btn-default" type="reset" name="reset" value="Reset" />
        </form>
      </section>
  
  <section class="bg-dark">
    <!-- footer here -->
    <jsp:include page="footer.jsp" />
  </section>
</body>
</html>