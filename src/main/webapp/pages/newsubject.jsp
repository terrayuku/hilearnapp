<%-- 
    Document   : newstudent
    Created on : 21 Mar 2017, 11:05:43 PM
    Author     : TerraByte
--%>

<%@page import="com.models.Clas"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.models.Teacher"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="header.jsp?title=New Subject" />

</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid bg-dark">
          <jsp:include page="navigation.jsp?title=New Subject&back=admin.jsp" />
        </div>
        <!-- /.container-fluid -->
    </nav> <!-- End Nav Bar -->
<section class="container">
    <div class="row">
      <div class="col-md-offset-5 col-md-3">
        <div class="form-login">
          <h4 class="text-center text-primary">Add Subject</h4>
        <form method="POST" action="../Subject" >
          <input type='text' class="form-control input-sm chat-input"
                 name="subj_name"	placeholder='Subject Name'/><br/>
          <input type='text' class="form-control input-sm chat-input"
                 name="subj_desc" placeholder='Subject Description'/><br/>
          <select name="subj_class" class="form-control input-sm chat-input">
          <%
            DBAccess db = new DBAccess();
            List<Clas> clas = (ArrayList<Clas>)db.getAllTeachers();
            
            for(Clas c: clas) {
              if(c != null) {
           %>
            <option value=<%= c.getClass_name() %> ><%= c.getClass_name() %></option>
           <%
             } else {
            %>
            <option value="No Teacher">No Teacher</option>
            <%
              }
            }
           %>
          </select><br/>
          <select name="subj_teacher" class="form-control input-sm chat-input">
          <%
            
            List<Teacher> teachers = (ArrayList<Teacher>)db.getAllTeachers();
            
            for(Teacher t: teachers) {
              if(t != null) {
           %>
            <option value=<%= t.getStaff_num() %> ><%= t.getFirst_name() %> <%= t.getLast_name() %></option>
           <%
             } else {
            %>
            <option value="No Teacher">No Teacher</option>
            <%
              }
            }
           %>
          </select><br/>        
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
