<%-- 
    Document   : newstudent
    Created on : 21 Mar 2017, 11:05:43 PM
    Author     : TerraByte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=9">
  <meta name="viewport" content="width=device-width; initial-scale=1"/>
  
  <link rel="stylesheet" type="text/css" href="../css/main.css" />
  <script type="text/javascript" src="../js/bootstrap.js"></script>
  <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />

<title>New Student</title>

</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav class="navbar navbar-default navbar-static-top navbar-inverse">
	  <div class="container">
	    <jsp:include 
        page="navigation.jsp?title=New Student&back=student.jsp" />
      <jsp:include page="username.jsp" />
	  </div>
	</nav> <!-- End Nav Bar -->
  <main class="jumbotron">
    <center>
      <div class="container">
        <form method="POST" action="../Student" >
          <table>
            <tr>
              <td>
                <label>Exam Number:</label>
              </td>
              <td>
                <input type='text' onChange="" name="exam_number"	placeholder='211217328'/>
              </td>
            </tr>
            <tr>
              <td>
                <label>First Name:</label>
              </td>
              <td>
                <input type='text' onChange="" name="fname" placeholder='Terra'/>
              </td>
            </tr>
            <tr>
              <td>
                <label>Last Name:</label>
              </td>
              <td>
                <input type='text' onChange="" name="lname" placeholder='Byte'/>
              </td>
            </tr>
            <tr>
              <td>
                <label>Email:</label>
              </td>
              <td>
                <input type='email' name="email" placeholder='byte@terra.com'/>
              </td>
            </tr>
            <tr>
              <td>
                <label>Password:</label>
              </td>
              <td>
                <input type='password' name="password" placeholder='****'/>
              </td>
            </tr>
            <tr>
              <td>
                <label>Grade:</label>
              </td>
              <td>
                <input type='text' onChange="" name="grade" placeholder='12'/>
              </td>
            </tr>
            <tr>
              <td>
                <label>Phone #:</label>
              </td>
              <td>
                <input type='text' onChange="" name="phone" placeholder='0785421365'/>
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
  </body>
</html>
