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
    <title>Hi-Login</title>
  </head>
  <body>
  <nav class="navbar navbar-default navbar-static-top navbar-inverse">
	  <div class="container">
      <div class="row" style="margin-top: 10px; color: white;">
        <div class="col-xs-10">
          <span style="font-size: 30px;">
            <a href="../index.jsp" style="color: #ffffff"> Hi-Learn</a>
          </span>
        </div>
      </div>
	  </div>
	</nav> <!-- End Nav Bar -->
  
<!--    <main>
      <center class="main-content">
        <h3>
          <strong>Login to Continue</strong>
        </h3>
        <form method="POST" action="../Login" >
          <table>
            <tr>
              <td>
                <label><b> Username</b></label>
              </td>
            </tr>
            <tr>
              <td>
                <input type="text" name="username" value="" placeholder="Username" />
              </td>
            </tr>
            <tr>
              <td>
                <label><b> Password</b></label>
              </td>
            </tr>
            <tr>
              <td>
                <input type="password" name="password" value="" placeholder="Password"/>
              </td>
            </tr>
            <tr>
              <td style="padding-top: 20px;">
                <input type="submit" value="Login" class="btn btn-primary"/>     
                <input type="submit" value="Forgot Your Password?" class="btn btn-default"/>
              </td>
            </tr>
          </table>
        </form>
      </center>
    </main>-->
<main>
<div class="container-login">
    <div class="row">
        <div class="col-md-offset-5 col-md-3">
            <div class="form-login">
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
</div>
</main>
<section>
    <!-- footer here -->
    <jsp:include page="../pages/footer.jsp" />
</section> 
  </body>
</html>
