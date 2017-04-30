<%-- 
    Document   : newteacher
    Created on : 21 Mar 2017, 11:16:51 PM
    Author     : TerraByte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="header.jsp?title=Teachers Class" />
</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav class="navbar navbar-default navbar-static-top navbar-inverse">
	  <div class="container">
	     <jsp:include 
        page="navigation.jsp?title=Assign Class&back=teacher.jsp"/>
      <jsp:include page="username.jsp" />
	  </div>
	</nav> <!-- End Nav Bar -->

  <main class="jumbotron">
    <center>
      <!-- Teacher Registration -->
      <div class="container">
        <form method="POST" action="../Class_Teacher" >
          <table>
            <tr>
              <td>
                <label>Teacher</label>
              </td>
              <td>
                <select name="staff_num">
                  <option value="456">Byte</option>
                  <option value="5632">Ben</option>
                </select>
              </td>
            </tr>
            <tr>
              <td>
                <label>Class</label>
              </td>
              <td>
                <select name="class_name">
                  <option value="10A">10A</option>
                  <option value="10B">10B</option>
                </select>
              </td>
            </tr>
          </table>
          <input type="submit" name="submit" value="Submit" />
        </form>
        <p>
        <a href="#" >More Info </a></p>
      </div>
    </center>
  </main>
   <section class="bg-dark">
    <!-- footer here -->
    <jsp:include page="pages/footer.jsp" />
  </section>
</body>
</html>