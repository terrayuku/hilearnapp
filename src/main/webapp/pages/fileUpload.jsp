<%-- 
    Document   : newjsp
    Created on : 08 Nov 2016, 2:42:35 PM
    Author     : zodiac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/main.css" />
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
    <script type="text/javascript" src="../js/bootstrap.js"></script>
    <title>Hi-File Upload</title>
  </head>
  <body>
  <nav class="navbar navbar-default navbar-static-top navbar-inverse">
	  <div class="container">
      <div class="row" style="margin-top: 10px; color: white;">
        <div class="col-xs-10">
          <span style="font-size: 30px;">
            <h3 style="color: #ffffff"> Hi-File Upload</h3>
          </span>
        </div>
      </div>
	  </div>
	</nav> <!-- End Nav Bar -->
<main>
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
                </br>
                <input type="text" name="desc" class="form-control input-sm chat-input" placeholder="Describe this file" />
             
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
</main>
<section>
    <!-- footer here -->
    <jsp:include page="../pages/footer.jsp" />
</section> 
  </body>
</html>
