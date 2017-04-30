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

  <%
    DBAccess db = new DBAccess();
    System.out.println((String)session.getAttribute("id"));
    ArrayList student_subject = (ArrayList)db.getStudent_Subject((String)session.getAttribute("id"));
      
    if(!student_subject.isEmpty()) {
      System.out.println(student_subject);
      for(int i = 0; i < student_subject.size(); i++) {
        
  %>
  <main class="jumbotron">
  	<!-- Student Subject -->
	<section class="registration">
    <a href="contents.jsp?subject=<%= student_subject.get(i) %>" >
		<div class="row">
			<div class="col-xs-4"><span class="glyphicon glyphicon-book"></span></div>
			<div class="col-xs-4"><%= student_subject.get(i) %></div>
			<div class="col-xs-4"><span class="glyphicon glyphicon-chevron-right"></span></div>
		</div>	
		</a>		
	</section>
  <%
      }
    } else {
      session.setAttribute("subject", "No Subjects");
    }
   %>
	
  </main>
  <section class="bg-dark">
    <!-- footer here -->
    <jsp:include page="pages/footer.jsp" />
  </section>
</body>
</html>