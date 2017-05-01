<%-- 
    Document   : admin
    Created on : 21 Mar 2017, 10:17:51 PM
    Author     : TerraByte
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="header.jsp?title=Enrolled Classes" />
</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid bg-dark">
          <jsp:include page="navigation.jsp?title=Enrolled Classes&back=../login/login.jsp" />
        </div>
        <!-- /.container-fluid -->
    </nav> <!-- End Nav Bar -->

  <%
    DBAccess db = new DBAccess();
    System.out.println((String)session.getAttribute("id"));
    ArrayList class_teacher = (ArrayList)db.getClassTeacher((String)session.getAttribute("id"));
      
    if(!class_teacher.isEmpty()) {
      for(int i = 0; i < class_teacher.size(); i++) {
        
  %>
  <div class="container">
    <div class="row">
  	<!-- Student Subject -->
      <a href="teacher_subject.jsp?class=<%= class_teacher.get(i) %>">
        <div class="col-lg-3 col-md-6 text-center">
          <div class="service-box">
            <i class="glyphicon glyphicon-blackboard fa-4x text-primary sr-icons"></i>
              <h3><%= class_teacher.get(i) %></h3>
          </div>
        </div>
      </a>
  <%
      }
    } else {
      session.setAttribute("subject", "No Class");
  %>
        <div class="col-lg-3 col-md-6 text-center">
          <div class="service-box">
            <i class="glyphicon glyphicon-blackboard fa-4x text-primary sr-icons"></i>
              <h3>No Class</h3>
              <p class="text-center">Please contact your school admin to add a class for you.</p>
          </div>
        </div>
    </div>
  </div>
  <%
    }
   %>
  </main>
   
  <section class="bg-dark">
    <!-- footer here -->
    <jsp:include page="footer.jsp" />
  </section>
</body>
</html>