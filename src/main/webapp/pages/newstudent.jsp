<%-- 
    Document   : newstudent
    Created on : 21 Mar 2017, 11:05:43 PM
    Author     : TerraByte
--%>

<%@page import="com.models.Clas"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="header.jsp?title=New Student" />

</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid bg-dark">
          <jsp:include page="navigation.jsp?title=New Student&back=student.jsp" />
        </div>
        <!-- /.container-fluid -->
    </nav> <!-- End Nav Bar -->

  <section class="container">
    <div class="row">
      <div class="col-md-offset-5 col-md-3">
        <div class="form-login">
          <h4 class="text-center text-primary">Add New Student</h4>
        <form method="POST" action="../Student" >
          <input type='text' class="form-control input-sm chat-input" 
                 name="exam_number"	placeholder='Exam Number' required=""/><br/>
          
          <input type='text' class="form-control input-sm chat-input" 
                 name="fname" placeholder='Name' required=""/><br/>
          
          <input type='text' class="form-control input-sm chat-input" 
                 name="lname" placeholder='Surname' required=""/><br/>
          
          <input type='email' class="form-control input-sm chat-input" 
                 name="email" placeholder='Email' required=""/><br/>
          
          <input type='password' class="form-control input-sm chat-input" 
                 name="password" placeholder='Default Password: to be changed' 
                 required=""/><br/>
          
          <input type='text' class="form-control input-sm chat-input" 
                 name="phone" placeholder='Phone Number' required=""/><br/>
          
          <select name="grade" class="form-control input-sm chat-input">
          <%
            DBAccess db = new DBAccess();
            List<Clas> clas = (ArrayList<Clas>)db.getAllClasses();
            
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
          
          <input class="btn btn-primary" type="submit" name="submit" 
                 value="Add Student" />
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
