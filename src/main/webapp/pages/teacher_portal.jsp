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
  <main class="jumbotron">
  	<!-- Student Subject -->
	<div class="registration">
    <a href="teacher_subject.jsp?class=<%= class_teacher.get(i) %>" >
		<div class="row">
			<div class="col-xs-4"><span class="glyphicon glyphicon-blackboard"></span></div>
			<div class="col-xs-4"><%= class_teacher.get(i) %></div>
			<div class="col-xs-4"><span class="glyphicon glyphicon-chevron-right"></span></div>
		</div>	
		</a>		
	</div>
  <%
      }
    } else {
      session.setAttribute("subject", "No Class");
    }
   %>
  </main>
   
  <section class="bg-dark">
    <!-- footer here -->
    <jsp:include page="footer.jsp" />
  </section>
</body>
</html>