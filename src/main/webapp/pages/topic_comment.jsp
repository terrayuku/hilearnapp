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
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <title><%= request.getParameter("subject") %></title>
      <jsp:include page="header.jsp?" />
    </head>
  <body>
        <!-- Nav Bar -->
	<nav class="navbar navbar-default navbar-static-top navbar-inverse">
	  <div class="container">
      <div class="row">
        <div class="col-xs-1">
          <a href="../pages/contents.jsp?subject=<%= request.getParameter("subject")%>">
            <span class="glyphicon glyphicon-chevron-left">
              
            </span>
          </a>
        </div>
        <div class="col-xs-10">
          <span class="header"> <%= request.getParameter("subject") %>
        </div>
        <div class="col-xs-1">
          <a href="../login/login.jsp">
            <span class="glyphicon glyphicon-log-out">
              
            </span>
          </a>
        </div>
      </div>
      <jsp:include page="../pages/username.jsp" />
	  </div>
	</nav> <!-- End Nav Bar -->
  <main class="jumbotron">
        <div class="panel panel-info">
            <div class="panel-heading">Post a Comment On: <%= request.getParameter("topic")%></div>
            <div class="panel-body">
                <form action="../TopicComments" method="POST">
                <textarea name="comment" rows="5" cols="90">
                </textarea>
                  <input type="hidden" name="subject" value="<%= request.getParameter("subject")%>" />
                  <input type="hidden" name="topic" value="<%= request.getParameter("topic")%>" />
                  <input type="hidden" name="topic_date" value="<%= request.getParameter("topic_date")%>" />
                <input type="submit" value="Post" class="btn btn-info"/>
                
            </form>
            </div>
        </div>
  </main>
  <section class="bg-dark">
    <!-- footer here -->
    <jsp:include page="footer.jsp" />
  </section>
            <script>
                CKEDITOR.replace('comment');
            </script>
            
    </body>
</html>
