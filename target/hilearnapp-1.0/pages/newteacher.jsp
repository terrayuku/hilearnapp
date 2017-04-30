<%-- 
    Document   : newteacher
    Created on : 21 Mar 2017, 11:16:51 PM
    Author     : TerraByte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="header.jsp?title=New Teacher" />
</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid bg-dark">
          <jsp:include page="navigation.jsp?title=New Teacher&back=teacher.jsp" />
        </div>
        <!-- /.container-fluid -->
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
  
  <section class="bg-dark">
    <!-- footer here -->
    <jsp:include page="footer.jsp" />
  </section>
</body>
</html>