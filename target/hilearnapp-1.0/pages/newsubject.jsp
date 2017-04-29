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
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  
  <link rel="stylesheet" type="text/css" href="../css/main.css" />
  <script type="text/javascript" src="../js/bootstrap.js"></script>
  <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />

<title>New Subject</title>

</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav class="navbar navbar-default navbar-static-top navbar-inverse">
	  <div class="container">
	    <jsp:include 
        page="navigation.jsp?title=New Subject&back=admin.jsp" />
      <jsp:include page="username.jsp" />
	  </div>
	</nav> <!-- End Nav Bar -->
  <main class="jumbotron">
    <center>
      <div class="container">
        <form method="POST" action="../Subject" >
          <table>
            <tr>
              <td>
                <label>Subject Name:</label>
              </td>
              <td>
                <input type='text' onChange="" name="subj_name"	placeholder='Math'/>
              </td>
            </tr>
            <tr>
              <td>
                <label>Subject Description:</label>
              </td>
              <td>
                <input type='text' onChange="" name="subj_desc" placeholder='Math Grade 10'/>
              </td>
            </tr>
            <tr>
              <td>
                <label>Subject Outline:</label>
              </td>
              <td>
                <input type='text' onChange="" name="subj_outline" placeholder='Math Grade 10'/>
              </td>
            </tr>
            <tr>
              <td>
                <label>Teacher:</label>
              </td>
              <td>
                  <select name="subj_teacher">
                    <option value="456">Byte</option>
                    <option value="5632">Ben</option>
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
  </body>
</html>
