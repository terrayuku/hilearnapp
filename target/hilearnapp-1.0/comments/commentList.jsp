<%@page import="com.models.Comments"%>
<%@page import="java.util.Collection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comments</title>
        <script src="//cdn.ckeditor.com/4.5.11/standard/ckeditor.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="css/main.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<script type="text/javascript" src="../js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="../css/main.css" />
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
    </head>
    <body>
        <!-- Nav Bar -->
  <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid bg-dark">
          <ul class="nav navbar-nav">
	      <li >
	        <a href="../pages/contents.jsp"><span class="glyphicon glyphicon-chevron-left"></span> </a>
	      </li>
	      <li>
                  <span class="header"> <%= request.getParameter("subject") %><br />
                    <jsp:include page="../pages/username.jsp" />
	      </li>
	    </ul>
	    <ul class="nav navbar-nav navbar-right">
                <li class="navbar-right">
	        <a href="../login/login.jsp"><span class="glyphicon glyphicon-log-out"></span></a>
	      </li>
	      <li class="navbar-right">
	        <a href="#"><span class="glyphicon glyphicon-search"></span></a>
	      </li>
	    </ul>
        </div>
        <!-- /.container-fluid -->
    </nav><!-- End Nav Bar -->
  <main class="jumbotron">
        <div class="panel panel-info">
            <div class="panel-heading">Post a Question</div>
            <div class="panel-body">
                <form action="../SubjectChat" method="POST">
                <textarea name="comment" rows="5" cols="90">
                </textarea>
                  <input type="hidden" name="subject" value="<%= request.getParameter("subject")%>" />
                <input type="submit" value="Post" class="btn btn-info"/>
                
            </form>
            </div>
        </div>
  </main>
            <script>
                CKEDITOR.replace('comment');
            </script>
            <section class="bg-dark">
    <!-- footer here -->
    <jsp:include page="footer.jsp" />
  </section>
    </body>
</html>
