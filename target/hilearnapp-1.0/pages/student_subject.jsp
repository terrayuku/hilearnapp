<%-- 
    Document   : newteacher
    Created on : 21 Mar 2017, 11:16:51 PM
    Author     : TerraByte
--%>

<%@page import="com.models.StudentModel"%>
<%@page import="controllers.Student"%>
<%@page import="com.models.Subject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.models.Clas"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBAccess"%>
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
            <h4 class="text-primary">Subject</h4>
              
            <select name="student_exam_num" class="form-control input-sm chat-input">
              <%
            DBAccess db = new DBAccess();
            List<Subject> subject = (ArrayList<Subject>)db.getAllSubjects();
            
            for(Subject s: subject) {
              if(s != null) {
           %>
           <option value=<%= s.getSub_name() %> ><%= s.getSub_name() %>:<span class="text-info">
             <%= s.getSub_class() %>
           </span></option>
           <%
             } else {
            %>
            <option value="No Class">No Subject</option>
            <%
              }
            }
           %>
            </select>
             
            <h4 class="text-primary">Student</h4>
              
            <select name="sub_name" class="form-control input-sm chat-input">
              <%
                List<StudentModel> student = (ArrayList<StudentModel>)db.getAllStudents();
                
                for(StudentModel stu: student) {
                  if(stu != null) {
                %>
                <option value="<%= stu.getExam_number()%>"><%= stu.getFirst_name() %>:<%= stu.getLast_name() %></option>
                <%
             } else {
            %>
            <option value="No Class">No Subject</option>
                <%
                  }
                }
                %>
            </select><br />
              
          <input class="btn btn-primary" type="submit" name="submit" value="Add" />
          <input class="btn btn-default" type="reset" name="reset" value="Reset" />
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