<%-- 
    Document   : newteacher
    Created on : 21 Mar 2017, 11:16:51 PM
    Author     : TerraByte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="header.jsp?title=Add Subject" />
</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid bg-dark">
          <jsp:include page="navigation.jsp?title=Add Subject&back=student.jsp" />
        </div>
        <!-- /.container-fluid -->
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
  
  <section class="bg-dark">
    <!-- footer here -->
    <jsp:include page="footer.jsp" />
  </section>
</body>
</html>