<%-- 
    Document   : chatroom
    Created on : 21 Mar 2017, 10:18:30 PM
    Author     : TerraByte
--%>

<%@page import="java.util.Collection"%>
<%@page import="com.models.Comment"%>
<%@page import="java.util.List"%>
<%@page import="com.models.Chat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.db.DBAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<!DOCTYPE html>
<html>
<head>
 <jsp:include page="header.jsp?title=Chatroom" />
</head>
<!-- Body -->
<body>
	<!-- Nav Bar -->
	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid bg-dark">
          <% request.getParameter("subject") %>
          <jsp:include page="navigation.jsp?title=Admin Dashboard&back=contents.jsp" />
        </div>
        
        <!-- /.container-fluid -->
    </nav>
       
     <%
    DBAccess db = new DBAccess();
    List<Chat> subject_chat = (ArrayList)db.getSubjectChats((String)request.getParameter("subject"));
      
    if(!subject_chat.isEmpty()) {
      for(int i = 0; i < subject_chat.size(); i++) {
        System.out.println("topic " + subject_chat.get(i).getComment_posted());
  %>
  	<!--Subject Chat -->
    <main class="jumbotron"> 
    <!-- Teacher Registration -->
	<div class="container">
		<div class="row registration">
			<div class="col-xs-2">
				<span class="glyphicon glyphicon-user"></span>
				<span class=""><%= subject_chat.get(i).getStudent_exam_num() %>:</span>
				<span class="text-info" style="font-size: 12px; text-align: right"><%= subject_chat.get(i).getTime_stamp() %></span><br/>
				<span class="text-uppercase"><%= subject_chat.get(i).getComment_posted() %></span><br />
			</div>
      <!-- Getting Comments -->
       <%
          Collection<Comment> comment = (Collection<Comment>)db.getComment(subject_chat.get(i).getComment_posted());
          if(!comment.isEmpty()) {
        %>
			<div class="col-xs-8">
        <display:table class="" name="<%= comment %>"  >
          <display:column class="text-primary" style="font-size: 16px; text-align: right"
            property="commentor" title=" " />
          <display:column  class="text-info" style="font-size: 12px; text-align: right"
            property="comment_date" title=" "/>
        </display:table>
        <display:table class="" name="<%= comment %>"  >
          <display:column property="comment" title=" " />
        </display:table>
      </div>
      <%
          }
        %>
			<!--</div>-->
			<!-- Help -->
			<div class="col-xs-2">
        <a href="../pages/topic_comment.jsp?subject=<%= request.getParameter("subject")%>
          &topic= <%= subject_chat.get(i).getComment_posted()%>&topic_date= <%= subject_chat.get(i).getTime_stamp()%>" 
          class="btn btn-info">
          <span>Help Peer</span>
        </a> <!-- Reply with a Glyphicon -->
			</div>
		</div>		
	<!--</div>-->
  <%
      }
    } else {
      session.setAttribute("subject", "No Subjects");
    }
   %>	
	<a href="../comments/commentList.jsp?subject=<%= request.getParameter("subject") %>"
     class="btn btn-primary">
    <span class="btn glyphicon glyphicon-plus">
      
    </span>
  </a>
<script type="text/javascript" src="../js/bootstrap.js"></script>
  </div>
    </main> 
   <section class="bg-dark">
    <!-- footer here -->
    <jsp:include page="footer.jsp" />
  </section>
</body>
</html>