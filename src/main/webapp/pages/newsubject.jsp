<%-- 
    Document   : newstudent
    Created on : 21 Mar 2017, 11:05:43 PM
    Author     : TerraByte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="header.jsp?title=New Subject" />

</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid bg-dark">
          <jsp:include page="navigation.jsp?title=New Subject&back=admin.jsp" />
        </div>
        <!-- /.container-fluid -->
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
  
  <section class="bg-dark">
    <!-- footer here -->
    <jsp:include page="footer.jsp" />
  </section>
  </body>
</html>
