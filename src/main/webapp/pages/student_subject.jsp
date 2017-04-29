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
  <meta name="viewport" content="width=device-width; initial-scale=1"/>
	  
  <link rel="stylesheet" type="text/css" href="../css/main.css" />
  <script type="text/javascript" src="../js/bootstrap.js"></script>
  <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
  
  <title>Student Subject</title>
</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav class="navbar navbar-default navbar-static-top navbar-inverse">
	  <div class="container">
	    <jsp:include 
        page="navigation.jsp?title=Add Subject&back=student.jsp" />
      <jsp:include page="username.jsp" />
	  </div>
	</nav> <!-- End Nav Bar -->

  <main class="jumbotron">
    <center>
      <!-- Teacher Registration -->
      <div class="container">
        <form method="POST" action="../Student_Sub" >
          <table>
            <tr>
              <td>
                <label>Student:</label>
              </td>
              <td>
                <select name="student_exam_num">
                  <option value="211217328">Tando</option>
                  <option value="1234">Ku</option>
                </select>
              </td>
            </tr>
            <tr>
              <td>
                <label>Subject:</label>
              </td>
              <td>
                <select name="sub_name">
                  <option value="Life Science">Life Science</option>
                  <option value="Math">Math</option>
                </select>
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