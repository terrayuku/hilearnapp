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
  <jsp:include page="header.jsp?title=Enrolled Subject" />
</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid bg-dark">
          <jsp:include page="navigation.jsp?title=Enrolled Subject&back=../login/login.jsp" />
        </div>
        <!-- /.container-fluid -->
    </nav> <!-- End Nav Bar -->
  	<!-- Student Subject -->
	<section class="container">
    <div class="row">
  <%
    DBAccess db = new DBAccess();
    System.out.println((String)session.getAttribute("id"));
    ArrayList student_subject = (ArrayList)db.getStudent_Subject((String)session.getAttribute("id"));
      
    if(!student_subject.isEmpty()) {
      System.out.println(student_subject);
      for(int i = 0; i < student_subject.size(); i++) {
        
  %>

      <a href="contents.jsp?subject=<%= student_subject.get(i) %>" >
          <div class="col-lg-3 col-md-6">
            <div class="service-box">
            <i class="glyphicon glyphicon-book fa-4x text-center sr-icons"></i>
              <h3><%= student_subject.get(i) %></h3>
            </div>
          </div>
      </a>
  <%
      }
    } else {
      session.setAttribute("subject", "No Subjects");
%>
  <div class="col-lg-3 col-md-6">
  <div class="service-box text-center">
    <i class="glyphicon glyphicon-book fa-4x text-primary sr-icons"></i>
      <h3>No Subject</h3>
      <p class="text-center">Please notify your teacher to add documents.</p>
  </div>
  </div>
  <%
    }
   %>
    </div>
	</section>
	
  <section class="bg-dark">
    <!-- footer here -->
    <jsp:include page="footer.jsp" />
  </section>
</body>
</html>