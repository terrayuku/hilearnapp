<%-- 
    Document   : newjsp
    Created on : 08 Nov 2016, 2:42:35 PM
    Author     : zodiac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <jsp:include page="header.jsp?title=Hi-File Upload" />
  </head>
  <body>
  <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid bg-dark">
          <jsp:include page="navigation.jsp?title=Hi-File Upload&back=teacher_subject.jsp" />
        </div>
        <!-- /.container-fluid -->
    </nav> <!-- End Nav Bar -->
<section class="container">
<div class="container-login">
    <div class="row">
        <div class="col-md-offset-5 col-md-3">
            <div class="form-login">
              <form name="file" method="POST" action="../FileUpload" enctype="multipart/form-data">
                <h4>Please Add a Document</h4>
                <%
                  if(request.getAttribute("message") != null){
                %>
                <%= request.getParameter("message") %>
                <%
                  } else {
                    
                  }
                %>
                <input type="file" name="uploadFile" class="form-control input-sm" />
                <br />
                <input type="hidden" name="class" value="<%= request.getParameter("class") %>"
                <input type="hidden" name="subject" value="<%= request.getParameter("subject") %>"
                <input type="hidden" name="id" value="<%= session.getAttribute("id") %>"
                <input type="text" name="desc" class="form-control input-sm chat-input" placeholder="Describe this file" />
                <br />
                <div class="wrapper">
                <span class="group-btn">     
                  <input type="submit" class="btn btn-primary btn-md" value="Upload">
                </span>
                  <button name="login_lost_btn" type="button" class="btn btn-link">Cancel</button>
                </div>
              </form>
            </div>
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
