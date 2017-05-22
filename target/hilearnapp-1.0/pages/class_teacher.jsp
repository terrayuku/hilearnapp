<%-- 
    Document   : newteacher
    Created on : 21 Mar 2017, 11:16:51 PM
    Author     : TerraByte
--%>

<%@page import="com.models.Clas"%>
<%@page import="com.models.Teacher"%>
<%@page import="com.models.Teacher"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.db.DBAccess"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="header.jsp?title=Assign Class" />
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
          <form method="POST" action="../Class_Teacher" >
            <h4 class="text-primary">Assign Teacher to a Class</h4>
            <h4 class="text-success">Name</h4>
            <select name="staff_num" class="form-control input-sm chat-input" >
              <%
            DBAccess db = new DBAccess();
            List<Teacher> teachers = (ArrayList<Teacher>)db.getAllTeachers();
            
            for(Teacher t: teachers) {
              if(t != null) {
           %>
            <option value=<%= t.getStaff_num() %> ><%= t.getFirst_name() %> <%= t.getLast_name() %></option>
           <%
             } else {
            %>
            <option value="No Teacher">No Teachers</option>
            <%
              }
            }
           %>
          </select><br/>   
            
            <h4 class="text-success">Class</h4>
              <select name="class_name" class="form-control input-sm chat-input" >
                <%
            DBAccess dbClass = new DBAccess();
            List<Clas> clas = (ArrayList<Clas>)dbClass.getAllClasses();
            
            for(Clas c: clas) {
              if(c != null) {
           %>
            <option value=<%= c.getClass_name() %> ><%= c.getClass_name() %></option>
           <%
             } else {
            %>
            <option value="No Class">No Class</option>
            <%
              }
            }
           %>
          </select><br/> 
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