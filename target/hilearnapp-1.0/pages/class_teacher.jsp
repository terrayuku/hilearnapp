<%-- 
    Document   : newteacher
    Created on : 21 Mar 2017, 11:16:51 PM
    Author     : TerraByte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="header.jsp?title=Teachers Class" />
</head>
<!-- Body -->
<body>
	
  <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid bg-dark">
      <jsp:include page="navigation.jsp?title=Assign Class&back=teacher.jsp" />
    </div>
        <!-- /.container-fluid -->
  </nav> <!-- End Nav Bar -->

      <!-- Assign Class -->
  <section class="container">
    <div class="row">
      <div class="col-md-offset-5 col-md-3">
        <div class="form-login">
          <form method="POST" action="../Teacher" >
            <h4 class="text-center">Assign Teacher to a Class</h4>
            <label class="label-primary">Name</label>
              <select name="staff_num">
                <option value="456">Byte</option>
                <option value="5632">Ben</option>
              </select>
            <br />
            <label class="label-primary">Class</label>
              <select name="class_name">
                <option value="10A">10A</option>
                <option value="10B">10B</option>
              </select>
            <br/>
          <input class="btn btn-primary" type="submit" 
                 name="submit" value="Assign Class" />
        </form>
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