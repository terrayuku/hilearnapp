<div class="row">
  <div class="col-xs-1" style="margin-top: 15px;">
    <a href="<%= request.getParameter("back") %>">
      <span style="font-size: 16px;"
        class="glyphicon glyphicon-chevron-left">
      </span>
    </a>
  </div>
    <div class="col-xs-2">
         <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <a class="navbar-brand" href="../">Hi-Learn</a>  
            </div>

      </div>
  <div class="col-xs-4">
    <a href="#">
      <span style="font-size: 30px; color: white;">
        <%= request.getParameter("title") %>
      </span>
    </a>
  </div>
  <div class="col-xs-3" style="margin-top: 15px;">
    <jsp:include page="username.jsp" />
  </div>
  <div class="col-xs-2">
    <a href="../Logout" >
      <span style="font-size: 16px; margin-top: 15px; margin-right: 10px;"
        class="glyphicon glyphicon-log-out">
      </span>
    </a>
  </div>
</div>