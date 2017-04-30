<%-- 
    Document   : teacher
    Created on : 21 Mar 2017, 10:19:06 PM
    Author     : TerraByte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="header.jsp?title=New Class" />
</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid bg-dark">
          <jsp:include page="navigation.jsp?title=Add Class&back=admin.jsp" />
        </div>
        <!-- /.container-fluid -->
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
  
  <section class="bg-dark">
    <!-- footer here -->
    <jsp:include page="footer.jsp" />
  </section>
</body>
</html>