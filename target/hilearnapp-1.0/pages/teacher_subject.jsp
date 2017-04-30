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
  <jsp:include page="header.jsp?title=Teacher Portal" />
</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid bg-dark">
          <jsp:include page="navigation.jsp?title=Enrolled Subjects&back=teacher_portal.jsp" />
        </div>
        <!-- /.container-fluid -->
    </nav> <!-- End Nav Bar -->

  <%
    DBAccess db = new DBAccess();
    System.out.println((String)session.getAttribute("id"));
    ArrayList teacher_subject = (ArrayList)db.getTeacher_Subject("456");
      System.out.println("Get: " + db.getTeacher_Subject("456"));
    if(!teacher_subject.isEmpty()) {
      System.out.println(teacher_subject);
      for(int i = 0; i < teacher_subject.size(); i++) {
        
  %>
  <main class="jumbotron">
  	<!-- Student Subject -->
	<section class="registration">
    <a href="fileUpload.jsp?class=<%= request.getParameter("class") %>&subject=<%= teacher_subject.get(i) %>" >
		<div class="row">
			<div class="col-xs-4"><span class="glyphicon glyphicon-book"></span></div>
			<div class="col-xs-4"><%= teacher_subject.get(i) %></div>
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
    <jsp:include page="footer.jsp" />
  </section>
</body>
</html>