<% 
  if (session.getAttribute("username") != null) {
%>
  <%= session.getAttribute("username") %>
<%
  } else {
%>
  <%= "No Name" %>
<%
  }
%>
