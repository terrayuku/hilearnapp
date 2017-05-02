<%-- 
    Document   : newteacher
    Created on : 21 Mar 2017, 11:16:51 PM
    Author     : TerraByte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="header.jsp?title=Add Subject" />
</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid bg-dark">
          <jsp:include page="navigation.jsp?title=Student Subject&back=student.jsp" />
        </div>
        <!-- /.container-fluid -->
    </nav> <!-- End Nav Bar -->

 <section class="container">
    <div class="row">
      <div class="col-md-offset-5 col-md-3">
        <div class="form-login">
          <h4 class="text-center text-primary">Assign a Subject to a Student</h4>
          <form method="POST" action="../Student_Sub" >
            <h4 class="text-primary">Student:</h4>
              
            <select name="student_exam_num" class="form-control input-sm chat-input">
              <option value="211217328">Tando</option>
              <option value="1234">Ku</option>
            </select>
             
            <h4 class="text-primary">Subject:</h4>
              
            <select name="sub_name" class="form-control input-sm chat-input">
              <option value="Life Science">Life Science</option>
              <option value="Math">Math</option>
            </select>
              
          <input class="btn btn-primary" type="submit" name="submit" value="Add" />
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