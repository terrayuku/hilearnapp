<%-- 
    Document   : subjects
    Created on : 21 Mar 2017, 10:18:55 PM
    Author     : TerraByte
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.db.DBAccess"%>
<%@page import="com.models.Student_Subject"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="header.jsp?title=Student Subject" />
</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid bg-dark">
          <jsp:include page="navigation.jsp?title=Subject Content&back=contents.jsp" />
        </div>
        <!-- /.container-fluid -->
    </nav>

	<!-- Teacher Registration -->
	<section class="container">
		<div class="row">
       <%
    DBAccess db = new DBAccess();
//    System.out.println((String)session.getAttribute("id"));
    // get student grade
    String grade = (String)db.getStudent_Class((String)session.getAttribute("id"));
    // get student subject in their grade
    ArrayList<Student_Subject> student_subject = (ArrayList<Student_Subject>)db.getStudent_Subject(grade);
    
    
    if(!student_subject.isEmpty()) {
      
      System.out.println(student_subject);
      for(Student_Subject stu: student_subject) {
  %>
			<a href="#">
				<div class="col-lg-3 col-md-3">
          <div class="service-box">
            <i class="glyphicon glyphicon-file fa-4x text-center sr-icons"></i>
            <h3><%= stu.getSubject_file() %></h3>
          </div>
				</div>
			</a>
         <%
           }
            }else {
      session.setAttribute("subject", "No Subjects");
%>
  <div class="col-lg-3 col-md-6">
  <div class="service-box text-center">
    <i class="glyphicon glyphicon-book fa-4x text-primary sr-icons"></i>
      <h3>No Files</h3>
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