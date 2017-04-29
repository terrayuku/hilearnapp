<%-- 
    Document   : teacher
    Created on : 21 Mar 2017, 10:19:06 PM
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
  
  <title>New Class</title>
</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav class="navbar navbar-default navbar-static-top navbar-inverse">
	  <div class="container">
	    <jsp:include 
        page="navigation.jsp?title=Add Class&back=admin.jsp" />
      <jsp:include page="username.jsp" />
	  </div>
	</nav> <!-- End Nav Bar -->

  <main class="jumbotron">
    <center>
      <div class="container">
        <form method="POST" action="../School_Class" >
          <table>
            <tr>
              <td>
                <label>Class Name:</label>
              </td>
              <td>
                <input type='text' onChange="" name="class_name" placeholder='10A'/>
              </td>
            </tr>
            <tr>
              <td>
                <label>Number of Students (Optional)</label>
              </td>
              <td>
                <input type='text' name="number_of_studets" placeholder='5'/>
              </td>
            </tr>
            <tr>
              <td>
                <label>Number of Teachers (Optional)</label>
              </td>
              <td>
                <input type='text' name="number_of_teachers" placeholder='5'/>
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