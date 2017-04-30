<%-- 
    Document   : newjsp
    Created on : 08 Nov 2016, 2:42:35 PM
    Author     : zodiac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <jsp:include page="../pages/header.jsp?title=Hi-Login" />
  </head>
  <body>
  <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid bg-dark">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <a class="navbar-brand" href="../">Hi-Learn</a>
            </div>

        </div>
        <!-- /.container-fluid -->
    </nav>
  <section id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <form method="POST" action="../Login" >
                      <h4>Login to Continue</h4>
                      <input type="text" name="username" class="form-control input-sm chat-input" placeholder="Username" />
                      </br>
                      <input type="password" name="password" class="form-control input-sm chat-input" placeholder="Password" />
                      </br>
                      <div class="wrapper">
                      <span class="group-btn">     
                          <input type="submit" class="btn btn-primary btn-md" value="Login">
                      </span>
                        <button name="login_lost_btn" type="button" class="btn btn-link">Lost Password?</button>
                      </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <section class="bg-dark">
    <!-- footer here -->
    <jsp:include page="../pages/footer.jsp" />
</section> 
  </body>
</html>
