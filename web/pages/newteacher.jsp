<%-- 
    Document   : newteacher
    Created on : 21 Mar 2017, 11:16:51 PM
    Author     : TerraByte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=9">
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
	  
  <link rel="stylesheet" type="text/css" href="../css/main.css" />
  <script type="text/javascript" src="../js/bootstrap.js"></script>
  <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
  
  <title>New Teacher</title>
</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav class="navbar navbar-default navbar-static-top navbar-inverse">
	  <div class="container">
	    <jsp:include 
        page="navigation.jsp?title=New Teacher&back=teacher.jsp"/>
      <jsp:include page="username.jsp" />
	  </div>
	</nav> <!-- End Nav Bar -->

  <main class="jumbotron">
    <center>
      <!-- Teacher Registration -->
      <div class="container">
        <form method="POST" action="../Teacher" >
          <table>
            <tr>
              <td>
                <label>Staff Number:</label>
              </td>
              <td>
                <input type='text' onChange="" name="staff_number" placeholder='211217328'/>
              </td>
            </tr>
            <tr>
              <td>
                <label>Last Name:</label>
              </td>
              <td>
                <input type='text' onChange="" name="last_name" placeholder='Terra'/>
              </td>
            </tr>
            <tr>
              <td>
                <label>First Name:</label>
              </td>
              <td>
                <input type='text' onChange="" name="first_name" placeholder=' Byte'/>
              </td>
            </tr>
            <tr>
              <td>
                <label>Email:</label>
              </td>
              <td>
                <input type='text' onChange="" name="email" placeholder='tera@gmail.com'/>
              </td>
            </tr>
            <tr>
              <td>
                <label>Teacher:</label>
              </td>
              <td>
                <input type='password' name="password" placeholder='******'/>
              </td>
            </tr>
            <tr>
              <td>
                <label>Cell Number:</label>
              </td>
              <td>
                <input type='text' onChange="" name="cell_number" placeholder='0786754632'/>
              </td>
            </tr>
          </table>
          <input class="btn btn-primary" type="submit" name="submit" value="Add" />
        </form>
      </div>
    </center>
  </main>
  
   <section>
    <!-- footer here -->
    <jsp:include page="footer.jsp" />
  </section> 
<script type="text/javascript" src="../js/bootstrap.js"></script>
</body>
</html>